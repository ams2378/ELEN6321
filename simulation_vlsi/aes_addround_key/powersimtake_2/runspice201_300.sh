#!/bin/bash
# To run bash script use following command
# ./runspice201_300.sh 2>&1 | tee logfile_201_300.txt
a="addround_16units"
sp=".sp"
lis=".lis"

for i in {201..300}
do
spicefile=$a$i$sp;
lisfile=$a$i$lis;
	echo "hspice $spicefile > $lisfile";
   echo "$(hspice $spicefile > $lisfile)";
done
