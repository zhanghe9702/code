#!/usr/bin/env perl
use strict;
use warnings;
use File::Find;
use Time::Local;

sub gather_mtime_between {
    my ($time_start, $time_stop) = @_;
    my @mod_files;
    my $fun1 = sub {
        return unless -f $_;
        if ((stat $_)[9] > $time_start 
                and (stat $_)[9] < $time_stop) {
            push @mod_files, $_;
        }
    };
    my $fun2 = sub {
        return @mod_files;
    };
    return ($fun1, $fun2);
}
my ($sec, $min, $hour, $day, $mon, $year) = localtime;
my $stop = timelocal(0,0,0, $day, $mon, $year);
$day = $day - 3;
my $start = timelocal(0,0,0, $day, $mon, $year);
my ($fun1,$fun2) = gather_mtime_between($start,$stop);

find($fun1, '.');
my @files = $fun2->();
print foreach @files; 
