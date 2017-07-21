#!/usr/bin/perl
use POSIX qw(:sys_wait_h);
my $prog = $ARGV[0];
print $prog;
shift @ARGV;
pipe(README, WRITEME);
if ($pid = fork()) {
    $SIG{CHILD} = sub {
        1 while (waitpid(-1 , WNOHANG) > 0);
    }; 
    close(WRITEME);
} else {
    die "fork error" unless defined ($pid);
    open(STDOUT,">&= WRITEME");
    close(README);
    print @ARGV;
    exec($prog, @ARGV);
}
while(<README>) {
    push(@str,$_);
}
print @str;
close(WRITEME);




