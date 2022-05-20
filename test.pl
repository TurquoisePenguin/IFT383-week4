#!/usr/bin/perl

use strict;
my $test = 0;
print $test;

sub Test{
	my $test = 1;
	print $test;
}

&Test;
