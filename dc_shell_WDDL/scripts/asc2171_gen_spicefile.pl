#!/usr/bin/perl
use strict;
use warnings;

# Please enter name of input file to parse data 
my $inputfile = "/home/amandeep/Downloads/lfsr1.nl.v";
my $outFilename="/home/amandeep/ELEN6321/dc_shell_WDDL/spice_generated/netlist_out.sp";
my $netlistv="/home/amandeep/subckt_library/ibm13rflpvt_custom[modified].sp";
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

# To find number line where all the wire connections are mentioned *.nl.v
# to located where netlist starts
my $wireline;
my $colonline;
my $startline;
$wireline=0;
$colonline=0;
$startline=0;




# save variables names for each cell from standard cell library
my @varTest;
my $varTestSize;
my @libvar;
my @libvarcount;
my $libindex;
$libindex=-1;
# Variables to perform loop operations
my $i;
my $j;
my $k;

$indx=0;
$i=0;$j=0;$k=0;
$arraySize=0;
$exist=0;
$prevColon=1;

# storing variables from library subckts into libvar array and number of I/O for each subckt into libvarcount
while( my $inputline = <$netlfile>)  
{
    @varTest=split(' ',$inputline);
	$varTestSize=$#varTest +1;
	if($varTestSize>0)
	{
		if($varTest[0] eq "*.SUBCKT")
		{	
			$libindex++;
			for ($i=0;$i<$varTestSize-1;$i++)
			{
				$libvar[$i][$libindex]=$varTest[$i+1];
				#printf "$libvar[$i][$libindex] ";										
			}
			$libvarcount[$libindex]=$varTestSize-2;
				#print "$libvarcount[$libindex] \n";
				##print "\n";
			

		
		}
		if($varTest[0] eq ".ENDS")
		{
			#last;
		}
	
	}
	
}


while( my $inputnetline = <$infile>)  
{

	@varTest=split(' ',$inputnetline);
	$varTestSize=$#varTest +1;
	if($varTestSize >0)
	{
		for ($i=0;$i<$varTestSize;$i++)
		{
			printf "$varTest[$i] " ;
			if($varTest[$i] eq "wire")
			{
				$wireline=1;
			}	
										
		}
		printf "\n";
		if( $wireline==1)
		{
			for ($i=0;$i<$varTestSize;$i++)
			{
				if ($varTest[$i] =~ m/;/) {
	  				print "match \n";
					$colonline=1;
					$startline=$.;
				}	
			}
		}
		if($colonline==1)
		{
			last;
		}
	}

}
close $infile;
open $infile, $inputfile or die "Could not open $inputfile: $!";
while( my $inputline = <$infile>)  
{
	if($.>$startline+1)
	{
		my $netlist=$inputline;
		#printf $netlist;
		@varTest=split(' ',$netlist);
		$varTestSize=$#varTest +1;

		if($prevColon == 1)
		{
			printf $varTest[0];
				
		}
		$netlist =~ s/\[//;
		$netlist =~ s/\]//;
				#while ($netlist =~m/\((\w+)\)/g) {
				#while ($netlist =~m/\(([A-Za-z0-9]+)\)/g) {
		# Printing varibles associated with subckt module		
		while ($netlist =~m/\.(.+?)\(/g) {
 			print" $1";
		}	
		
		# Printing varibles associated with netlist pins generated module
		while ($netlist =~m/\((\w+)\)/g){
 			print" $1";
		}	
		
		if($netlist =~ m/;/) { 
			printf "\n"; 
			$prevColon=1;		
		}
		else{
			$prevColon=0;
		}	

		
	}
}
	


close $netlfile;
close $infile;
close $outfile;
#close $libfile;
