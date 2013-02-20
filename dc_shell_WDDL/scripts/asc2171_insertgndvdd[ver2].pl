#!/usr/bin/perl
use strict;
use warnings;

# This scripts read subckt file from library netlist, generates a new file where each subckt module as VSS and VDD as pins.
# it also adds an extra line in the begining of each subckt modile which will be used by gen_spice file.pl

# Please enter name of input file to parse data 
my $inputfile = "/home/amandeep/subckt_library/ibm13rflpvt_custom.sp";
my $outFilename="/home/amandeep/subckt_library/ibm13rflpvt_custom[modified].sp";
my $netlistv="/home/amandeep/subckt_library/ibm13rflpvt_custom.sp";
#my $netlistv="lfsr1.nl.v";
my $library="lib.sp";

open my $infile, $inputfile or die "Could not open $inputfile: $!";
open my $netlfile, $netlistv or die "Could not open $netlistv: $!";
#open my $libfile, $library or die "Could not open $library: $!";

open (my $outfile,'>',$outFilename);
my $endingVarName="alter#";
my $indx;
my $exist;
my $prevColon;

my @array; # array where parsed data is stored
my @indexArray;	
my $arraySize;	# using dynamic 2d array so arraySize1 and arraySize2 to get dimensions of array
my $arraySize2;
my $argvSize; # to get number of variables passed to this file
	
# used to  get variables names and values from data input file
my @varName;

# To Keep track of number and groups of variables
my $countVarLines;
my $lineCounter;
my $variableCounter;

# To find location of alter#
my $varNameSize;
my @varTest;
my $varTestSize;
my $endVarLocation;
my $netlist;

# save variables names for each cell from standard cell library
my @libvar;
my @libvarcount;
my $libindex;
# Variables to perform loop operations
my $i;
my $j;
my $k;
my $startLine;

$indx=0;
$startLine=3;
$variableCounter=0;
$i=0;$j=0;$k=0;
$arraySize=0;
$exist=0;
$prevColon=0;
$libindex=0;

while( my $inputline = <$infile>)  
{
    @varTest=split(' ',$inputline);
	$varTestSize=$#varTest +1;
	if($varTestSize>0)
	{
		if($varTest[0] eq ".SUBCKT")
		{
			for ($i=0;$i<$varTestSize-1;$i++)
			{
				$libvar[$i][$libindex]=$varTest[$i+1];
				printf "$libvar[$i][$libindex] ";										
			}
			$libvarcount[$libindex]=$varTestSize-2;
				#print "$libvarcount[$libindex] \n";
				print "\n";
			$libindex++;

			printf $outfile "*";
			for ($i=0;$i<$varTestSize;$i++)
			{
				printf $outfile "$varTest[$i] ";										
			}
			printf $outfile "\n";

			for ($i=0;$i<$varTestSize;$i++)
			{
				printf $outfile "$varTest[$i] ";										
			}
			printf $outfile "VSS VDD\n";
		
		}
		else
		{
			for ($i=0;$i<$varTestSize;$i++)
			{
				printf $outfile "$varTest[$i] ";										
			}
			printf $outfile "\n";	
		}
		if($varTest[0] eq ".ENDS")
		{
			#last;
		}

	}
	else
	{
		printf $outfile "\n";
	}
	
}



close $netlfile;
close $infile;
close $outfile;
#close $libfile;
