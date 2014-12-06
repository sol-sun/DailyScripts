#!/usr/bin/env perl

use strict;
use warnings;
use XML::Simple;
use Encode;
use Data::Dumper;

binmode(STDOUT, ":utf8");

my $xml = XML::Simple->new;

my $data = $xml->XMLin('questionSF.xml');

$data = $$data{'lin:language'};


my @CSV_Text;

foreach my $key1( keys %$data ){
  ## $key1 = languages
  #  foreach my $key2 ( keys %{$$data{$key1}}){
    ##key2
    ##>text -> language that is called by $key1 users
  ##>compound-text -> question
  
    my @Question_LEFT =
      map { $$data{$key1}{'lin:text'}{ $_->[0]}{'content'} }
      sort{ $a->[1] <=> $b->[1]}
      map{ [$_, /^SF(\d+)/]}
      grep {/^SF/ && /LEFT$/} keys %{$$data{$key1}{'lin:text'}};

    my @Question_RIGHT =
      map { $$data{$key1}{'lin:text'}{ $_->[0]}{'content'} }
      sort{ $a->[1] <=> $b->[1]}
      map{ [$_, /^SF(\d+)/]}
      grep {/^SF/ && /RIGHT$/} keys %{$$data{$key1}{'lin:text'}};

    
    $CSV_Text[0] .= qq(\t$key1\t$key1);
    
    for(my $i=1;$i<=scalar(@Question_LEFT);$i++){
      $CSV_Text[$i] .= qq(\t$Question_LEFT[($i-1)]\t$Question_RIGHT[($i-1)]);
    }


}


foreach(@CSV_Text){
  print $_;
  print "\n";
}
