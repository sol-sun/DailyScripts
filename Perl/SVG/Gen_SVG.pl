#!/usr/bin/env perl

use strict;
use warnings;
use SVG;
use Data::Dumper;
use lib '../Math';
use Question1;

my $sm_width = 600;
my $sm_height = 600;
my $sm_center = 600/3;
my $setoff_x = 100;
my $setoff_y = 100;

my $svg = SVG->new(width=>${sm_width}, height=>${sm_height});

&Level3_2();

sub Level1_1($){

  $setoff_x = 150;
  $setoff_y = 150;

  my @questions = &IQ_Problem::Question1_1();

  my @ids = (
	     ["Cell_1-1", "Cell_1-2"],
	     ["Cell_2-1", "Cell_2-2"],
	    );

  my $counter = 0;
  for(my $i=0;$i<scalar(@ids);$i++){
    for(my $j=0;$j<scalar(@{$ids[$i]});$j++){
      my $x = ( ($setoff_x * 2) * $j ) + $setoff_x;
      my $y = ( ($setoff_y * 2) * $i ) + $setoff_y;
      &Objects('circle', $x, $y, "70", "$ids[$i][$j]"."_Circle", "#0080ff");

      my @change_xy = &number_offset($questions[$counter][3]);

      my $top_x = $x - 30.5 + ($change_xy[0] * 1.7);
      my $top_y = $y - 85 + ($change_xy[1] * 1.7);

      &Objects('text',$top_x,$top_y,"$ids[$i][$j]"."top_Text", $questions[$counter][3], 'big');

      @change_xy = &number_offset($questions[$counter][2]);
      my $left_x = $x - 110 + ($change_xy[0] * 1.7);
      my $left_y = $y + 90 + ($change_xy[1] * 1.7);
      &Objects('text',$left_x,$left_y,"$ids[$i][$j]"."left_Text",$questions[$counter][2], 'big');

      @change_xy = &number_offset($questions[$counter][1]);
      my $right_x = $x + 50 + ($change_xy[0] * 1.7);
      my $right_y = $y + 90 + ($change_xy[1] * 1.7);
      &Objects('text',$right_x,$right_y,"$ids[$i][$j]"."right_Text",$questions[$counter][1], 'big');

      if($j != 1 || $i != 1){
	my $center_x = $x - 30;
	my $center_y = (($y + 68) - 50);
	&Objects('text',$center_x,$center_y,"$ids[$i][$j]"."center_Text", $questions[$counter][0], 'big');

      }
      $counter++;

    }

  }
  &Objects('question', 350, 350);
}

sub Level1_2($){

  $setoff_x = 150;
  $setoff_y = 150;

  my @questions = &IQ_Problem::Question1_2();

  my @ids = (
	     ["Cell_1-1", "Cell_1-2"],
	     ["Cell_2-1", "Cell_2-2"],
	    );

  my $counter = 0;
  for(my $i=0;$i<scalar(@ids);$i++){
    for(my $j=0;$j<scalar(@{$ids[$i]});$j++){
      my $x = ( ($setoff_x * 2) * $j ) + $setoff_x;
      my $y = ( ($setoff_y * 2) * $i ) + $setoff_y;
      &Objects('circle', $x, $y, "70", "$ids[$i][$j]"."_Circle", "#b44c97");

      my @change_xy = &number_offset($questions[$counter][3]);

      my $top_x = $x - 30.5 + ($change_xy[0] * 1.7);
      my $top_y = $y - 85 + ($change_xy[1] * 1.7);

      &Objects('text',$top_x,$top_y,"$ids[$i][$j]"."top_Text", $questions[$counter][3], 'big');

      @change_xy = &number_offset($questions[$counter][2]);
      my $left_x = $x - 110 + ($change_xy[0] * 1.7);
      my $left_y = $y + 90 + ($change_xy[1] * 1.7);
      &Objects('text',$left_x,$left_y,"$ids[$i][$j]"."left_Text",$questions[$counter][2], 'big');

      @change_xy = &number_offset($questions[$counter][1]);
      my $right_x = $x + 50 + ($change_xy[0] * 1.7);
      my $right_y = $y + 90 + ($change_xy[1] * 1.7);
      &Objects('text',$right_x,$right_y,"$ids[$i][$j]"."right_Text",$questions[$counter][1], 'big');

      if($j != 1 || $i != 1){
	my $center_x = $x - 30;
	my $center_y = (($y + 68) - 50);
	&Objects('text',$center_x,$center_y,"$ids[$i][$j]"."center_Text", $questions[$counter][0], 'big');
      }
      $counter++;

    }

  }
  &Objects('question', 350, 350);
}


