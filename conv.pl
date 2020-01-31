#!/usr/bin/perl

# To use this. You need to run it on a file and output the 
# Example:
# perl conv.pl file.txt > output.txt

# Explanation:
# perl		- is to compile perl files
# conv.pl	- is or should be the name of this file
# file.txt	- is the name of the file you are parsing
# output.txt	- is the name of the file you want to send the information to

open(AB, $ARGV[0]);		# Opens the file and call it AB
while($line = <AB>) {		# get next line in file AB and set it to variable "line"
	# s/find/replace/g is for replacing patterns
	# s		- means substitute
	# find		- is a pattern you want to remove. It can be anything.
	# replace	- is a pattern you want to replace "find" with. It can be anything.
	# g		- means to target globally, so all instances
	$line =~ s/^\d+:\s//g;	# delete number followed by a colon at the begining of current line if it exists
	# ^	- means beginning of a line
	# /d	- means digit through 0-9
	# /d+	- means number, so while /d will find 123, it will treat each digit as a separate find
	# :	- is just the character ":", doesn't mean anything special
	# the reason why the "replace" pattern has nothing is so we can delete by replacing with nothing
	$line =~ s/‘/'/g;	# replace weird single quotes with normal single quotes in current line
	$line =~ s/’/'/g;	# replace weird single quotes with normal single quotes in current line
	$line =~ s/“/"/g;	# replace weird double quotes with normal double quotes in current line
	$line =~ s/”/"/g;	# replace weird double quotes with normal double quotes in current line
	print $line;		# print the current line
}
close(AB);	# close file
