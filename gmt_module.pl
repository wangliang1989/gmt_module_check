#!/usr/bin/env perl
use strict;
use warnings;

my $version = `gmt --version`;
chomp $version;
mkdir $version;
my @module = split m/\n/, `gmt --show-modules`;
foreach (@module) {
    print "$_\n";
    print "gmt $_ --help 2> $version/$_.txt\n";
}