#!/usr/bin/env perl

use strict;
use warnings;
use SVG;
use Data::Dumper;

my $sm_width = 800;
my $sm_height = 800;
my $sm_center = (${sm_width}/6);
#my $circle_size = (${sm_center}/2);
my $circle_size = 70;
my $skip_x = 0;
my $skip_y = 0;

my $svg = SVG->new(width=>${sm_width}, height=>${sm_height});

my $y = $svg->group(
		    id => 'group_y',
		    style => {'stroke-width'=> '7', 'stroke'=>'#0080ff', 'fill'=>'white', 'backgroud' => 'black'}
		   );

$y->circle(cx=>${sm_center}, cy=>${sm_center}, r=>${circle_size},
	   id=>'Cell_1-1');
$skip_x += $sm_center * 3;

$y->circle(cx=>${skip_x}, cy=>${sm_center}, r=>${circle_size},
	   id=>'Cell_1-2');

$skip_x = $sm_center * 5;

$y->circle(cx=>${skip_x}, cy=>${sm_center}, r=>${circle_size},
	   id=>'Cell_1-3');



print $svg->xmlify(
		   -namespace => "svg",
		   -pubid => "-//W3C//DTD SVG 1.0//EN",
		   -inline => 1
		  );
