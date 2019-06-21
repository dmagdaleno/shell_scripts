#!/bin/bash

convert_images(){
	cd ~/work/shell_scripts/images

	if [ ! -d $2 ]
	then
		mkdir $2
	fi

	for file in *.$1
	do
		local file_name=$(ls $file | awk -F. '{ print $1 }')
		convert $file $2/$file_name.$2
	done
}

if [ ! -d logs ]
then
        mkdir logs
fi

convert_images $@ 2> logs/errors.log

