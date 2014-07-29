#!/bin/bash

while : 
do
	echo -e time:`date '+%Y-%m-%dT%H:%M:%S%z'`"\t"date:`date` >> /tmp/sample-ltsv.log
	echo -e [`date '+%Y-%m-%dT%H:%M:%S%z'`]"\t"`date`         >> /tmp/sample-tsv.log
	sleep 1
done
