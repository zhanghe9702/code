#!/usr/bin/perl
use IO::Socket;

%sockets = ();
for (my $i = 0; $i < 10000; $i++) {
    my $connect_to_serv = IO::Socket::INET->new(Type => SOCK_STREAM,\
            PeerAddr => 'localhost',\
        PeerPort => 16000) or die "$@ \n";
    $sockets{$i} = $connect_to_serv;
}

    


