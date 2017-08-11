#!/usr/bin/env perl

use strict;
use warnings;

local $/;
open my $fh, '<', './listaz.txt' or die "......";
my $azinfos = <$fh>;
my $clr_az_pattern = '(all_cpi_zone|rp_orch_zone|sfo_orch_zone|geo1_orch_zone|geo2_orch_zone)';
my @clr_az_infos = ($azinfos =~ /$clr_az_pattern/g);
if (@clr_az_infos) {
foreach my $az (@clr_az_infos) {
    #$self->ats_send("deleteAZ $az", '25', "Delete AZ $az success");
    print $az , "\n";
}   
}   
