#!/usr/bin/perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";

use Builder;

# Base this script on the one used for POD in
# http://github.com/chromatic/modern_perl_book/tree/master/build/tools/

my $builder = Builder->new(
    section_dir  => 'sections',
    template_dir => 'templates',
    build_dir    => 'report',
    asset_dir    => 'assets',
);
$builder->build();
system("prince", "report/index.html", "-s", "report/prince.css", "--media=print", "-o", "report/report.pdf");
