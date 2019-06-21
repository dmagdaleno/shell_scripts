#!/bin/bash

cd ~/work/shell_scripts/images

if [ ! -d png ]
then
	mkdir png
fi

for file in *.jpg
do
	file_name=$(ls $file | awk -F. '{ print $1 }')
	convert $file png/$file_name.png
done
