package More 0.99;
my $oldfh;
BEGIN {
    open(OUTF, '|-',"/bin/more") or die "$!";
    $oldfh = STDOUT;
    select OUTF;

}
END {
    close(OUTF);
    select $oldfh;
} 
1;

__END__
