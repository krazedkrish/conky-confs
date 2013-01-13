#!/bin/bash

echo > /tmp/conky.elog
cd conkyrc
for i in c*; do
    if [ -d "$i" ]; then
	cd $i;
	echo $i >> /tmp/conky.elog
	conky -c "./main.rc" 2>> /tmp/conky.elog & 
	cd ..
    fi
done
