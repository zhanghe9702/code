#!/usr/bin/perl
#use Autoclose;
open(CONFIG,"/root/.vimrc") or die "open vimrc failed";
while(<CONFIG>) {
    chomp; # no newline
    s/#.*//; # no comments
    s/^\s+//; # no leading white
    s/\s+$//; # no trailing white
    next unless length; # anything left?
    my ($var, $value) = split(/\s*=\s*/, $_, 2);
    $User_Preferences{$var} = $value;
}
foreach ( %User_Preferences ) {

    print ; 
    print "\n";
}