sub Level1_3($){

  $setoff_x = 150;
  $setoff_y = 150;

  my @questions = &IQ_Problem::Question1_3();

  my @ids = (
	     ["Cell_1-1", "Cell_1-2"],
	     ["Cell_2-1", "Cell_2-2"],
	    );

  my $counter = 0;
  for(my $i=0;$i<scalar(@ids);$i++){
    for(my $j=0;$j<scalar(@{$ids[$i]});$j++){
      my $x = ( ($setoff_x * 2) * $j ) + $setoff_x;
      my $y = ( ($setoff_y * 2) * $i ) + $setoff_y;
      &Objects('circle', $x, $y, "70", "$ids[$i][$j]"."_Circle", "#c9171e");

      my @change_xy = &number_offset($questions[$counter][3]);

      my $top_x = $x - 30.5 + ($change_xy[0] * 1.7);
      my $top_y = $y - 85 + ($change_xy[1] * 1.7);

      &Objects('text',$top_x,$top_y,"$ids[$i][$j]"."top_Text", $questions[$counter][3], 'big');

      @change_xy = &number_offset($questions[$counter][2]);
      my $left_x = $x - 110 + ($change_xy[0] * 1.7);
      my $left_y = $y + 90 + ($change_xy[1] * 1.7);
      &Objects('text',$left_x,$left_y,"$ids[$i][$j]"."left_Text",$questions[$counter][2], 'big');

      @change_xy = &number_offset($questions[$counter][1]);
      my $right_x = $x + 50 + ($change_xy[0] * 1.7);
      my $right_y = $y + 90 + ($change_xy[1] * 1.7);
      &Objects('text',$right_x,$right_y,"$ids[$i][$j]"."right_Text",$questions[$counter][1], 'big');

      if($j != 1 || $i != 1){
	@change_xy = &number_offset($questions[$counter][0]);
	my $center_x = $x - 30 + ($change_xy[0] * 1.7);
	my $center_y = (($y + 68) - 50) + ($change_xy[1] * 1.7);
	&Objects('text',$center_x,$center_y,"$ids[$i][$j]"."center_Text", $questions[$counter][0], 'big');
	
      }
      $counter++;

    }

  }
  &Objects('question', 350, 350);
}

