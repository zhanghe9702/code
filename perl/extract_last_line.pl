#!/usr/bin/perl

open(FH,"/etc/apache2/apache2.conf");
my @lines = <FH>;
print @lines[-1];

