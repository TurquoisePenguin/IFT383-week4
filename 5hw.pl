#!/usr/bin/perl

$sum = 0;
while (<>) {
	my @line = split(/,/,$_);
	foreach $number(@line){
		$sum+=$number;
	}
	chomp;
}
print $sum."\n";