sub Level2_1($){ ## under development
  my @ids = (
	     ["Cell_1-1", "Cell_1-2", "Cell_1-3"],
	     ["Cell_2-1", "Cell_2-2", "Cell_2-3"],
	     ["Cell_3-1", "Cell_3-2", "Cell_3-3"]
	    );
  my $counter = 0;
  for(my $i=0;$i<scalar(@ids);$i++){
    for(my $j=0;$j<scalar(@{$ids[$i]});$j++){
      my $x = ( ($setoff_x * 2) * $j ) + $setoff_x;
      my $y = ( ($setoff_y * 2) * $i ) + $setoff_y;

      ## [0][i] rows
      if($j == 0 && $i == 0 ){
	&Objects('triangle', $x, $y, 90, "$ids[$i][$j]"."_Triangle", 'black');
      }elsif($j == 0 && $i == 1){
	&Objects('circle', $x, $y, "50", "$ids[$i][$j]"."_Circle", 'black');
      }elsif($j == 0 && $i == 2){
	&Objects('square', $x, $y, 85, "$ids[$i][$j]"."_Square", 'black');
      }

      ## [1][i] rows
      if($j == 1 && $i == 0){
	&Objects('line', $x, $y-50, $x, $y+50, "$ids[$i][$j]"."_Line", 'blue');
      }elsif($j == 1 && $i == 1){
	&Objects('line', $x, $y-50, $x, $y+50, "$ids[$i][$j]"."-1"."_Line", 'green');
	&Objects('line', $x-50, $y, $x+50, $y, "$ids[$i][$j]"."-2"."_Line", 'green');
      }elsif($j == 1 && $i == 2){
	&Objects('line', $x-50, $y, $x+50, $y, "$ids[$i][$j]"."_Line", 'orange');
      }

      ## [2][i] rows
	my $object_x =  $setoff_x;
	my $object_y = ( ($setoff_y * 2) * $i ) + $setoff_y;

      if($j == 2 && $i == 0){
	
	&Objects('scale',"$ids[$i][0]"."_Triangle", $x, $object_x, $y, $object_y, '1', '1.5');
      }elsif($j == 2 && $i == 1){
	&Objects('scale', "$ids[$i][0]"."_Circle",$x, $object_x, $y, $object_y, '1.5', '1.5');
      }elsif($j == 2 && $i == 2){
	&Objects('question', 400, 400);
      }
    }
  }
  
}

sub Level2_2($){ ## under development
  my @ids = (["Cell_1-1", "Cell_1-2", "Cell_1-3"],
	     ["Cell_2-1", "Cell_2-2", "Cell_2-3"],
	     ["Cell_3-1", "Cell_3-2", "Cell_3-3"]);

  for(my $i=0;$i<scalar(@ids);$i++){
    for(my $j=0;$j<scalar(@{$ids[$i]});$j++){
      my $x = ( ($setoff_x * 2) * $j ) + $setoff_x;
      my $y = ( ($setoff_y * 2) * $i ) + $setoff_y;

      ## [0][i] rows
      if($j == 0 && $i == 0){
	&Objects('triangle', $x, $y, 110, "$ids[$i][$j]", 'black');
      }elsif($j == 0 && $i == 1){
	&Objects('square', $x, $y, 80, "$ids[$i][$j]", 'black');
      }elsif($j == 0 && $i == 2){
	&Objects('square', $x, $y, 85, "$ids[$i][$j]", 'black');
      }
      ##.

      my $object_x1 = (($setoff_x * 2) * 0) + $setoff_y;
      my $object_x2 = (($setoff_x * 2) * 1) + $setoff_y;
      my $object_y = ( ($setoff_y * 2) * $i ) + $setoff_y;

      ## [1][i] rows
      if($j == 1 && $i == 0){
	&Objects('circle', $x, $y, 30, "$ids[$i][$j]", 'black');
      }elsif($j == 1 && $i == 1){
	&Objects('rotate',"$ids[$i][0]", $x, $object_x1, $y, $object_y,'35', "$ids[$i][$j]");
      }elsif($j == 1 && $i == 2){
	&Objects('square', $x, $y, 35, "$ids[$i][$j]", 'black');
      }
      ##.

      ## [2][i] rows
      if($j == 2 && $i == 0){
	&Objects('scale', "$ids[$i][0]", $x, $object_x1, $y, $object_y, '1', '1');
	&Objects('scale', "$ids[$i][1]", $x, $object_x2, $y, $object_y, '1', '1');
      }elsif($j == 2 && $i == 1){
	&Objects('scale', "$ids[$i][0]", $x, $object_x1, $y, $object_y, '1', '1');
	&Objects('scale', "$ids[$i][1]", $x, $object_x2, $y, $object_y, '1', '1');
	#Objects('triangle', $x, $y, 150, "$ids[$i][$j]"."_Circle", 'skyblue');
      }elsif($j == 2 && $i == 2){
	&Objects('question', 400, 400);
      }
      ##.
    }
  }
}


