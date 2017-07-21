#!/usr/bin/env perl
use strict;
use warnings;

use IO::File;

my $input = IO::File->new('input.dat', '<') or die "$@ \n" ;
my %file_hash;
while (<$input>) {
    my ($name, $data) = split /:/;
    my $fh = IO::File->new("$name.txt", '>');
    $file_hash{$name} = $fh unless exists $file_hash{$name};
    print $fh $data;
}


