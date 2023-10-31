#!/bin/bash

fileDir="$1"
pattern="$2"

if [ -z "$fileDir" ] || [ -z "$pattern" ]; then
   echo "Error: Missing parameters. Please specify both the directory and pattern."
   exit 1
fi

if [ ! -d "$fileDir" ]; then 
   echo "Error: $filesdir is not a valid directory."
   exit 1
fi
   
matchingLine=$( grep -r "$pattern" "$fileDir" | wc -l )
matchingFile=$(grep -rm 1 "$pattern" "$fileDir"  | wc -l) 
echo "The number of files are $matchingFile and the number of matching lines are $matchingLine " 
exit 0
