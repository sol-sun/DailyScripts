#!/usr/bin/env perl
package rankArray;

use strict;
use warnings;
use List::Util qw(max min);

##0+ or +0##
#Change -> 1. $a and $b
#       -> 2. max change to min
#       -> if < and if >

sub ranking{
  
  my @ARRAY = @_;
  my $rank = scalar(@ARRAY);
  
  my @ranking;
  my $max = min @ARRAY;
  push @ranking, $max;

  for(sort{$a<=>$b}@ARRAY){
    if ($max < $_){
      unshift @ranking, $_;
      $max = $_;
    }
  }
  my @result;

  for(my $i=0;$i<scalar(@ranking);$i++){
    for(my $j=0;$j<scalar(@ARRAY);$j++){
      $result[$j] = ($i) if $ranking[$i] == $ARRAY[$j];
    }
  }

  return @result;
}

1;
