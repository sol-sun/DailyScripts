#!/usr/bin/env perl

package IQ_Problem;

use strict;
use warnings;
use Data::Dumper;
use Math::Random::MT qw(srand rand);
use List::Util qw(shuffle);

#print Dumper &Question1;
#srand(time() | $$);

sub Question1{

  my @result_table;
  my @center_nums;

  foreach(1..9){
    my $rand_total = list_util_shuffle(15,100);
    push @center_nums, $rand_total;
  }

  foreach my $center_num(@center_nums){
    my @array;

    my $hoge = $center_num - int($center_num/5); # 10 is arbitrary number

    my $num_1 = list_util_shuffle($center_num/15, $hoge);

    $hoge = ($center_num - $num_1) - int(($center_num - $num_1)/$center_num);

    my $num_2 = list_util_shuffle(($center_num - $num_1)/15, $hoge);

    my $num_3 = $center_num - ($num_1 + $num_2);


    push @result_table, [$center_num, $num_1, $num_2, $num_3];
  }

  return @result_table;
}

sub list_util_shuffle{
  return shuffle (shift()..(shift()-1));
}

1;
