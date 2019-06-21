#!/bin/bash

if [ ! -d logs ]
then
        mkdir logs
fi

pids=$(ps -e -o pid --sort -size | grep [0-9] | head)

for pid in $pids
do
	p_name=$(ps -p $pid -o comm=)
	p_size=$(ps -p $pid -o size=)
	p_size_mb=$(bc <<< "scale=2; $p_size/1024")
	date_time=$(date +%F,%H:%M:%S)
	echo $date_time,$p_size_mb MB >> logs/$p_name.log
done