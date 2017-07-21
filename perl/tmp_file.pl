#!/usr/bin/env perl

use strict;
use warnings;

$fh = IO::File->new_tmpfile
    or die "Unable to make new temporary file: $!";


