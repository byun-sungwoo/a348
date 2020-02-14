#!/usr/bin/perl

open(AB, $ARGV[0]);
while($line = <AB>) {
	$line =~ s/^\d+:\s//g;
	$line =~ s/‘/'/g;
	$line =~ s/’/'/g;
	$line =~ s/“/"/g;
	$line =~ s/”/"/g;
	print $line;
}
close(AB);
