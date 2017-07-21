#!/usr/bin/env perl
use strict;
use warnings;
use v5.14;
my $dir = shift or die "input \n";
chdir($dir) or die "wrrrr\n";
my @files = glob "*";
foreach my $x (@files) {
    say $x;
}


