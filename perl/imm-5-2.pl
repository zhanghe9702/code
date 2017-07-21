#!/usr/bin/env perl

use strict;
use warnings;
my %hash;
my %sum;
sub show_host_info {
    open(my $fh, '<', './alpaca_files/ch04/coconet.dat') or die "$! \n";
    while (my $line = <$fh>) {
        next if $line =~ /^#.*$/;
        my ($src, $dst, $outbytes) = split ' ', $line;
        ${$hash{$src}}{$dst} += $outbytes ;
        $sum{$src} += $outbytes;
    }
    close($fh);
    foreach my $src (sort {$sum{$b} <=> $sum{$a}} keys %sum) {
        print $src. ":".$sum{$src}."\n";
        foreach my $dst (sort {${$hash{$src}}{$b} <=> ${$hash{$src}}{$a}} keys %{$hash{$src}}){
            print ' ' x 4;
            print $dst."=>".${$hash{$src}}{$dst}."\n";
        }
        
    }
}
show_host_info();


        
        

