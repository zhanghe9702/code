#!/usr/bin/perl
#
@matrix = ('111111', '222222', '333333');
my @sum_of_col = ();
foreach my $row (@matrix) {
    @single_elem_per_row = split //,$row;
        for ($i = 0; $i < $#single_elem_per_row; $i++) {
        $sum_of_col[$i] += $single_elem_per_row[$i];
    }
}
#foreach (@sum_of_col) {
    #print; 
#}
print while shift @sum_of_col;
