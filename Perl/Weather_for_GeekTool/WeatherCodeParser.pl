#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use Storable;
use File::Basename;

my (@weather_list, $success_flag);

my $sh_script = q(curl --silent "http://xml.weather.yahoo.com/forecastrss?p=JAXX0085&u=c" | grep -E '(Current Conditions:|C<BR)' | sed -e 's/Current Conditions://' -e 's/<br \/>$//' -e 's/<b>//' -e 's/<\/b>//' -e 's/<BR \/>//' -e 's/<description>//' -e 's/<\/description>//');

my $curl = `$sh_script`;

unless($curl){
  print "Lost Connection.\nBe calm and study Physics.";
  exit(1);
}


my ($Today_weather, $Today_temperature);

if(trim($curl) =~ m/([^,]+),(.+)/i){
  $Today_weather = trim($1);
  $Today_temperature = trim($2);
}

for my $weather (@weather_list){
  if( $weather eq $Today_weather ){
    $success_flag = 1;
  }
}


if($success_flag == 1){
  print "$Today_weather, $Today_temperature";
}else{
  die "Weather not founded";
}

##################
##  Subroutine  ##
##     and      ##
## Weather Code ##
##################

sub trim {
  my $val = shift;
  $val =~ s/^\s*(.*?)\s*$/$1/;
  return $val;
}


BEGIN{
  #  data pass ("$0" or "__FILE__" are this file name)
  my $cdir = dirname($0);
  my $ndata = "$cdir".'/.Weather_List';
  #.
  
  ## Load Weather list
  eval{
    @weather_list = @{retrieve($ndata)};
  };
  
  if($@){
    die "[error]$@";
  }
  ##
};
