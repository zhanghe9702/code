#!/usr/bin/perl
#
use IO::Socket;

$server = new IO::Socket (Localport => 80,\
                        Type => SOCK_STEAM,\
                        Protocol => getprotobyname('tcp'),\
                        Reuse => 1,\
                        Listen => 10) or die "can't open server";

while ($client = $server->accept()) {
    ;
}
close $server;

                    
