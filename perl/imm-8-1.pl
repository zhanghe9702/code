#!/usr/bin/env perl
use strict;
use warnings;
use IO::File;
use IO::Scalar;

my @days = qw(mon tus wes thu fri sat sun);
my $sel = shift @ARGV or die "$! \n";

my $fh = IO::File->new('oneweek.txt','>');
my $str = '';
$str = IO::Scalar->new();

if ($sel eq 'file') {
    print $fh $_ foreach @days;
    
}
if ($sel eq 'str') {
    
    print STDOUT  "@days";

    print $str  "@days";
    
}


