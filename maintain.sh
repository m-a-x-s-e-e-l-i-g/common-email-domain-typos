#!/bin/bash

# Unify locale settings temporarily to make sort produce the same order
LC_ALL=C
export LC_ALL

# Converts uppercase to lowercase, sorts and removes duplicates
cat data.txt | tr '[:upper:]' '[:lower:]' | sort -f | uniq -i  > temp.txt
mv temp.txt data.txt

# rm temp.txt
echo "Done!"