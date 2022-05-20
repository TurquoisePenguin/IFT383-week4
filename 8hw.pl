#!/usr/bin/perl

while (<>) {
	#security group is found from string index[3]->first comma
	print substr($_,3,index($_,",")-3)."\n";
	chomp;
}
