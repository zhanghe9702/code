#!/usr/bin/env perl
use strict;
use warnings;

my @required = qw(preserver sunscreen water_bottle jacket);
my @gilligan = qw(red_shirt hat lucky_socks water_bottle);
my @professor = qw(sunscreen water_bottle slide_rule batteries radio); 
my @skipper = qw(blue_shirt hat jacket preserver sunscreen); 
my %all = 
( 'Gilligan' => \@gilligan,
    'Skipper'  => \@skipper,
    'Professor' => \@professor
);
sub check_required_items {
    my $person = shift;
    my $items_ref = shift;
    foreach my $item (@required) {
        unless (grep {$item eq $_} @$items_ref) {
            print "$person missing $item \n";
        }
    }
}
sub check_items_for_all {
    my $all_person_ref = shift;
    foreach my $person (keys %$all_person_ref) {
        check_required_items($person,$$all_person_ref{$person});
    }
}
sub check_param_trans {
    $_[0] = 'pre';
    print @required;
}
#check_items_for_all(\%all);
check_param_trans(@required);
