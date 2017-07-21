#!/usr/bin/env perl
use strict;
use warnings;

use File::Spec;
use Cwd;
use v5.14;

my $current_dir = File::Spec->curdir();
opendir CURDIR,"$current_dir" or die "$!.\n";
while (readdir CURDIR) {
    next if  /^\.$/;
    next if  /^\.\.$/;
    say (' ' x 4,$_);

}
close(CURDIR);

