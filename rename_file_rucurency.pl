#!/usr/bin/perl
use File::Find;
@ARGV = ('/root/perl-sys/mysql') unless @ARGV;
sub rename_with_filter {
    my $op = shift or die "op not exsit!\n";
    die "no exsit any files" unless @_;
    foreach (@_) {
        my $oldname = $_;
        next if -d $oldname or -l $oldname;
        eval $op;
        die "$@" if $@;
        rename($oldname, $_) unless $oldname eq $_;
    }
}
sub add_filter_for_file {
    #case 1:
    #my $file = shift or warn "file not exsit\n";
    rename_with_filter('tr/A-Z/a-z/', $_);
    rename_with_filter('s/(\w+-\d+)(?:.*)(\.(wmv|avi|mp4|asf))/\1\2/g', $_);
} 

find(\&add_filter_for_file, @ARGV);


