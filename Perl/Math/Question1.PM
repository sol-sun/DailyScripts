#!/usr/bin/env perl

package IQ_Problem;

use strict;
use warnings;
use Data::Dumper;
use Math::Random::MT qw(srand rand);
use List::Util qw(shuffle);


#print Dumper &Question1_3();

#srand(time() | $$);

#### 3 numbers around circles. these solution is sum of three numbers which pointed center of circle.
### Question1 subroutine return 4 number for IQ question.

sub Question1_1($){

  my @result_table;

  foreach(1..9){
    my @results = ();
    my $question_num = list_util_shuffle(15,100);
    push @results, $question_num;

    my ($min, $max);
    for(1..2){
      ($min, $max) = ( int($question_num/5), ($question_num - int($question_num/5)) );
      my $num = list_util_shuffle($min, $max);
      push @results, $num;
      $question_num -= $num;
    }
    push @results, $question_num;

    push @result_table, [@results];
  }

  return @result_table;

}

sub Question1_2($){
  my @Exp_prime_num = (15,16,18,20,21,22,24,25,26,27,28,30,32,33,34,35,36,38,39,40,42,44,45,46,48,49,50,51,52,54,55,56,57,58,60,62,63,64,65,66,68,69,70,72,74,75,76,77,78,80,81,82,84,85,86,87,88,90,91,92,93,94,95,96,98,99);
  my @result_table;
  foreach(1..9){
    my @results = ();
    my $question_num = list_util_shuffle(@Exp_prime_num);
    push @results, $question_num;

    my $small_num = 2;

    while(){
      if($question_num%$small_num == 0){
	last;
      }elsif($small_num > $question_num/2 ){
	$small_num = 1;
	last;
      }
      $small_num++;
    }

    my $num = $question_num/$small_num;
    
    my ($min, $max) = ( int($num/5), ($num - int($num/5)) );
    my $shuffle_num = list_util_shuffle($min, $max);
    
    push @result_table, [$question_num,($num - $shuffle_num), $shuffle_num, $small_num ];
  }

  return @result_table;
}

sub Question1_3($){

  my @result_table;
  my @result_num = (0..10);  

  for(1..9){
    
    my $question_num = shuffle(@result_num);
    @result_num = grep $_ ne $question_num, @result_num;
    
    my $num1 = shuffle(15,50);
    my $num2 = list_util_shuffle(15,50);
    #  my $num3 = int(($num1 + $num2)/2);
    my $small_num = 2;
    
    while(){
      if( (($num1 + $num2)%$small_num) == $question_num){
	last;
      }elsif($small_num >($num1 + $num2)){
	$small_num = 1;
      }
	$small_num++;
    }
    
    push @result_table, [$question_num,  $num1, $num2, $small_num];

  }

  return @result_table;
}


sub list_util_shuffle{
  if(scalar(@_) == 2){
    return shuffle (shift()..(shift()-1));
  }else{
    return shuffle @_;
  }
}


1;
