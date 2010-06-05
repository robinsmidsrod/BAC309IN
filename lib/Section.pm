#!/usr/bin/env perl

package Section;
use Moose;

use HTML::TreeBuilder ();

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
#        ENCODING     => 'UTF-8', # Input file encoding
    );
}

has 'dir' => (
    is 	     => 'ro',
    isa      => 'Path::Class::Dir',
    required => 1,
);


sub dir_name {
    my ($self) = @_;
    return $self->dir->relative( $self->dir->parent );
}

# Where to find our templates
has 'template_dir' => (
    is       => 'ro',
    isa      => 'Path::Class::Dir',
    required => 1,
);

# The name of the template that will be wrapped around each .md file in each section directory
has 'paragraph_wrapper_filename' => (
    is 	     => 'ro',
    isa      => 'Str',
    default  => "",
);

has 'assets' => (
    is => 'ro',
    isa => 'ArrayRef[Path::Class::File]',
    init_arg => undef,
    lazy_build => 1,
    traits => ['Array'],
    handles => {
        'all_assets' => 'elements',
    }
);

sub _build_assets {
    my ($self) = @_;
    my @children = $self->dir->children;
    my @files;
    foreach my $child ( @children ) {
        next unless $child;
        next unless $child->isa('Path::Class::File');
        next if $child =~ m{/title$};
        next if $child =~ /\.md$/;
        push @files, $child;
    }
    return \@files;
}

has 'output' => (
    is	     => 'ro',
    isa	     => 'Str',
    init_arg => undef,
    lazy_build => 1,
);

sub _build_output {
    my ($self) = @_;
    my $content = "";
    if ( $self->title ) {
        $content .= "<h2>" . $self->title . "</h2>\n";
    }
    $content .= $self->content;
    return $content;
}

sub copy_assets {
    my ($self, $build_dir) = @_;
    confess("No build_dir specified!") unless blessed($build_dir) and $build_dir->isa('Path::Class::Dir');
    foreach my $file ( $self->all_assets ) {
        next unless $file;
        my $extra_dir = $build_dir->subdir( $self->dir_name );
        my $dst = $extra_dir->file( $file->relative($self->dir) );
        $extra_dir->mkpath();
        File::Copy::copy($file . "",$dst . "");
    }
}

has 'title' => (
    is 	     => 'ro',
    isa      => 'Str',
    init_arg => undef,
    lazy_build => 1,
);

sub _build_title {
    my ($self) = @_;
    my $title_filename = $self->dir->file('title');
    return '' unless $title_filename->stat;
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
    return $self->wrap_paragraph($output);
}

sub wrap_paragraph {
    my ($self, $input) = @_;
    my $output;
    my $template_file = $self->template_dir->file(
        $self->paragraph_wrapper_filename
    );
    my $template = ( -f $template_file and -r $template_file ) ? $template_file->slurp() : '[% content %]';
    $self->tt->process(\$template, { content => $input }, \$output);
    return $self->convert_relative_links($output);
}

sub convert_relative_links {
    my ($self, $input) = @_;

    my $tree = HTML::TreeBuilder->new_from_content( $input );

    # Prepend relative paths with current directory name
    my $dir_name = $self->dir_name . "/";
    foreach my $el ( $tree->look_down('_tag', 'a') ) {
	if ( $el->attr('href') !~ /^(?:http|#)/i ) {
		$el->attr('href', $dir_name . $el->attr('href') );
	}
    }

    # Prepend relative paths with current directory name
    foreach my $el ( $tree->look_down('_tag', 'img') ) {
	if ( $el->attr('src') !~ /^http/i ) {
		$el->attr('src', $dir_name . $el->attr('src') );
	}
	# Hardcode all SVG files to 200x200 pixels
	if ( $el->attr('src') =~ m{\.svg$} and not ( $el->attr('width') and $el->attr('height') ) ) {
	    $el->attr('width', '200');
	    $el->attr('height', '200');
	}
    }

    # Convert all <img> tags that link to SVG files to <object>
    foreach my $el ( $tree->look_down('_tag', 'img') ) {
	next unless $el->attr('src') =~ m{\.svg$};
	# Convert to SVG <object>
	$el->tag('object');
	$el->attr('type', 'image/svg+xml');
	# Convert src attribute to data attribute
	$el->attr('data', $el->attr('src') );
	# Convert img alt attr to unsupported replacement text
	$el->push_content($el->attr('alt'));
	# Delete converted attributes
	$el->attr('alt', undef);
	$el->attr('src', undef);
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

    return $output;
}

no Moose;
__PACKAGE__->meta->make_immutable();

1;
