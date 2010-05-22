#!/usr/bin/env perl

package Builder;
use Moose;
use Moose::Util::TypeConstraints;

use Path::Class::Dir ();
use File::Copy::Recursive ();
use Template ();
use Encode ();
use Text::MultiMarkdown ();

use Section;

# For logging progress
sub voice {
    my ($class, $msg) = @_;
    print STDERR $msg, "\n";
}

subtype 'Path::Class::Dir'
    => as 'Object'
    => where { $_->isa('Path::Class::Dir') }
    => message { "The object you specified, $_, is not a Path::Class::Dir object" };

coerce 'Path::Class::Dir'
    => from 'Str'
    => via { Path::Class::Dir->new($_) };

has 'section_dir' => (
    is 	     => 'ro',
    isa      => 'Path::Class::Dir',
    required => 1,
    coerce   => 1,
);

has 'asset_dir' => (
    is       => 'ro',
    isa      => 'Path::Class::Dir',
    coerce   => 1,
);

has 'template_dir' => (
    is       => 'ro',
    isa      => 'Path::Class::Dir',
    required => 1,
    coerce   => 1,
);

has 'build_dir' => (
    is       => 'ro',
    isa      => 'Path::Class::Dir',
    required => 1,
    coerce   => 1,
);

sub build {
    my ($self) = @_;
    unless ( $self->section_dir->stat ) {
        Builder->voice("Unable to locate directory '" . $self->section_dir . "'. Aborting...");
        return;
    }
    $self->copy_assets_to_build_dir();
    $self->build_main_document();
}

# Copy everything in the asset_dir to the build_dir (static files)
sub copy_assets_to_build_dir {
    my ($self) = @_;
    return unless $self->asset_dir->stat;
    $self->create_build_dir();
    Builder->voice("Copying content from asset directory '" . $self->asset_dir . "'");
    File::Copy::Recursive::dircopy($self->asset_dir,$self->build_dir);
}

# Create build_dir (remove it if it was already present)
sub create_build_dir {
    my ($self) = @_;
    # If it was already available, let's remove it first
    $self->remove_build_dir();

    Builder->voice("Creating build dir '" . $self->build_dir . "'...");
    $self->build_dir->mkpath(); # Use default mode
}

# Remove build_dir if present
sub remove_build_dir {
    my ($self) = @_;
    if ( $self->build_dir->stat ) {
        Builder->voice("Removing build dir '" . $self->build_dir . "'...");
        $self->build_dir->rmtree('be_verbose', 'be_safe');
    }
}

# Build the complete main document (which is the real final result)
sub build_main_document {
    my ($self) = @_;
    $self->tt->process(
        $self->main_document_filename,
        $self->main_document_vars,
        $self->main_document_filename
    );
}

# Template Toolkit parser - used for transforming documents with inline markup
has 'tt' => (
    is => 'ro',
    isa => 'Template',
    lazy_build => 1,
);

sub _build_tt {
    my ($self) = @_;
    return Template->new(
        INCLUDE_PATH => $self->template_dir->absolute,
        OUTPUT_PATH  => $self->build_dir->absolute,
        ENCODING     => 'UTF-8', # Input file encoding
    );
}

# The name of the main document template (and output document in the build_dir)
has 'main_document_filename' => (
    is => 'ro',
    isa => 'Str',
    default => 'index.html',
);

# Variables that will be available to the main document template
has 'main_document_vars' => (
    is => 'ro',
    isa => 'HashRef',
    init_arg => undef,
    lazy_build => 1,
);

sub _build_main_document_vars {
    my ($self) = @_;
    return {
        title   => $self->main_document_title,
        content => $self->main_document_content,
    };
}

# Calculates the main document top title
has 'main_document_title' => (
    is => 'ro',
    isa => 'Str',
    lazy_build => 1,
);

sub _build_main_document_title {
    my ($self) = @_;
    my $title_filename = $self->section_dir->file('title');
    return '<Please specify a title>' unless $title_filename->stat;
    return Encode::decode_utf8( $title_filename->slurp( chomp => 1) );
}

# The complete content that will go into the main document
has 'main_document_content' => (
    is => 'ro',
    isa => 'Str',
    lazy_build => 1,
);

sub _build_main_document_content {
    my ($self) = @_;
    my $content = "";
    # Build front page content
    my $file = $self->section_dir->file('frontpage.md');
    if ( $file->stat ) {
        my $frontpage_content = $file->slurp() . "";
        $content .= Text::MultiMarkdown::markdown( $frontpage_content );
    }
    # Build content for each section/chapter
    foreach my $section ( $self->all_sections ) {
        $content .= "<h2>" . $section->title . "</h2>";
        $content .= $section->content;
    }
    return $content;
}

# The sections (or chapters) included in the report are accumulated here
has 'sections' => (
    is => 'ro',
    isa => 'ArrayRef[Section]',
    init_arg => undef,
    lazy_build => 1,
    traits => ['Array'],
    handles => {
        'all_sections' => 'elements',
    },
);

sub _build_sections {
    my ($self) = @_;
    my @children = $self->section_dir->children;
    my @sections;
    foreach my $dir ( sort @children ) {
        next unless $dir and $dir->isa('Path::Class::Dir');
        push @sections, Section->new( dir => $dir );
    }
    return \@sections;
}

no Moose;
__PACKAGE__->meta->make_immutable();

1;
