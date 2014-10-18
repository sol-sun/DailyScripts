#!/usr/bin/env perl

use strict;
use warnings;
use SVG;
use Data::Dumper;

my $sm_width = 600;
my $sm_height = 600;
my $sm_center = 600/3;
my $setoff_x = 100;
my $setoff_y = 100;

my $svg = SVG->new(width=>${sm_width}, height=>${sm_height});

my @ids = (
	   ["Cell_1-1", "Cell_1-2", "Cell_1-3"],
	   ["Cell_2-1", "Cell_2-2", "Cell2_3"],
	   ["Cell_3-1", "Cell_3-2", "Cell3_3"]
	  );

for(my $i=0;$i<scalar(@ids);$i++){
  for(my $j=0;$j<scalar(@{$ids[$i]});$j++){
    my $x = ( ($setoff_x * 2) * $j) + $setoff_x;
    my $y = ( ($setoff_y * 2) * $i) + $setoff_y;
    
    &Objects('circle', $x, $y, "70", $ids[$i][$j]);
    
  }
}

sub Objects{
  
  my $type = shift @_;
  
  if($type eq 'question'){
    
    my %translate = ('x', shift @_, 'y', shift @_);    

    
    my $d = q(
M64.028,167.543
c0-5.316,1.706-10.703,5.12-16.16c3.414-5.456,8.395-9.976,14.942-13.557c6.547-3.581,14.187-5.372,22.917-5.372
c8.114,0,15.278,1.497,21.489,4.491s11.011,7.066,14.396,12.213c3.385,5.149,5.079,10.745,5.079,16.789
c0,4.756-0.966,8.926-2.897,12.507c-1.931,3.582-4.225,6.674-6.883,9.276c-2.658,2.602-7.429,6.981-14.313,13.138
c-1.902,1.735-3.428,3.26-4.575,4.575c-1.148,1.315-2,2.518-2.56,3.61c-0.56,1.091-0.993,2.183-1.301,3.274
c-0.308,1.091-0.77,3.008-1.385,5.751c-1.063,5.82-4.393,8.73-9.99,8.73c-2.91,0-5.358-0.952-7.345-2.854
c-1.987-1.902-2.98-4.729-2.98-8.478c0-4.701,0.727-8.772,2.183-12.213c1.455-3.441,3.385-6.464,5.793-9.066
c2.406-2.603,5.652-5.695,9.738-9.276c3.581-3.134,6.17-5.498,7.764-7.093c1.595-1.595,2.939-3.372,4.03-5.331
c1.091-1.959,1.637-4.085,1.637-6.38c0-4.477-1.665-8.255-4.995-11.332c-3.33-3.078-7.624-4.617-12.886-4.618
c-6.157,0-10.69,1.553-13.6,4.659s-5.372,7.682-7.387,13.725c-1.902,6.324-5.513,9.486-10.829,9.486
c-3.134,0-5.778-1.106-7.933-3.316C65.106,172.51,64.028,170.118,64.028,167.543z M104.993,259.546
c-3.414,0-6.394-1.106-8.94-3.316c-2.546-2.21-3.82-5.303-3.82-9.276c0-3.526,1.231-6.492,3.693-8.898s5.485-3.61,9.066-3.61
c3.525,0,6.491,1.204,8.898,3.61c2.406,2.406,3.61,5.372,3.61,8.898c0,3.918-1.259,6.995-3.777,9.234
C111.205,258.427,108.295,259.546,104.993,259.546L104.993,259.546z
);
    
    my $question_mark = $svg->group(
				    id => 'Question_Mark',
				    transform => "translate($translate{'x'}, $translate{'y'})"
				   );
    
    $question_mark->path(
			 style => {'stroke' => '#000000', 'stroke-width' => '2', 'stroke-linecap' => 'round' },
			 d=> $d
			);
    $d = q(
M66.442,165.975
c-0.402-0.312,2.335-13.873,12.335-21.54c7.669-5.88,12.777-7.164,17.563-8.364c3.683-0.923,9.684-1.301,14.219-0.836
c0,0-10.023,3.719-14.266,5.271c-4.379,1.601-11.379,4.037-15.543,7.633C76.585,151.735,66.442,165.975,66.442,165.975z
);
    
    $question_mark->path(
			 style => {'stroke' => '#000000', 'stroke-width' => '2', 'stroke-linecap' => 'round' },
			 d=> $d
			);
    
    $d = q(
M96.475,253.175
c0,0-5.241-9.331,2.785-14.406c7.454-4.714,12.732,1.087,12.732,1.087s-7.048,1.012-9.914,3.046
C98.522,245.425,96.475,253.175,96.475,253.175L96.475,253.175z
);
    
    $question_mark->path(
			 style => {'stroke' => '#000000', 'stroke-width' => '2', 'stroke-linecap' => 'round' },
			 d=>$d
			);
    
    return 1;
    
    
  }elsif($type eq 'circle'){
    
    
    my ($x, $y, $circle_size, $id) = @_;
    

    my $circle = $svg->group(
			     id => $id,
			     style => {'stroke-width'=> '7', 'stroke'=> '#0080ff', 'fill'=> 'white', 'background' => 'black'}
			    );
    $circle->circle(
		    cx =>$x,
		    cy=>$y,
		    r=>${circle_size}
		   );
    
    return 1;
  }
  
  return 0;
}


print $svg->xmlify(
		   -pubid => "-//W3C//DTD SVG 1.0//EN",
		   -inline => 1
		  );


__END__
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
