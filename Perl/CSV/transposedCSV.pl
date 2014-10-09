#!/usr/bin/env perl

use strict;
use warnings;
use Text::CSV_XS qw( csv );
use Data::Dumper;
use Getopt::Long;

## Options (Text::CSV_XS->new)
my $csv = Text::CSV_XS->new({ binary => 1, auto_diag => 1, blank_is_undef => 0 });
my (@file,$help);
GetOptions(
	   "file:s" => \@file,
	   "help" => \$help,
	  ) || die "Invalid options";

die &show_help('option') if $help;
die &show_help('missing') if @file < 2;

# Die if input filename extension is not '.csv'
for my $f (@file){
  die &show_help("notcsv") unless $f =~ m/\.csv$/i;
}
#.

##.

open my $file, "$file[0]" or die "Ennea.csv: $!";
binmode(STDOUT, ':utf8');

my $i = 0;
my @transposed_data;
while(my $row = $csv->getline($file)){
  for(my $j=0;$j<=$#$row;$j++){
    $transposed_data[$j][$i] = $row->[$j];
  }
  $i++;
}
close($file);

open my $out, '>', "$file[1]";

    for(my $i=0;$i<scalar(@transposed_data);$i++){
      my @rows;
      for(my $j=0;$j<scalar(@{$transposed_data[0]});$j++){
	push @rows, $transposed_data[$i][$j];
      }
      print $out scalar(join ',', @rows);
      print $out "\n";
    }

close($out);


#################
## Sub Routine ##
#################

sub show_help{
  my $help_doc;
  my $status_char = shift;

  if($status_char =~ m/missing/){
    $help_doc = q(
_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

      ERROR: Missing inputfile or output file or both

_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
		 );

  }elsif($status_char =~ m/notcsv/){
    $help_doc = q(
_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

  ERROR: input or output filename extension is not 'csv'

_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
		 );
  }


  $help_doc .= <<EOF;

This program outputs a transposition of row and column, from csv file

Usage:
       perl $0 [options]

Options:

       --help
       --file [inputfile] --file [outputfile] 

# file extension should be '.csv'

QUACK!!
EOF

  return $help_doc;
  
}

1;
