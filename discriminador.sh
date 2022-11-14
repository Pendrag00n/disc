#!/bin/sh
echo ""
read -p "Enter a file or directory name: " FILE
echo ""
size = du -s $FILE | cut -f1
if [ -f FILE ]; then
echo ""
echo "This is a file"
echo "$size"
echo ""
elif [ -d FILE ]; then
echo "This is a directory"
echo "$size"
else
echo "This is something else"
fi