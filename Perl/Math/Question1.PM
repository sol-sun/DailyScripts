#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use Math::Random::MT qw(srand rand);
use List::Util qw(shuffle);

&Question1_num;
#srand(time() | $$);

sub Question1_num{

  my @result_table;
  my @center_nums;

  foreach(1..9){
    my $rand_total = list_util_shuffle(15,100);
    push @center_nums, $rand_total;
  }

  foreach my $center_num(@center_nums){
    my @array;
    print $center_num,"\n";
    
    my $hoge = $center_num - int($center_num/5); # 10 is arbitrary number
    print $hoge, "\n";
    my $num_1 = list_util_shuffle($center_num/15, $hoge);
    print $num_1, "\n";
    
    $hoge = $num_1 - int($center_num/5);
    
    push @array, $num_1;
    
    last;
    push @result_table, \@array;
  }

#  print Dumper $center_nums[0];
#  print Dumper @result_table;

  return @result_table;
}

sub list_util_shuffle{
  return shuffle (shift()..(shift()-1));
}

