#!/usr/bin/perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";

use Builder;

my $builder = Builder->new(
    section_dir                => 'presentation/sections',
    template_dir               => 'presentation/templates',
    build_dir                  => 'presentation/output',
    asset_dir                  => 'presentation/assets',

    main_document_filename     => 'index.html',
    paragraph_wrapper_filename => 'slide.html',

    skip_toc		       => 1,
    skip_bibliography          => 1,
);
$builder->build();
