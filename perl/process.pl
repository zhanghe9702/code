#!/usr/bin/perl
use Proc::ProcessTable;
my $intval = 300;
my $tobj = new Proc::Processtable;
foreach my $process (@{ $tobj->table }) {
    print $process;
}

