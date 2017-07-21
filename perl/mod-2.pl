#!/usr/bin/env perl


use strict;
use warnings;
use v5.014;
use lib "/root/perl-sys/";
use Carp;
use CGI;
use More;

foreach my $key (keys %INC) {
    say $INC{$key} ;
}

