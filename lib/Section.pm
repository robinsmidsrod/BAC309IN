#!/usr/bin/env perl

package Section;
use Moose;

has 'tt' => (
    is => 'ro',
    isa => 'Template',
    init_arg => undef,
    lazy_build => 1,
);

sub _build_tt {
    my ($self) = @_;
    return Template->new(
        INCLUDE_PATH => $self->dir->absolute,
        ENCODING     => 'UTF-8', # Input file encoding
    );
}

has 'dir' => (
    is 	     => 'ro',
    isa      => 'Path::Class::Dir',
    required => 1,
);

has 'title' => (
    is 	     => 'ro',
    isa      => 'Str',
    init_arg => undef,
    lazy_build => 1,
);

sub _build_title {
    my ($self) = @_;
    my $title_filename = $self->dir->file('title');
    return '<Please specify a title>' unless $title_filename->stat;
    return $title_filename->slurp( chomp => 1);
}

has 'content' => (
    is 	     => 'ro',
    isa      => 'Str',
    init_arg => undef,
    lazy_build => 1,
);

sub _build_content {
    my ($self) = @_;
    my @children = $self->dir->children;
    my $content = "";
    foreach my $file ( sort @children ) {
        next unless $file and $file->isa('Path::Class::File');
        next unless $file =~ /\.md$/;
        $content .= $self->process($file) // "";
    }
    return $content;
}

sub process {
    my ($self, $file) = @_;
    my $input = $file->slurp();
    my $output;
    $self->tt->process(\$input, {}, \$output);
    return $self->markdown($output);
}

sub markdown {
    my ($self, $input) = @_;
    my $output = Text::MultiMarkdown::markdown($input);
    return $output;
}

no Moose;
__PACKAGE__->meta->make_immutable();

1;
