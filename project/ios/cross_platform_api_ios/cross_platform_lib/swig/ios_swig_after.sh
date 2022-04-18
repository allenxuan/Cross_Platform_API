#!/bin/bash

echo "***start executing ios_swig_after.sh"

currentDir="$PWD"
echo $currentDir

includeDir="${currentDir}/../../../../../include"
echo $includeDir

## declare an array variable
declare -a files=(
"$includeDir/external_layer/cross_platform_api.h"
"ios_api.i"


"$currentDir/gen/CrossPlatformApi_proxy.h"
"$currentDir/gen/CrossPlatformApi_proxy.mm"
"$currentDir/gen/CrossPlatformApi_wrap.h"
"$currentDir/gen/CrossPlatformApi_wrap.mm"
)

## now loop through the above array
for a_file in "${files[@]}"
do
   echo "$a_file"
   # or do whatever with individual element of the array
   sed -i '' 's/__L__/</g' $a_file
   sed -i '' 's/__R__/>/g' $a_file
done

echo "***end executing ios_swig_after.sh"