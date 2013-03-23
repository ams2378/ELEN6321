#!/bin/bash
a="addround_16units"
sp=".sp"
lis=".lis"

for i in {1..4}
do
spicefile=$a$i$sp;
lisfile=$a$i$lis;
   echo "hspice $spicefile > $lisfile";
done
