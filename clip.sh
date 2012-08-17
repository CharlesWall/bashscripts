#!/bin/bash

if [[ -d ~/.clipboard ]]; then
	rm -r ~/.clipboard
fi

mkdir ~/.clipboard

for arg;
do
	if [[ -f $arg ]]; then
		echo $arg is a file
		cp $arg ~/.clipboard/
	elif [[ -d $arg ]]; then
		echo $arg is a directory
		cp -r $arg ~/.clipboard/
	fi
done