#!/usr/bin/env perl

use strict;
use warnings;

my @array;

for my $num (1..100){
  
  for my $determine(2..($num-1)){
    if( ($num%$determine) == 0 ){
      push @array, $num;
      last;
    }
  }
  
}

$, = ",";
print @array;
