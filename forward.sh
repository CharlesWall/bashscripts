#!/bin/bash

if [[ -f ~/.future ]]; then
	path=$(tail -n 1 ~/.future)
	if [[ $path != "" ]]; then
		pwd >> ~/.history
		cd $path
		head -n -1 ~/.future > ~/.forward.sh.tmp
		mv ~/.forward.sh.tmp ~/.future
		
		rm ~/.forward.sh.tmp

		pwd2
	fi
fi