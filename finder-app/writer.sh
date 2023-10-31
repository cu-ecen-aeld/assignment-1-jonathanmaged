#!/bin/bash 

path="$1"
writestr="$2"
dir=$(dirname "$path")
filename=$(basename "$path")

if [ $# -ne 2 ]; then 
   echo "Error: Missing arguments. Please specify both the writefile and writestr."
   exit 1 
fi

if [ ! -d "$dir" ]; then
   mkdir -p "$dir"
   touch "$path"
fi

 echo "$writestr" > "$path"
