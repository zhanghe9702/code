#!/usr/bin/env perl
use strict;
use warnings;
use IO::Dir;

my @dirs = @ARGV or die "$! no input \n";

foreach my $dir (@dirs) {
    my $dir_fh = IO::Dir->new("$dir") or die "$! open dir error\n";
    while ($dir_fh->read) {
        print ;
    }
    print "end of dir info\n";
}


