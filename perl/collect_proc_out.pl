#!/usr/bin/perl
use Getopt::Long;
my $prog = $ARGV[0];
my @args = shift @ARGV; 
#$output = `$prog @args`;
#@output = `$prog @args`;
#print @output;
open(FILE,"$prog @args |") or die "can't open file";
while (<FILE>) {
    $output .= $_;
}
print $output;
close(FILE);
