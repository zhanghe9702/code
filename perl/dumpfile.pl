#!/usr/bin/perl 
use File::Spec;
my $path = File::Spec->catfile(qw{root misc});
my $curpath = File::Spec->curdir();
print $curpath;

