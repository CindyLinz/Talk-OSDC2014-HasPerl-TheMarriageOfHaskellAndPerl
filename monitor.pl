#!/usr/bin/perl

use strict;

my $last = 0;
while(1) {
    my $mtime = (stat($ARGV[0]))[9];
    if( $mtime > $last ) {
        $last = $mtime;
        system("hasperl $ARGV[0]");
        system('date');
    }
    select undef, undef, undef, .1;
}
