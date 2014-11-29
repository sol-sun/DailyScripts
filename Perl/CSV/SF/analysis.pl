#!/usr/bin/env perl

use strict;
use warnings;
use Statistics::R;
use Text::CSV_XS qw( csv );
use Data::Dumper;
use FileHandle;
##

my $csv = Text::CSV_XS->new({binary => 1, auto_diag => 1, blank_is_undef => 0 });

my $input = $ARGV[0];
die unless $input =~ m/\.csv$/;

open my $file, '<', $input;
binmode(STDOUT, ':utf8');

my (%Strengths, %reorder);
my @sences;
my $reorder_num = 0;
my $last = 0;
my $flag = 0;

while(my $row = $csv->getline($file)){

  
  if($$row[5]){
    $reorder_num++;
    $reorder{$$row[5]} = $reorder_num;
    push @sences, $$row[5];
  }

  next unless $$row[3];
  next if $$row[3] eq 'A';
  my $avility = $1 if $$row[3] =~ m/([^\(]*)/;
  $Strengths{$avility}++;

  $last++;
  #  if($$row[2] =~ m/I\ select\ the\ gift\ which\ everyone\ may\ is\ fond/){
  #    last;
  #  }

}
#print $last;

$csv->eof;

my (@counts, @reorder);
my $Total;

for(my $i=0;$i<34;$i++){
  $Total += $Strengths{$sences[$i]};
  push @counts, $Strengths{$sences[$i]};
  $reorder[$i] = $reorder{$sences[$i]};
  $sences[$i] = "\"$sences[$i]\"";
}

my $diverg;
for(@counts){
  $diverg += ($_ - 10)**2;
}

#print sqrt($diverg);


my $sence = join ', ', @sences;
my $count = join ', ', @counts;
my $reorder = join ', ', @reorder;


## Generate R::Graph

my $R = Statistics::R->new();

$R->send(q{ library(ggplot2) });
## load for reorder
$R->send(qq{ sences <- c($sence) });
$R->send(qq{ counts <- c($count) });
$R->send(qq{ order <- c($reorder) });
$R->send(q{ df<- data.frame(Sence = sences, count = counts, reorder = order )});
$R->run(q{ g <- ggplot(df, aes(x= reorder(Sence, reorder), y=as.factor(count), fill=count)) });
$R->run(q{ g <- g + geom_bar( width = 0.6, stat = "identity") });
$R->run(q{ png(width=900) });
$R->send(qq{ g <- g + xlab('')});
$R->send(qq{ g <- g + ylab('Count')});
$R->send(qq{ g <- g + ggtitle("全354の質問ごとの能力集計(10が最適)")});
$R->send(qq{ g <- g + theme(axis.text.x = element_text(angle=45, hjust =1))});
$R->send(q{theme_set(theme_bw(base_size=13,base_family="HiraKakuProN-W3")) });
$R->run(q{ plot(g) });
$R->run(q{ dev.off() });


$R->stop();
