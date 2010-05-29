#!/usr/bin/perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";

use Builder;

# Base this script on the one used for POD in
# http://github.com/chromatic/modern_perl_book/tree/master/build/tools/

my $builder = Builder->new(
    section_dir            => 'sections',
    template_dir           => 'templates',
    build_dir              => 'report',
    asset_dir              => 'assets',
    main_document_filename => 'index.xhtml',
);
$builder->build();

print "Building temporary PDF document...\n";
system(
    "prince",
    $builder->build_dir->file($builder->main_document_filename),
    $builder->build_dir->subdir("2_browser_support")->file("svg-support-table.html"),
    "-s", $builder->build_dir->file("prince.css"),
    "--media=print",
    "-o", $builder->build_dir->file("temp.pdf"),
);

# http://www.pdfhacks.com/pdftk/
print "Combining temporary PDF with attachments...\n";
system(
    "pdftk",
    $builder->template_dir->file("hve_front_page.pdf"),
    $builder->build_dir->file("temp.pdf"),
    $builder->build_dir->subdir("1_introduction")->file("svg_authors.pdf"),
    "cat",
    "output",
    $builder->build_dir->file("report.pdf"),
);
unlink $builder->build_dir->file("temp.pdf");
