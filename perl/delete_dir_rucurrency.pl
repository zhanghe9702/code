#!/usr/bin/perl
use File::Find;
use strict;
@ARGV = qw(/root/misc1) unless @ARGV;
sub wanted_func{
    if (!-l && -d _) {
        rmdir ($_) or warn "remove dir failed";
    }
    if (-f _) {
        unlink($_) or warn "remove file failed";
    }
}
finddepth \&wanted_func, @ARGV;
