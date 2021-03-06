#!/usr/bin/perl
use strict;
use warnings;

# Author: Amandeep Chhabra
# 
#

my $dir_wddl="/user2/spring13/asc2171/avlsi/project/ELEN6321/dc_shell_WDDL";
my $subckt_dir="/user2/spring13/asc2171/avlsi/project/ELEN6321/simulation_vlsi/lib";
my $subckt_name="subckts.sp";
my $filename="aes_xor";
# Please enter name of input file to parse data 
my $inputfile = "$dir_wddl/netlist/$filename.nl.v";
my $norminputfile="$dir_wddl/spice_generated/inter/norml_$filename.nl.v";
my $outFilename="$dir_wddl/spice_generated/out_$filename.sp";
my $netlistv="$subckt_dir/$subckt_name";
my $charmatch="wire";

open my $infile, $inputfile or die "Could not open $inputfile: $!";
open my $netlfile, $netlistv or die "Could not open $netlistv: $!";

open (my $outfile,'>',$norminputfile);
open (my $out,'>',$outFilename);
my $endingVarName="alter#";
my $indx;
my $exist;
my $prevColon;

my @netnames; # name of nodes generated by synthesis tool
my @portnames;	# name of ports similar to subckt module
my @modulename; #store name of modules from verilog netlist to compare with 
my $sizeNets;	# using dynamic 2d array so arraySize1 and arraySize2 to get dimensions of array
$sizeNets=-1;
my $argvSize; # to get number of variables passed to this file
	
my $indexsearch;
$indexsearch=0;
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
my @libmod;
my @libvarcount;
my $libindex;
$libindex=-1;
# Variables to perform loop operations
my $i;
my $j;
my $k;

$indx=0;
$i=0;$j=0;$k=0;
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
			$libmod[$libindex]=$varTest[1];
			for ($i=0;$i<$varTestSize-2;$i++)
			{
				$libvar[$i][$libindex]=$varTest[$i+2];
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
			if($varTest[$i] eq $charmatch)
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
		my $list=split(' ',$inputline);
		$varTestSize=$#varTest +1;
		if($varTestSize>0)
		{
			if($prevColon == 1)
			{
				#printf $varTest[0];
				
			}
			$netlist =~ s/\[//g;
			$netlist =~ s/\]//g;
			#$netlist= ~tr/\[//d;
					#while ($netlist =~m/\((\w+)\)/g) {
					#while ($netlist =~m/\(([A-Za-z0-9]+)\)/g) {
			# Printing varibles associated with subckt module		
			#while ($netlist =~m/\.(.+?)\(/g) {
	 		#	print" $1";
			#}	
		
			# Printing varibles associated with netlist pins generated module
			#while ($netlist =~m/\((\w+)\)/g){
	 		#	print" $1";
			#}	
			chomp($netlist);
			$netlist=~ s/(^\s+|\s+$)//g;
			#printf $netlist;
			printf $outfile $netlist;
			if($netlist =~ m/;/) { 
				#printf "\n";
				printf $outfile "\n"; 
				$prevColon=1;		
			}
			else{
				$prevColon=0;
			}	
		}
	}
}
	
my $modulecount;
$modulecount=0;
close $outfile;
open my $norminfile, $norminputfile or die "Could not open $norminputfile: $!";
while( my $inputnormline = <$norminfile>)  
{
	my $netl=$inputnormline;
	@varTest=split(' ',$netl);
	if($varTest[0] eq "endmodule")
	{
		last;
	}
	#printf "$varTest[0] ";
	$sizeNets++;
	$modulename[$sizeNets]=$varTest[0];
	
	$k=0;
	$j=0;
	#print net names
	while ($netl =~m/\((\w+)\)/g){
		#print" $1";	
		$netnames[$j][$sizeNets]=$1;
		$j++;
	}	
	#print node names
	while ($netl =~m/\.(.+?)\(/g) {
		#print" $1";
		$portnames[$k][$sizeNets]=$1;
		$k++;
	}	
	#printf "\n";
	for($i=0;$i<=$libindex;$i++)
	{
		if($modulename[$sizeNets] eq	$libmod[$i])
		{
			$indexsearch=$i;
			#printf "found string \n";
			last;
			
		}
	}
	$modulecount++;
	printf "x$modulecount$modulename[$sizeNets]";
	printf $out "x$modulecount$modulename[$sizeNets]";	
	my $p;
	my $arbitnode;
	my $matchfound;
	$arbitnode=0;
	#printf $libvarcount[$indexsearch];	
	for($i=0;$i<$libvarcount[$indexsearch];$i++)
	{	
		printf " ";
		printf $out " ";
		$matchfound=0;
		#printf "$libvar[$i][$indexsearch] \n";
		for ($p=0;$p<$k;$p++)
		{
			
			if($libvar[$i][$indexsearch] eq $portnames[$p][$sizeNets])
			{
				$matchfound=1;
				#printf "$i $p "; 
				printf $netnames[$p][$sizeNets];
				printf $out $netnames[$p][$sizeNets];	
			}
		}
		if($matchfound ==0)
		{
			printf "nett_$arbitnode" ;
			printf	$out "nett_$arbitnode";
			$arbitnode++;
			#last;
		}
		
	}
	printf " gnd vdd";
	printf $out " gnd vdd";
	printf " $modulename[$sizeNets]";
	printf $out " $modulename[$sizeNets]";	
	printf "\n"; 
	printf $out "\n";
	
	
}

close $norminfile;


close $netlfile;
close $infile;
close $outfile;
#close $libfile;
