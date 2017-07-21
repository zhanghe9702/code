#!/usr/bin/env perl
use strict;
use warnings;
use v5.14;

die "must input file name \n" unless @ARGV;
local $/ = "\n\n";
while (<ARGV>) {
   chomp;
   say ">>>"."$_"."<<<"; 
}

