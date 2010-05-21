#!/usr/bin/env perl

package Builder;
use Moose;
use Moose::Util::TypeConstraints;

use Path::Class::Dir ();
use File::Copy::Recursive ();

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

has 'build_dir' => (
    is       => 'ro',
    isa      => 'Path::Class::Dir',
    required => 1,
    coerce   => 1,
);

sub build {
    my ($self) = @_;
    $self->copy_assets_to_build_dir();
    Builder->voice("Doing nothing as of yet...");
}

# Copy everything in the asset_dir to the build_dir (static files)
sub copy_assets_to_build_dir {
    my ($self) = @_;
    return unless $self->asset_dir->stat;
    $self->create_build_dir();
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

no Moose;
__PACKAGE__->meta->make_immutable();

1;
