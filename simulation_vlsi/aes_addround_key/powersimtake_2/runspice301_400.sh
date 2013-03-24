#!/bin/bash
# To run bash script use following command
# ./runspice301_400.sh 2>&1 | tee logfile_301_400.txt
a="addround_16units"
sp=".sp"
lis=".lis"

for i in {301..400}
do
spicefile=$a$i$sp;
lisfile=$a$i$lis;
	echo "hspice $spicefile > $lisfile";
   echo "$(hspice $spicefile > $lisfile)";
done
