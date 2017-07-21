#!/usr/bin/env perl
use strict;
use warnings;

use v5.14;
my @nums = ();
my $sum = 0;
my $ave = 0;
my $min = 0;
my $max = 0;
while (<>) {
    chomp ;
    last if /^quit$/;
    next unless /^\d+$/;
    push @nums,$_;

} continue {
    print "wrong input \n"
}

say ++$#nums;
map {   $sum += $_;     }  @nums ;
say $sum;
say $sum / ++$#nums;




