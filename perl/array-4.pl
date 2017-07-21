#!/usr/bin/env perl
use strict;
use warnings;
use v5.14;
my @name = qw/yogi booboo grizzly rupert baloo teddy bungle care/;
$name[1] = 'greep';
push @name, 'frezeo';
foreach my $x (@name) {
    say $x;
}


