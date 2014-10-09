#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use Math::MatrixReal;
use Math::BigFloat;
use Math::Trig;
use Math::Round;
use 5.10.1;

#my $pi = Math::BigFloat->bpi(29);

my ($x, $y, $theta) = @ARGV;

my ($vector) = &Euclidean_Rotate($x, $y, $theta);

say  $vector;

sub Euclidean_Rotate{

  my ($x, $y, $theta) = @_;

  my $vector = Math::MatrixReal->new_from_rows( [[$x],[$y]] );

  my $rotation_matrix = &RotationMatrix($x, $y, $theta);
  
  return ( $rotation_matrix * $vector );
};

sub RotationMatrix{

## Define Rotation Matrix;
## 2D only (for multi rotate dimension is now under development...)
##[cosθ -sinθ]
##[sinθ  cosθ]
##
  my ($x, $y, $theta) = @_;
  my $cos = nearest(0.0001, cos($theta));
  my $sin = nearest(0.0001, sin($theta));
  my $matrix = Math::MatrixReal->new_from_rows( [[$cos, -$sin], [$sin, $cos]] );

  return ($matrix);
};
