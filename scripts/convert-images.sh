#!/bin/bash

cd ~/work/shell_scripts/images

if [ ! -d $2 ]
then
	mkdir $2
fi

for file in *.$1
do
	file_name=$(ls $file | awk -F. '{ print $1 }')
	convert $file $2/$file_name.$2
done