sub Level3_1($){

  ##各上列2つの数字を足すと，15から30までの数字のどれかになる．
  my @questions = &IQ_Problem::Question3_1();

  ## create table
  $setoff_x = 71;
  $setoff_y = 63;

  ##set number between 1<=x<=4
  my @TableSize = qw(3 3);

  my ($length_x, $length_y) = (125, 140);
  my ($table_color, $TableCell_size) = ("#3c3c3c", 130);
  my @table_x = qw( 93  235 377 519 );
  my @table_y = qw( 100 225 350 475 );

  for(my $i=0; $i < $TableSize[1];$i++){
    for(my $j=0; $j < $TableSize[0];$j++){

      my $move_x = (4 - $TableSize[0]) * ($length_x/2);
      my $move_y = (4 - $TableSize[1]) * ($length_y/2);
      
      &Objects('square', $table_x[$i] + $move_y, $table_y[$j] + $move_x, $TableCell_size, "$i-$j", $table_color);
    }
  }
  #  &Objects( 'square', 306, 318, 583, 'Table', $table_color );
  
  my @ids = (["Cell_1-1", "Cell_1-2", "Cell_1-3", "Cell_1-4"],
	     ["Cell_2-1", "Cell_2-2", "Cell_2-3", "Cell_2-4"],
	     ["Cell_3-1", "Cell_3-2", "Cell_3-3", "Cell_3-4"],
	     ["Cell_4-1", "Cell_4-2", "Cell_4-3", "Cell_4-4"]
	    );
  ##.

  for(my $i=0;$i<$TableSize[1];$i++){
    for(my $j=0;$j<$TableSize[0];$j++){

      my $move_x = (4 - $TableSize[0]) * ($length_x/2);
      my $move_y = (4 - $TableSize[1]) * ($length_y/2);

      
      if($i == ($TableSize[0] - 1) && $j == ($TableSize[1] - 1)){
	&Objects('question', 418-$move_y , 368-$move_x);
	next;
      }
      my $x = ( ($setoff_x * 2) * $j ) + $setoff_x;
      my $y = ( ($setoff_y * 2) * $i ) + $setoff_y;

      ## [0][i] rows

      my @change_xy = &number_offset($questions[$i][$j]);
      my $center_x = $x - 6.5 + ($change_xy[0] * 1.7);
      my $center_y = (($y + 80) - 33) + ($change_xy[1] * 1.7);
      &Objects('text',$center_x+$move_y,$center_y+$move_x,"$ids[$i][$j]"."center_Text", "$questions[$i][$j]", 'big');

  
    }
  }
  
}

