#!/usr/bin/perl

use strict;
use warnings;

use lib qw(lib);
use Builder;

# Base this script on the one used for POD in
# http://github.com/chromatic/modern_perl_book/tree/master/build/tools/

my $section_dir = 'sections';
my $asset_dir   = 'assets';
my $build_dir   = 'build';

unless ( -d $section_dir ) {
    die("Please run this script from the base folder.\n");
}

my $builder = Builder->new(
    section_dir => $section_dir,
    build_dir   => $build_dir,
    asset_dir   => $asset_dir,
);
$builder->build();
