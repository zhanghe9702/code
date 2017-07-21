#!/usr/bin/env perl
use strict;
use warnings;

use Socket;
socket(my $client_sock,PF_INET,SOCK_STREAM,getprotobyname('tcp'));
$serv_addr = gethostbyname('www.zhanghe.com');
print $serv_addr;
$serv_port = 80;
$paddr = sockaddr_in($serv_port, $serv_addr);

connect($client_sock, $paddr) or die "can't connect to remote addr";

print $client_sock, "please responese to me";


close($client_sock);

