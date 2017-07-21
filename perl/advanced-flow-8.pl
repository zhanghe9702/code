#!/usr/bin/env perl
use strict;
use warnings;

use v5.14;
my @dirs = split /:/, $ENV{'PATH'};
foreach my $dir (@dirs) {
    -e $dir and print "$dir can be excute\n";
}



