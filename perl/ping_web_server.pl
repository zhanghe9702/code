#!/usr/bin/perl
#
use Net::Ping;

$handle = Net::Ping->new("syn");
$handle->hires();
@hosts = ("www.zhanghe.com", "bbs.zhanghe.com");
foreach my $host (@hosts) {
    $handle->ping($host);
}
while (my ($host, $rtt, $ip) = $handle->ack()) {
    printf "response from %s (%s) in %d \n", $host, $ip, $rtt ;
}

