#!/bin/bash

if [ ! -d logs ]
then
        mkdir logs
fi

pids=$(ps -e -o pid --sort -size | grep [0-9] | head)

for pid in $pids
do
	p_name=$(ps -p $pid -o comm=)
	date_time=$(date +%F,%H:%M:%S)
	echo $date_time >> logs/$p_name.log
done
