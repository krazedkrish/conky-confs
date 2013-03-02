#!/bin/bash

echo > /tmp/conky.elog
_my_name=`basename $0`
_my_path=`echo $0 | sed -e s/$_my_name//`conkyrc
cd $_my_path
for i in c*; do
    if [ -d "$i" ]; then
	cd $i;
	echo $i >> /tmp/conky.elog
	conky -c "./main.rc" 2>> /tmp/conky.elog & 
	cd ..
    fi
done
