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

my %Strengths;

while(my $row = $csv->getline($file)){
  next unless $$row[3];
  next if $$row[3] eq 'A';
  my $avility = $1 if $$row[3] =~ m/([^\(]*)/;
  $Strengths{$avility}++;
}

$csv->eof;

my (@sences, @counts);
while(my($key, $values) = each (%Strengths) ){
  push @sences, "\"$key\"";
  push  @counts, $values;
}

my $sence = join ', ', @sences;
my $count = join ', ', @counts;

## Generate R::Graph

my $R = Statistics::R->new();

$R->send(q{ library(ggplot2) });
$R->send(qq{ sences <- c($sence) });
$R->send(qq{ counts <- c($count) });
$R->send(q{ df<- data.frame(Sence = sences, length = counts )});
$R->run(q{ g <- ggplot(df, aes(x=Sence, y=length, fill=Sence)) });
$R->run(q{ g <- g + geom_bar( width = 0.8, stat = "identity") });
$R->run(q{ png(width=1000, height=500) });
$R->run(q{ plot(g) });
$R->run(q{ dev.off() });


$R->stop();


