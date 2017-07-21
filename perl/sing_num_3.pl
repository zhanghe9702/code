#!/usr/bin/env perl
use strict;
use warnings;

my %num_cnt;
my @cnt_arr;

sub stat_num_cnt{
    my $target_ref = shift;
    foreach my $elem (@$target_ref){
        $num_cnt{$elem}++;
    }
    foreach my $key (%num_cnt) {
        push @cnt_arr, $key if $num_cnt{$key} == 1;
    }
     
}
my $tst_ref = [1,2,1,3,2,5];
stat_num_cnt($tst_ref);

print "@cnt_arr";

