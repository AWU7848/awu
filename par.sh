#!/bin/bash
parted /dev/sdb mklabel gpt
for((i=0;i<5;i++))
do
        x=$(($i+1))
        parted /dev/sdb mkpart $x "$i"G "$x"G -s
done
partprobe
mkdir /mnt/sdb{1..5}
for i in 1 2 3 4 5
do
        mkfs.xfs  /dev/sdb"$i"
        #mount /dev/sdb"$i" /mnt/sdb"$i"/
done
