#!/usr/bin/perl
$tdir = shift || die "usage: $0 testdir";
print $tdir;
opendir(DH, $tdir);
while (defined($file = readdir(DH))) {
    next if /^\.\.?$/ or -B $file or -d $file;
    push @txtfiles, $file."\n";
}
print @txtfiles;
close(DH);

        
