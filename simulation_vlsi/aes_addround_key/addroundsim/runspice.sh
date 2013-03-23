#!/bin/bash
# To run bash script use following command
# ./runspice.sh 2>&1 | tee my.log
a="addround_16units"
sp=".sp"
lis=".lis"

for i in {200..400}
do
spicefile=$a$i$sp;
lisfile=$a$i$lis;
	echo "hspice $spicefile > $lisfile";
   echo "$(hspice $spicefile > $lisfile)";
done
