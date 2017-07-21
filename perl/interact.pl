#!/usr/bin/perl
my @first = (1, 2, 3);
my @second = (2, 3, 4);
my @firstonly = ();
my %seen = {};
@seen{ @second } = ();
foreach $item (@first) {
    push (@firstonly, $item) unless exist @seen{$item};
}

