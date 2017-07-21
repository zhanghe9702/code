#!/usr/bin/perl

use Socket;

@address = gethostbyname("localhost");
@address_ = map {inet_ntop($_)} @address[4 .. $#address];
foreach (@address_) {
    print ;
}
