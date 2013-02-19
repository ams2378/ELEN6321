#!/usr/bin/perl
use strict;
use warnings;

# Please enter name of input file to parse data 
my $inputfile = 'lfsr1.sp';
my $outFilename="asc2171_data.sp";
my $netlistv="/home/amandeep/ELEN6321/dc_shell_WDDL/netlist/dflipflop.nl.v";
#my $netlistv="lfsr1.nl.v";
my $library="lib.sp";

open my $infile, $inputfile or die "Could not open $inputfile: $!";
open my $netlfile, $netlistv or die "Could not open $netlistv: $!";
open my $libfile, $library or die "Could not open $library: $!";

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

while( my $libline = <$libfile>)  
{
    @varTest=split(' ',$libline);
	$varTestSize=$#varTest +1;
	if($varTestSize>0)
	{
		if($varTest[0] eq ".SUBCKT"){
			for ($i=0;$i<$varTestSize-1;$i++)
			{
				$libvar[$i][$libindex]=$varTest[$i+1];
				#printf "$libvar[$i][$libindex] ";										
			}
			$libvarcount[$libindex]=$varTestSize-2;
				#print "$libvarcount[$libindex] \n";
			$libindex++;
		}
	}
}



# Finding number of lines to find name of variables are variables stored
while( my $line = <$infile>)  
{
	if($.>=1)
	{
		@varTest=split(' ',$line);
		
		$varTestSize=$#varTest +1;
		#printf $varTestSize;
		#printf "\n";
		if($varTestSize > 0)
		{
			for ($i=0;$i<$varTestSize-1;$i++)
			{
				#printf $varTest[$i];
				#printf " ";

				print $outfile $varTest[$i];
				print $outfile " ";
			}
			print $outfile "gnd vdd ";
			print $outfile $varTest[$varTestSize-1];

			printf $outfile "\n";
			#printf "\n";

			#storing cells name in array to call from library
				
			for($j=0;$j<$arraySize;$j++)
			{
				if($array[$j] eq $varTest[$varTestSize-1])
				{
					$exist=1;
				}
			}
				
			if($exist)
			{
				#do nothing
			}
			else{
				$array[$indx]=$varTest[$varTestSize-1];
				$indx++;
				$arraySize++;
			}
			$exist=0;
		}
		else
		{
			print $outfile " ";
			printf $outfile "\n";
			print " ";
			printf "\n";
		}
		#last;

	}	
}

for($j=0;$j<$arraySize;$j++)
{
	printf $array[$j];
	printf "\n";
}


while( my $netvline = <$netlfile>)  
{
	if($.>=1)
	{
		$netlist=$netvline;
		#printf $netlist;
		#@varTest=split('',$netvline);
		my @dotpos;
		my $dotcount;
	
		my @openbrakpos;
		my $openbrakcount;

		my @closebrakpos;
		my $closebrakcount;
		$varTestSize=$#varTest +1;

		my $openbrak;
		my $closebrak;
		my $dot;
		$openbrak='(';
		$closebrak=')';
		$dot='.';
		$openbrakcount=0;
		$dotcount=0;
		$closebrakcount=0;
		;
		#while ($netlist =~m/\.(.+?)\(/g) {
		@varTest=split(' ',$netlist);
		if($prevColon eq 1)
		{
			printf $varTest[0];
			#$prevColon=0;
				
		}
		$netlist =~ s/\[//;
		$netlist =~ s/\]//;
				#while ($netlist =~m/\((\w+)\)/g) {
				#while ($netlist =~m/\(([A-Za-z0-9]+)\)/g) {
		# Printing varibles associated with subckt module		
		while ($netlist =~m/\.(.+?)\(/g) {
 			print" $1";
		}	
		print "\n";
		# Printing varibles associated with netlist pins generated module
		while ($netlist =~m/\((\w+)\)/g){
 			print" $1";
		}	
		
		if($netlist =~ m/;/) { printf "\n"; 
			#$prevColon=0;		
		}
		else{
			$prevColon=1;
		}
	}
	

}

close $netlfile;
close $infile;
close $outfile;
close $libfile;
