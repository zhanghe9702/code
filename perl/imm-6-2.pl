#!/usr/bin/env perl
 
use strict;
use warnings;
use Storable;
my $hash_ref;
my $sum_ref;
sub show_host_info {
    eval { retrive $hash_ref,'./alpaca_files/ch04/hash'} ;
    if ( $@ ) { return $@; }
    eval { retrive $sum_ref,'./alpaca_files/ch04/sum'} ;
    if ( $@ ) { return $@; }
    open(my $fh, '<', './alpaca_files/ch04/coconet.dat') or die "$! \n";
    while (my $line = <$fh>) {
        next if $line =~ /^#.*$/;
        my ($src, $dst, $outbytes) = split ' ', $line;
        $hash_ref->{$src}{$dst} += $outbytes ;
        $sum_ref->{$src} += $outbytes;
    }
    store $sum_ref, './alpaca_files/ch04/sum';
    store $hash_ref, './alpaca_files/ch04/hash';
    close($fh);
    foreach my $src (sort {$sum_ref->{$b} <=> $sum_ref->{$a}} keys %$sum_ref) {
        print $src. ":".$sum_ref->{$src}."\n";
        foreach my $dst (sort {$hash_ref->{$src}{$b} <=> $hash_ref->{$src}{$a}} keys %{$hash_ref->{$src}}){
            print ' ' x 4;
            print $dst."=>".$hash_ref->{$src}{$dst}."\n";
        }
        
    }
}
show_host_info();


        
        

