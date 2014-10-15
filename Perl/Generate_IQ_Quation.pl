#!/usr/bin/env perl

use strict;
use warnings;
use lib 'Math';
use Euclidean_rotate;
use Math::Random::MT qw/rand srand/;
use Math::Trig;
## Cahge rand sheets
srand time^$$;
##


#my $Degree = &Random_Degree_Generate();
#print $Degree;


print &Euclidean_rotate::Euclidean_Rotate(80,0,(pi/3));


sub Random_Degree_Generate{ ### 15 or 45 or 60 or 90 or 120 or 135

  my $Degree;

  my $r = rand(1);

  if ($r < 0.1666667 )
    {
      $Degree = 15;
    }
  elsif ($r < 0.3333334)
    {
      $Degree = 45;
    }
  elsif ($r < 0.5000001)
    {
      $Degree = 60;
    }
  elsif ($r < 0.6666668)
    {
      $Degree = 90;
    }
  elsif($r < 0.8333335)
    {
      $Degree = 120;
    }
  else
    {
      $Degree = 135;
    }
  return $Degree;
}
