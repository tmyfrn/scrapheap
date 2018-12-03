#!/bin/bash

# check input argument
if [ -z "$1" ]
  then
    dir="*.jpg"
  else
    dir=$1
fi

echo $dir
# loop thru all image files and rename/sequence
#   no caps - no dashes - renumber contiguous - pad to 4 digits - add directory name to filename

SHOWNAME=spi
SHOTNAME=home
ELEMENTNAME=home_test_v1
RESOLUTION=misc
COLORSPACE=bg8

x=1
for file in $dir
do
    xpad=$(printf "%04d\n" $x)
    echo $file
    echo "$file" "${file/*.jpg/$ELEMENTNAME_$RESOLUTION_$COLORSPACE.$xpad.jpg}"
    x=$[$x + 1]
done
