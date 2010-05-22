#!/usr/bin/env perl

package Section;
use Moose;

has 'tt' => (
    is => 'ro',
    isa => 'Template',
    required => 1,
);

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
    my $title = $title_filename->slurp();
    chomp $title; # Get rid of trailing newlines
    return $title;
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
        $content .= $file->slurp();
    }
    return $content;
}

no Moose;
__PACKAGE__->meta->make_immutable();

1;
