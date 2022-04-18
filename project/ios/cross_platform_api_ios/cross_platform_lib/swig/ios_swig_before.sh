#!/bin/bash

echo "***start executing ios_swig_before.sh"

currentDir="$PWD"
echo $currentDir

includeDir="${currentDir}/../../../../../include"
echo $includeDir

## declare an array variable
declare -a files=(
"$includeDir/external_layer/cross_platform_api.h"
"ios_api.i"
)

## now loop through the above array
for a_file in "${files[@]}"
do
   echo "$a_file"
   # or do whatever with individual element of the array
   sed -i '' 's/std::shared_ptr<cross_platform_common::Data>>/std::shared_ptr__L__cross_platform_common::Data__R__>/g' $a_file
done

echo "***end executing ios_swig_before.sh"