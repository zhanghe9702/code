#!/usr/bin/env perl


use strict;
use warnings;
open my $fh, '+<', "conf.yaml" or die "can't open file";
my @lines = <$fh>;
foreach my $line (@lines) {
    $line =~ s/(az_rp[1-2]\: )([^,]+)/$1."all_cpi_zone"/ge;
    $line =~ s/(az_sfo[1-2]\: )([^,]+)/$1."all_cpi_zone"/ge;
    $line =~ s/(fpp_num\: )([^,]+)/$1."3"/ge;
    $line =~ s/(gateway\: )([^,]+)/$1."10.130.36.144"/ge;
    $line =~ s/(mgmt\: )([^,]+)/$1."10.130.36.145\/31"/ge;
    $line =~ s/(sevgroup_rp\: )([^,]+)/$1."vwmg63-9"/ge;
    $line =~ s/(sevgroup_sfo\: )([^,]+)/$1."vwmg63-9"/ge;
    $line =~ s/(type\: )([^,]+)/$1."mpls"/ge;
    $line =~ s/(vrps\: )([^,]+)/$1."2"/ge;
    $line =~ s/(vsfos\: )([^,]+)/$1."2"/ge;
    print $line;
}
seek ($fh, 0, 0);
print $fh, @lines;
close $fh;

