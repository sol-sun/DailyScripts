#!/usr/bin/env perl

use strict;
use warnings;
use SVG;

# SVG opbject generate
my $svg = SVG->new(width=>100, height=>100);
#

my $y = $svg->group(
		    id =>'group_y',
		    style => { stroke=>'transparent', fill=>'rgb(131, 204, 210)'}
		   );

$y->circle(cx=>40, cy=>69.2, r=>10,
	   id=>'circle_in_group_y');

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
