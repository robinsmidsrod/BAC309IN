#!/usr/bin/perl

use strict;
use warnings;

# Base this script on the one used for POD in
# http://github.com/chromatic/modern_perl_book/tree/master/build/tools/

my $section_dir = 'sections';
my $build_dir = 'build';

unless ( -d $section_dir ) {
	die("Please run this script from the base folder.\n");
}

if ( -d $build_dir ) {
	die("Please remove the '$build_dir' folder first.\n");
}
mkdir $build_dir;

print "Nothing happening yet...\n";

1;
