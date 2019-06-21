#!/bin/bash

IMAGE_PATH=~/work/shell_scripts/images

for image in $@
do
	convert $IMAGE_PATH/$image.jpg $IMAGE_PATH/$image.png
done
