package PrintSupport 0.99;
use strict;
use parent qw(Exporter);
our @EXPORT = qw(print_HP print_XEROX);
sub print_HP {
    print "name1.\n";
}
sub print_XEROX {
    print "name2.\n";
}



1;

__END__
