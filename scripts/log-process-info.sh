#!/bin/bash

pids=$(ps -e -o pid --sort -size | grep [0-9] | head)

for pid in $pids
do
	printf '%s\n' $(ps -p $pid -o comm=)
done
