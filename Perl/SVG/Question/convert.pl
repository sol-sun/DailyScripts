#!/usr/bin/env perl

use strict;
use warnings;
use Image::LibRSVG;

my $rsvg = new Image::LibRSVG();

$rsvg->convert("1-1.svg", "1-1.png");
