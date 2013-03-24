#!/bin/bash
# To run bash script use following command
# ./runspice1_200.sh 2>&1 | tee logfile_1_200.txt
a="addround_16units"
sp=".sp"
lis=".lis"

for i in {1..400}
do
spicefile=$a$i$sp;
lisfile=$a$i$lis;
	echo "hspice $spicefile > $lisfile";
   echo "$(hspice $spicefile > $lisfile)";
done
