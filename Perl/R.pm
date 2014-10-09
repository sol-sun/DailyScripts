#!/usr/bin/env perl
package R;

use strict;
use warnings;
use Statistics::R;
use Data::Dumper;
use Statistics::Lite qw(range mean variance stddev max min);

my $data = qq(c(1257637.28272058, 812046.918192461, 2166755.3133573, 2190857.647625, 449635.728754498, 1867414.38913404, 494063.050437505, 540981.315462338, 506110.317637428, 894973.247509885, 1611842.30080373, 679919.237492471, 1096585.80733817, 1005262.83854351, 719248.411739805, 377073.538479556, 414847.66772737, 400052.933645538, 925426.658220533, 694550.115789788, 670088.364236222, 670797.25792811, 579680.592926785, 594028.983242069, 488899.177377281, 818805.301369796, 2160039.87683448, 1797496.49368379, 895491.801089639, 669351.042801753, 1300081.46672649, 751854.631043877, 1369470.20187208, 818764.923193383));

my @data = (1257637.28272058, 812046.918192461, 2166755.3133573, 2190857.647625, 449635.728754498, 1867414.38913404, 494063.050437505, 540981.315462338, 506110.317637428, 894973.247509885, 1611842.30080373, 679919.237492471, 1096585.80733817, 1005262.83854351, 719248.411739805, 377073.538479556, 414847.66772737, 400052.933645538, 925426.658220533, 694550.115789788, 670088.364236222, 670797.25792811, 579680.592926785, 594028.983242069, 488899.177377281, 818805.301369796, 2160039.87683448, 1797496.49368379, 895491.801089639, 669351.042801753, 1300081.46672649, 751854.631043877, 1369470.20187208, 818764.923193383);

=pod
my $Statistics;
for(1..10000){
  ${Statistics}->{'min'} = min(@data);
  ${Statistics}->{'max'} = max(@data);
  ${Statistics}->{'stdev'} = stddev(@data);
  print Dumper $Statistics;
}
=cut
#&Generate_SF_Graph($data);

sub Base_Statistics{
  
  my @data = @_;
  my $Statistics;
  ${Statistics}->{'min'} = min(@data);
  ${Statistics}->{'max'} = max(@data);
  ${Statistics}->{'stdev'} = stddev(@data);
  return $Statistics;
  
}

sub Generate_SF_Graph{
  my $R = Statistics::R->new();
  $R->startR;
  
  my $data = shift @_;
  
  my $dir = shift @_;
  

  my @myname = qw(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34);
  
  unless(defined $data){
    die "Data not defined in R.pm file\n";
  }else{
    $data = 'c('.$data.')';
  }
  
  $R->run(qq| library(ggplot2) |);
  $R->set('myname', \@myname);
  $R->run(qq| df <- data.frame( Sence = $data, y = myname ) |);
  $R->run(qq| theme_set(theme_gray(base_size=12, base_family="serif")) |);
  $R->run(qq|p <- ggplot(df, aes(x=y,y=Sence )) + geom_bar(fill="#42AAC7",col="transparent",width=0.7, stat="identity") + ylab("") + xlab("") + theme(axis.ticks=element_blank(),axis.text.y=element_text(size=0),axis.text.x=element_text(size=0, angle = 65, hjust=1)) + scale_y_continuous(expand = c(0,0)) |);
  $R->run(qq|p <- p + theme(plot.background = element_rect(fill = "transparent", colour = "transparent"));|);
  $R->run(qq|p<- p + scale_y_continuous(breaks=NULL)|);
  $R->run(qq|p <- p + theme(axis.ticks = element_line(colour = 'white'))|);
  $R->run(qq| ggsave("$dir.png", p, family="serif", dpi=100, width=10, height=2.4, bg="transparent") |);
  $R->stopR();
}

1;

##Sences; 
## Relation => 7
## Effection => 6
## Motibation => 9
## Thinkingavility => 12