sub Level3_2($){

  # 横の三つの数字を3でわると一番右の数字になる!

  my @questions = &IQ_Problem::Question3_2();
  
  ## create table
  $setoff_x = 71;
  $setoff_y = 63;

  ##set number between 1<=x<=4 (y, x)
  
  my @TableSize = qw(4 3);

  my ($length_x, $length_y) = (125, 140);
  my ($table_color, $TableCell_size) = ("#3c3c3c", 130);
  my @table_x = qw( 93  235 377 519 );
  my @table_y = qw( 100 225 350 475 );

  for(my $i=0; $i < $TableSize[0];$i++){
    for(my $j=0; $j < $TableSize[1];$j++){

      my $move_x = (4 - $TableSize[0]) * ($length_x/2);
      my $move_y = (4 - $TableSize[1]) * ($length_y/2);
      
      &Objects('square', $table_x[$i] + $move_x, $table_y[$j] + $move_y, $TableCell_size, "$i-$j", $table_color);
    }
  }
  #  &Objects( 'square', 306, 318, 583, 'Table', $table_color );
#return 1;  
  my @ids = (["Cell_1-1", "Cell_1-2", "Cell_1-3", "Cell_1-4"],
	     ["Cell_2-1", "Cell_2-2", "Cell_2-3", "Cell_2-4"],
	     ["Cell_3-1", "Cell_3-2", "Cell_3-3", "Cell_3-4"],
	     ["Cell_4-1", "Cell_4-2", "Cell_4-3", "Cell_4-4"]
	    );
  ##.

  for(my $i=0;$i<$TableSize[1];$i++){
    for(my $j=0;$j<$TableSize[0];$j++){

      my $move_x = (4 - $TableSize[0]) * ($length_x/2);
      my $move_y = (4 - $TableSize[1]) * ($length_y/2);

      if($j == ($TableSize[0] - 1) && $i == ($TableSize[1] - 1)){
	#	&Objects('question', 418-$move_y , 368-$move_x);
	last;
      }
      my $x = ( ($setoff_x * 2) * $j ) + $setoff_x;
      my $y = ( ($setoff_y * 2) * $i ) + $setoff_y;

      ## [0][i] rows

      my @change_xy = &number_offset($questions[$i][$j]);
      my $center_x = $x - 6.5 + ($change_xy[0] * 1.7);
      my $center_y = (($y + 80) - 33) + ($change_xy[1] * 1.7);
      &Objects('text',$center_x+$move_x,$center_y+$move_y,"$ids[$i][$j]"."center_Text", "$questions[$i][$j]", 'big');

  
    }
  }
  
}

sub Level3_3($){

 #  単純に左みっつを足して右になる．
  
  my @questions = &IQ_Problem::Question3_1();

  @questions = (
		[15, 5, 6, 4],
		[48, 9, 13, 26],
		[38, 20, 3, 15],
	       );
  
  ## create table
  $setoff_x = 71;
  $setoff_y = 63;

  ##set number between 1<=x<=4 (y, x)
  
  my @TableSize = qw(4 3);

  my ($length_x, $length_y) = (125, 140);
  my ($table_color, $TableCell_size) = ("#3c3c3c", 130);
  my @table_x = qw( 93  235 377 519 );
  my @table_y = qw( 100 225 350 475 );

  for(my $i=0; $i < $TableSize[0];$i++){
    for(my $j=0; $j < $TableSize[1];$j++){

      my $move_x = (4 - $TableSize[0]) * ($length_x/2);
      my $move_y = (4 - $TableSize[1]) * ($length_y/2);
      
      &Objects('square', $table_x[$i] + $move_x, $table_y[$j] + $move_y, $TableCell_size, "$i-$j", $table_color);
    }
  }
  #  &Objects( 'square', 306, 318, 583, 'Table', $table_color );
#return 1;  
  my @ids = (["Cell_1-1", "Cell_1-2", "Cell_1-3", "Cell_1-4"],
	     ["Cell_2-1", "Cell_2-2", "Cell_2-3", "Cell_2-4"],
	     ["Cell_3-1", "Cell_3-2", "Cell_3-3", "Cell_3-4"],
	     ["Cell_4-1", "Cell_4-2", "Cell_4-3", "Cell_4-4"]
	    );
  ##.

  for(my $i=0;$i<$TableSize[1];$i++){
    for(my $j=0;$j<$TableSize[0];$j++){

      my $move_x = (4 - $TableSize[0]) * ($length_x/2);
      my $move_y = (4 - $TableSize[1]) * ($length_y/2);

      if($j == ($TableSize[0] - 1) && $i == ($TableSize[1] - 1)){
	#	&Objects('question', 418-$move_y , 368-$move_x);
	last;
      }
      my $x = ( ($setoff_x * 2) * $j ) + $setoff_x;
      my $y = ( ($setoff_y * 2) * $i ) + $setoff_y;

      ## [0][i] rows

      my @change_xy = &number_offset($questions[$i][$j]);
      my $center_x = $x - 6.5 + ($change_xy[0] * 1.7);
      my $center_y = (($y + 80) - 33) + ($change_xy[1] * 1.7);
      &Objects('text',$center_x+$move_x,$center_y+$move_y,"$ids[$i][$j]"."center_Text", "$questions[$i][$j]", 'big');

  
    }
  }
  
}




