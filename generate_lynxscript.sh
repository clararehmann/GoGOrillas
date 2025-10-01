#!/bin/bash
# generates a lynx script to upload a ranked list file to GOrilla
# and save the link to results as a lynx bookmark

script=$1 # path to output lynx script
file=$2 # path to ranked gene list file

echo 'key <tab>' > $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key ^J' >> $script
echo 'key Up Arrow' >> $script
echo 'key Up Arrow' >> $script
echo 'key ^J' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
for i in `echo $file | fold -w1`; do
    echo "key $i" >> $script
done
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key ^J' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key <tab>' >> $script
echo 'key ^J' >> $script
echo 'key Up Arrow' >> $script
echo 'key Up Arrow' >> $script
echo 'key Up Arrow' >> $script
echo 'key Up Arrow' >> $script
echo 'key Up Arrow' >> $script
echo 'key Up Arrow' >> $script
echo 'key ^J' >> $script
echo 'key a' >> $script
echo 'key d' >> $script
echo 'key <space>' >> $script
for i in `echo $file | fold -w1`; do
    echo "key $i" >> $script
done
echo 'key ^J' >> $script
echo 'key q' >> $script
echo 'key y' >> $script