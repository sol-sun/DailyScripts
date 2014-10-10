#!/usr/bin/env perl

use strict;
use warnings;
use SVG;


my $sm_width = 100;
my $sm_height = 100;
my $sm_center = (${sm_width}/2);
my $circle_size = ($sm_center/2);

# SVG opbject generate
my $svg = SVG->new(width=>${sm_width}, height=>${sm_height});
#

my $y = $svg->group(
		    id =>'group_y',
		    style => { 'stroke-width'=>'7', 'stroke'=>'rgb(131, 204, 210)', 'fill'=>'white'}
		   );

## Quation Level 1 => Select similar object;

$y->circle(cx=>${sm_center}, cy=>${sm_center}, r=>${circle_size},
	   id=>'circle_in_group_y');

##.

=pod
my $z = $svg->tag(
		  'g',
		  id => 'group_z',
		  style => {
			    stroke => 'rgb(100, 200, 50)',
			    fill => 'rgb(10, 100, 150)'
			   }
		 );
$z->tag('circle', cx=>50, cy=>50, r=>100,
       id=>'circle_in_group_z');
=cut

#print $svg->xmlify;


#print $svg->xmlify(-namespace=>'svg');

print $svg->xmlify(
		   -namespace => "svg",
		   -pubid => "-//W3C//DTD SVG 1.0//EN",
		   -inline => 1
		  );