sub Level4_1($){ ## most easy IQ question  # one type objects are listed

  ## 数字の差をたせば，ある数になる．アルゴリズムはまだ．
  my @questions = &IQ_Problem::Question3_1();

  ## create table
  $setoff_x = 71;
  $setoff_y = 63;

  ##set number between 1<=x<=4
  my @TableSize = qw(3 3);

  my ($length_x, $length_y) = (125, 140);
  my ($table_color, $TableCell_size) = ("#3c3c3c", 130);
  my @table_x = qw( 93  235 377 519 );
  my @table_y = qw( 100 225 350 475 );
  #  &Objects( 'square', 306, 318, 583, 'Table', $table_color );
  
  
  my @ids = (["Cell_1-1", "Cell_1-2", "Cell_1-3", "Cell_1-4"],
	     ["Cell_2-1", "Cell_2-2", "Cell_2-3", "Cell_2-4"],
	     ["Cell_3-1", "Cell_3-2", "Cell_3-3", "Cell_3-4"],
	     ["Cell_4-1", "Cell_4-2", "Cell_4-3", "Cell_4-4"]
	    );
  ##.

  for(my $i=0;$i<scalar(@ids);$i++){
    for(my $j=0;$j<scalar(@{$ids[$i]});$j++){

      &Objects('text', 0, 300, "$ids[$i][$j]"."center_Text", "13,  19,  27,  ?,  63", 'big');
      last;

    }
  }
}


sub Level4_2($){ ## most easy IQ question  # one type objects are listed

  ## 前4つの数字の和
  
  my @questions = &IQ_Problem::Question3_1();

  ## create table
  $setoff_x = 71;
  $setoff_y = 63;

  ##set number between 1<=x<=4
  my @TableSize = qw(3 3);

  my ($length_x, $length_y) = (125, 140);
  my ($table_color, $TableCell_size) = ("#3c3c3c", 130);
  my @table_x = qw( 93  235 377 519 );
  my @table_y = qw( 100 225 350 475 );
  #  &Objects( 'square', 306, 318, 583, 'Table', $table_color );


  my @ids = (["Cell_1-1", "Cell_1-2", "Cell_1-3", "Cell_1-4"],
	     ["Cell_2-1", "Cell_2-2", "Cell_2-3", "Cell_2-4"],
	     ["Cell_3-1", "Cell_3-2", "Cell_3-3", "Cell_3-4"],
	     ["Cell_4-1", "Cell_4-2", "Cell_4-3", "Cell_4-4"]
	    );
  ##.

  for(my $i=0;$i<scalar(@ids);$i++){
    for(my $j=0;$j<scalar(@{$ids[$i]});$j++){

      &Objects('text', 0, 300, "$ids[$i][$j]"."center_Text", "6, 7, 1, 9, 23, 40, 73, ?", 'big');
      last;
    }
  }
}


sub Level4_3($){ ## most easy IQ question  # one type objects are listed

  ## 最初2桁とあとの一桁の積が次の数
  
  my @questions = &IQ_Problem::Question3_1();

  ## create table
  $setoff_x = 71;
  $setoff_y = 63;

  ##set number between 1<=x<=4
  my @TableSize = qw(3 3);

  my ($length_x, $length_y) = (125, 140);
  my ($table_color, $TableCell_size) = ("#3c3c3c", 130);
  my @table_x = qw( 93  235 377 519 );
  my @table_y = qw( 100 225 350 475 );
  #  &Objects( 'square', 306, 318, 583, 'Table', $table_color );
  
  
  my @ids = (["Cell_1-1", "Cell_1-2", "Cell_1-3", "Cell_1-4"],
	     ["Cell_2-1", "Cell_2-2", "Cell_2-3", "Cell_2-4"],
	     ["Cell_3-1", "Cell_3-2", "Cell_3-3", "Cell_3-4"],
	     ["Cell_4-1", "Cell_4-2", "Cell_4-3", "Cell_4-4"]
	    );
  ##.

  for(my $i=0;$i<scalar(@ids);$i++){
    for(my $j=0;$j<scalar(@{$ids[$i]});$j++){

      &Objects('text', 0, 300, "$ids[$i][$j]"."center_Text", "759, 675, 335, 165, ?", 'big');
      last;
    }
  }
}


