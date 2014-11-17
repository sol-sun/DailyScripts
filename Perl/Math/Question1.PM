#!/usr/bin/env perl

package IQ_Problem;

use strict;
use warnings;
use Data::Dumper;
use Math::Random::MT qw(srand rand);
use List::Util qw(shuffle);


  &Question4_1();

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

sub Question3_1($){

  my @result_table;


  my $Sum_num = list_util_shuffle(15..30);
  my @r_num = ( int($Sum_num * (1/3) ) .. int($Sum_num  * (2/3)) );  

  my @row_1;
  for my $num(0..2){
    
    $row_1[$num] = list_util_shuffle(@r_num);
    @r_num = grep $_ ne $row_1[$num], @r_num;
    
  }
  my @row_2;
  for my $num(0..2){
    $row_2[$num] = list_util_shuffle(@r_num);
    @r_num = grep $_ ne $row_2[$num], @r_num;
    
  }
  
  my @row_3;
  for(my $i=0;$i<3;$i++){
    $row_3[$i] = $Sum_num -  $row_1[$i] - $row_2[$i] ;
  }

  @result_table = (\@row_1, \@row_2, \@row_3);

  return @result_table;
}

sub Question3_2($){
  
  my @result_table;

  #とりあえず3で割り切れる数だけ
  my @number_pool = (15, 21, 30);

  $result_table[0][3] = 5;
  $result_table[1][3] = 7;
  $result_table[2][3] = 10;

  for(my $i=0;$i<scalar(@number_pool);$i++ ){
    my @r_num = ( int($number_pool[$i] * (1/3)) .. int($number_pool[$i] * (2/3)) );

    my $num1 = list_util_shuffle(@r_num);
    @r_num = ( int(($number_pool[$i] - $num1) * (1/3) )..int( ($number_pool[$i] - $num1) * (2/3)));
    my $num2 = list_util_shuffle(@r_num);
    my $num3 = $number_pool[$i] - ($num1 + $num2);
    
    $result_table[$i][0] = $num1;
    $result_table[$i][1] = $num2;
    $result_table[$i][2] = $num3;
  }

  return @result_table;

}

sub Question3_3($){
  my @result_table;
  my @number_pool = (5..30);

  for(my $i=0;$i<4;$i++){
    my $result = 0;
    for(my $j=0;$j<3;$j++){
      $result_table[$i][$j] = list_util_shuffle(@number_pool);
      @number_pool = grep $_ ne $result_table[$i][$j], @number_pool;
      $result += $result_table[$i][$j]
    }
    $result_table[$i][3] = $result;
  }

  return @result_table;
}

sub Question4_1($){
  my @questions;
  
  push @questions, eval(list_util_shuffle(3..8));
  push @questions, eval(list_util_shuffle( ($questions[0]+5)..($questions[0] + 30) ));
  push @questions, eval(list_util_shuffle( ($questions[1] + 5)..($questions[1] + 30) ));

  for my $i(2..5){
    push @questions,  eval(($questions[$i] * 2) - $questions[($i-2)]);
  }

  $questions[-1] = '?';
  
  return (join ', ', @questions);
}


sub list_util_shuffle{
  if(scalar(@_) == 2){
    return shuffle (shift()..(shift()-1));
  }else{
    return shuffle @_;
  }
}


1;
