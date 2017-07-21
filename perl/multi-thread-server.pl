#!/usr/bin/perl
#
use strict;
use warnings;
use threads;
use IO::Socket;
my $listen_port = shift || 16000;
my $handle = IO::Socket::INET->new(Localport => $listen_port,\
        Type => SOCK_STREAM,\
        Blocking => 1,\
        Proto => 'tcp',\
        Reuse => 1,\
        Listen => 10) or die "$@ \n";
sub handle_client_request {
        my $socket = shift;
        my $output = shift || $socket;
        my $exit = 0;
        while (<$socket>) {
                print $output $_;
                last if $exit;
        }
}
while (my $socket = $handle->accept()) {
        async(\&handle_client_request,$socket)->detach;
}
print "can't reached \n";