sub Level4_4($){ ## most easy IQ question  # one type objects are listed

  ## 二乗問題 すぐ実装できそう．

  my @questions = &IQ_Problem::Question3_1();

  ## create table
  $setoff_x = 71;
  $setoff_y = 63;

  ##set number between 1<=x<=4
  my @TableSize = qw(3 3);

  my ($length_x, $length_y) = (125, 140);
  my ($table_color, $TableCell_size) = ("#3c3c3c", 130);
  my @table_x = qw( 93  235 377 519 );
  my @table_y = qw( 100 225 350 475 );
  #  &Objects( 'square', 306, 318, 583, 'Table', $table_color );
  
  
  my @ids = (["Cell_1-1", "Cell_1-2", "Cell_1-3", "Cell_1-4"],
	     ["Cell_2-1", "Cell_2-2", "Cell_2-3", "Cell_2-4"],
	     ["Cell_3-1", "Cell_3-2", "Cell_3-3", "Cell_3-4"],
	     ["Cell_4-1", "Cell_4-2", "Cell_4-3", "Cell_4-4"]
	    );
  ##.

  for(my $i=0;$i<scalar(@ids);$i++){
    for(my $j=0;$j<scalar(@{$ids[$i]});$j++){

      &Objects('text', 0, 300, "$ids[$i][$j]"."center_Text", "1, 4, 16, 64, 256, ?", 'big');
      last;
    }
  }
  
}



sub number_offset{ 

  if(length(shift()) == 1){
    return (9,0);
  }else{return(0,0);}

}

