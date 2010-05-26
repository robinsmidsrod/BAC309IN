#!/usr/bin/env perl

package Builder;
use Moose;
use Moose::Util::TypeConstraints;

use Path::Class::Dir ();
use File::Copy ();
use File::Copy::Recursive ();
use Template ();
use Encode ();
use Text::MultiMarkdown ();
use HTML::Toc ();
use HTML::TocInsertor ();
use HTML::TreeBuilder ();
use HTML::Element ();

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

# The name of the main document template (and output document in the build_dir)
has 'main_document_filename' => (
    is 	     => 'ro',
    isa      => 'Str',
    required => 1,
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
    # HTML::ToC doesn't work with XHTML - mangles header
    $self->update_toc();
}

# Updates (actually creates) a Table of Contents on page 2
sub update_toc {
    my ($self) = @_;
    my $filename = $self->build_dir->file($self->main_document_filename) . "";

    my $toc = HTML::Toc->new();
    $toc->setOptions({
        insertionPoint => 'replace ToC will be placed here.',
    });
    my $toc_inserter = HTML::TocInsertor->new();
    $toc_inserter->insertIntoFile($toc, $filename, { outputFile => $filename . ".new" });
    rename $filename . ".new", $filename;
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
    return $title_filename->slurp( chomp => 1);
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

    # Build content for each section/chapter (except attachments)
    foreach my $section ( $self->all_sections ) {
        next if $section->dir_name eq '9_attachments';
        if ( $section->title ) {
            $content .= "<h2>" . $section->title . "</h2>\n";
        }
        $content .= $section->content;
        $self->copy_section_extra_files($section);
    }

    # Build bibliography
    $content = $self->build_bibliography($content);

    # Build content for attachment section
    foreach my $section ( $self->all_sections ) {
        next unless $section->dir_name eq '9_attachments';
        if ( $section->title ) {
            $content .= "<h2>" . $section->title . "</h2>\n";
        }
        $content .= $section->content;
        $self->copy_section_extra_files($section);
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

sub copy_section_extra_files {
    my ($self, $section) = @_;
    foreach my $file ( $section->all_extra_files ) {
        next unless $file;
        my $extra_dir = $self->build_dir->subdir( $section->dir_name );
        my $dst = $extra_dir->file( $file->relative($section->dir) );
        $extra_dir->mkpath();
        File::Copy::copy($file . "",$dst . "");
    }
}

sub build_bibliography {
    my ($self, $input) = @_;

    my $tree = HTML::TreeBuilder->new_from_content( $input );

    # Fetch all external anchors
    my $urls = {};
    my $bib_id = 1;
    foreach my $el ( $tree->look_down('_tag', 'a') ) {
	next unless $el->attr('href') =~ /^http/i;
	my $url = $el->attr('href');
	my $title = $el->attr('title');

	# Add new reference to database if it isn't already there
	# and increment counter
	unless ( exists $urls->{$url} ) {
            # NB: Only the title text of the first occurence of the link
            # will be put in the bibliography
	    $urls->{$url} = {
	        id    => $bib_id,
	        title => $title,
	        url   => $url,
	    };
	    $bib_id++;
	}

	# Create bibliography link
        my $anchor = HTML::Element->new("a");
        $anchor->attr('href', "#bib" . $urls->{$url}->{'id'} );
        $anchor->attr('class', "bib");
        $anchor->push_content( $urls->{$url}->{'id'} );

        # Add it inside a <sup> element
        my $h = HTML::Element->new("sup");
        $h->push_content($anchor);

        # Insert <sup> after the real link
        $el->postinsert($h);

        # TODO: Should we modify the original link in any way?
    }

    # Extract return HTML body elements
    my $output = "";
    my $body = $tree->look_down( '_tag', 'body' );
    if ($body) {
        foreach my $el ( $body->content_list() ) {
            my $content = blessed($el) ? $el->as_HTML( q|<>&'"|, '  ', {} ) : $el;
            $output .= $content;
        }
    }

    $tree->delete();

    my @urls;
    foreach my $url ( sort { $urls->{$a}->{'id'} <=> $urls->{$b}->{'id'} } keys %$urls ) {
        push @urls, $urls->{$url};
    }

    my $processed;
    $self->tt->process('bibliography.html', { urls => \@urls }, \$processed);

    return $output . ( $processed // "" );
}

no Moose;
__PACKAGE__->meta->make_immutable();

1;
