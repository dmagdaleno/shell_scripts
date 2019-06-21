#!/bin/bash

convert_image() {
	local path=$1
	local file=$(ls $path | awk -F. '{ print $1 }')
	convert $file.jpg $file.png
}

open_folder() {
	cd $1
	for file in *
	do
		local absolute_path=$(find ~/work/shell_scripts/images -name $file)
		if [ -d $absolute_path ]
		then
			open_folder $absolute_path
		else
			convert_image $absolute_path
		fi
	done
}

open_folder ~/work/shell_scripts/images

if [ $? -eq 0 ]
then
	echo 'All files successfully converted'
else
	echo 'Error converting files'
fi