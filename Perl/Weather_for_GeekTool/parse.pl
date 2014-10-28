#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use Storable;


my %weather;
open my $file, '<', "rawData.txt";

while(<$file>){
  chomp;

  if(trim($_) =~ m/\:.\s*'([^']+)',$/){
    my @text = split(/\|/, $1);
     map{ $weather{trim($_)}++} @text;
  }
  
}
close $file;

print Dumper [keys %weather];

exit;
$, = ",";
eval{
  store ([keys %weather], ".Weather_List");
};
if($@){
  die "[error]$@";
}


sub trim {
  my $val = shift;
  $val =~ s/^\s*(.*?)\s*$/$1/;
  return $val;
}


