#!/usr/bin/env perl
use strict;
use warnings;   

use v5.14;

my $dir = $ENV{'PATH'};
map {say ;} sort ( split ':',$dir );
