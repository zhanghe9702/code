#!/usr/bin/env perl
#
use strict;
use warnings;
use v5.14;

say "This is simulate shell.";
print "Perl>";
while (<>) {
    my $cmd = chomp;
    eval $cmd;
    print STDERR "$@" if $@;
    print "Perl>";
}

