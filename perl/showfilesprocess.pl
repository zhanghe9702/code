#!/usr/bin/perl
use Text::Wrap;
my $lsofexe = '/usr/bin/lsof';
my $lsofflags = '-FLotn';
open my $LSOFPIPE ,'-|',"$lsofexe $lsofflags" or die "can't open pipe";
while ( my $lsof = <$LSOFPIPE>) {
    print $lsof;
}
