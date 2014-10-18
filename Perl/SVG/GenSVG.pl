#!/usr/bin/env perl

use strict;
use warnings;
use SVG;
use Time::HiRes;
use GD::Tiler qw(tile);
use Data::Dumper;
use Image::LibRSVG;

my $start_time;

$start_time = Time::HiRes::time;

for my $i(1..9){
  my $dir = 'Q1';

  unless(-d "./SVGs/$dir" ){
    mkdir "./SVGs/$dir";
  }

  open my $out, '>', "./SVGs/$dir/1-$i.svg";

  print $out &Quation_Level1();
  close $out;
}

my @PNGpath = &svg2png;
&Tiler(\@PNGpath, './Q1.png');

sub svg2png{
  my @PNGpath = ();
  my $dirname =  "./SVGs/Q1";
  my $rsvg = new Image::LibRSVG();

  opendir my $dh, $dirname or die "$!:$dirname";
  
  while(my $file = readdir $dh){
    if($file =~ m/\.svg$/){
      $file =~ s/\.svg$//;
      $rsvg->convert(qq($dirname/$file.svg), qq($dirname/$file.png));
      push @PNGpath, qq($dirname/$file.png);
    }

  }
  closedir $dh;
  return (@PNGpath);
}

sub Tiler{
  my ($files, $CrtPath) = @_;

  my ($img, @coords) = tile(
			    Images => [@$files],
			    Background => 'white',
			    Center => 0,
			   );
    unless($img){die $!;}

  open my $png, '>', "$CrtPath";

  print $png $img;
  close $png;
  return @coords;
}
  
sub Quation_Level1{
  
  ## 6 objects
  
my $sm_width = 200;
my $sm_height = 200;
my $sm_center = (${sm_width}/2);
my $circle_size = (${sm_center}/2);

# SVG opbject generate
my $svg = SVG->new(width=>${sm_width}, height=>${sm_height} );
#

my $y = $svg->group(
		    id =>'group_y',
		    style => { 'stroke-width'=>'7', 'stroke'=>'rgb(131, 204, 210)', 'fill'=>'white', 'background' =>'white'}
		   );

## Quation Level 1 => Select similar object;
$y->circle(cx=>${sm_center}, cy=>${sm_center}, r=>${circle_size},
	   id=>'circle_in_group_y');

##.

$svg->xmlify(
	     -namespace => "svg",
	     -pubid => "-//W3C//DTD SVG 1.0//EN",
	     -inline => 1
	    );

}

print STDERR "\n";
printf STDERR ("%0.3f", Time::HiRes::time - $start_time);
