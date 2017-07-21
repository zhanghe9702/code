#!/usr/bin/env perl
use strict;
use warnings;
use v5.14;

die "at least 2 args include file and lines." unless $#ARGV >= 2;
my $file = shift @ARGV;
open FH, '<', "$file";
my @lines = <FH>;
print $#lines;
my @seqs = @ARGV;
foreach my $seq (@seqs) {
    print $seq;
}

foreach my $seq (@seqs) {
    die "seq no must less than file length.\n" if $seq > ++$#lines;
}
foreach my $seq (@seqs) {
    say "$seq. ".$lines[$seq];
}


