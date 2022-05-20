#!/usr/bin/perl
use strict;
#Format CSV file and get low, high, and average score of each assignment

my $line=0;
my %low;
my %high;
while(<>){
	if ($line != 0){
		my @line=split(/,/,$_);
		#print '$low{@line[2]}='.$low{@line[2]}."\n";
		#print '@line[2]='.@line[2]."\n";
		if ( $low{@line[2]}==""||@line[3]<$low{@line[2]}) {
			$low{@line[2]}=@line[3];
		}

		if ( $high{@line[2]}==""||@line[3]>$high{@line[2]}) {
                        $high{@line[2]}=@line[3];
                }
#print $low{@line[2]}."\n";
	} else {
}
	chomp;
	$line++;
}

foreach my $key(keys%low){
	print "$key=".$low{$key}."\n";
}
foreach my $key(keys%high){
        print "$key=".$high{$key}."\n";
}