sub Objects{
  
  my $type = shift @_;

  
  if($type eq 'question'){
    
    my %translate = ('x', shift @_, 'y', shift @_);    
    
    my $scale = 0.5;


    $translate{'y'} += ( -95 + (((1-$scale)*98) * 2) );
    $translate{'x'} += ( -8 + (((1-$scale)*10) * 11) );
    
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
				    transform => "translate($translate{'x'},$translate{'y'}),scale($scale)"
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
    
    my ($x, $y, $circle_size, $id, $color) = @_;
    
    my $circle = $svg->group(
			     id => $id,
			     style => {'stroke-width'=> '6', 'stroke'=> $color, 'fill'=> 'none', 'background' => 'black'}
			    );
    $circle->circle(
		    cx =>$x,
		    cy=>$y,
		    r=>${circle_size}
		   );

    return 1;
  }elsif($type eq 'triangle'){
    
    my @top_xy = (shift @_, shift @_);
    my ($triangle_size, $id, $stroke_color) = @_;
    $top_xy[1] -= ($triangle_size/2);
    my $height = ( ($triangle_size/2) * sqrt(3));
    my @right_xy = ( ($top_xy[0] + ($triangle_size/2)), ($top_xy[1] + $height) );
    my @left_xy  = ( ($top_xy[0] - ($triangle_size/2)), ($top_xy[1] + $height) );
    
    my $xv = [$top_xy[0], $right_xy[0], $left_xy[0]];
    my $yv = [$top_xy[1], $right_xy[1], $left_xy[1]];

   my $points = $svg->get_path(
        x=>$xv, y=>$yv,
        -type=>'polygon'
    );

    my $c = $svg->polygon(
			  %$points,
			  id=>$id,
			  style=>{'stroke-width'=> '7', 'stroke'=> $stroke_color, 'fill'=> 'none', 'background'=> 'black'}
		       );

  }elsif($type eq 'polygon'){

    #いまのところいらないかも
    my @xy = @_;

    if( (scalar(@xy)/2) == 3 ){ ##This is triangle
      my @top_xy = (shift @_, shift @_);
      my @bottom1_xy = (shift @_, shift @_);
      my @bottom2_xy = (shift @_, shift @_);
      my ($id, $stroke_color) = @_;
      my $xv = [$top_xy[0], $bottom1_xy[0], $bottom2_xy[0]];
      my $yv = [$top_xy[1], $bottom1_xy[1], $bottom2_xy[1]];
      
      my $points = $svg->get_path(
				  x=> $xv, y=>$yv,
				  -type=>'polygon'
				 );
      my $c = $svg->polygon(
			    %$points,
			    id=>$id,
			    style=>{'stroke-width'=> '7', 'stroke'=> $stroke_color, 'fill'=> 'none', 'background' => 'black'}
			   );
    }
    ##.

  }elsif($type eq 'scale'){
    ##translate(x, y), rotate(a), translate(-x,-y) => offset in x,y
    ##translate(x, y), scale(a), translate(-x,-y) => offset in x,y
    ##

    my ($href, $x, $object_x, $y, $object_y, $scale_x, $scale_y) = @_;

    my $c = $svg->use(x=>$x-$object_x, y=>$y-$object_y, '-href'=>"#$href",transform=>"translate($x, $y), scale($scale_x,$scale_y), translate(-$x, -$y)");

  }elsif($type eq 'rotate'){

    my ($href, $x, $object_x, $y, $object_y, $rotate, $id) = @_;

    my $c = $svg->use(x=>$x-$object_x, y=>$y-$object_y, '-href'=>"#$href",transform=>"translate($x, $y), rotate($rotate), translate(-$x, -$y)", id=> $id );

  }elsif($type eq 'line'){

    my @xy1 = (shift @_, shift @_);
    my @xy2 = (shift @_, shift @_);
    my  ($id, $stroke_color) = @_;

    my $c = $svg->line(
		       id=> $id,
		       x1=>$xy1[0], y1=>$xy1[1],
		       x2=>$xy2[0], y2=>$xy2[1],
		       style=>{'stroke-width'=>'7', 'stroke'=> $stroke_color}
		      );

  }elsif($type eq 'square'){

    my @top_xy = (shift @_, shift @_);
    my ($square_size, $id, $stroke_color) = @_;
    # ( $square + $y ) should be center_xy of object;
    $top_xy[1] -= ($square_size/2);
    #
    my $height = ($square_size/2) * sqrt(3);#( ($square_size/2) * sqrt(3));#=> 正方形じゃなくなっている。
    my @right_xy = ( ($top_xy[0] + ($square_size/2)), ($top_xy[1] + $height) );
    my @left_xy  = ( ($top_xy[0] - ($square_size/2)), ($top_xy[1] + $height) );

    my $xv = [$left_xy[0], $right_xy[0], $right_xy[0], $left_xy[0]];
    my $yv = [$top_xy[1], $top_xy[1], $right_xy[1], $left_xy[1]];

   my $points = $svg->get_path(
        x=>$xv, y=>$yv,
        -type=>'polygon'
    );

    my $c = $svg->polygon(
			  %$points,
			  id=>$id,
			  style=>{'stroke-width'=> '7', 'stroke'=> $stroke_color, 'fill'=> 'none', 'background'=> 'black'}
		       );

    
    
  }elsif($type eq 'text'){

    my ($x, $y, $id,$cdata, $text_size) = @_;

    if($text_size eq 'small'){
      $text_size = 40;
    }else{
      $text_size = 55;
    }
    
    
    my $text1 = $svg->text(
			   id=>$id,
			   x=>$x,
			   y=>$y,
			   #			   'font-family'=>'Myriad Pro Black',
			   'font-family'=>'Futura Condensed ExtraBold',
			   'font-weight'=>'bold',
#			   'font-size'=> '55'
			   'font-size'=> $text_size
			  )->cdata($cdata);
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
