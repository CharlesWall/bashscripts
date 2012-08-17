#!/bin/bash

if [[ -f ~/.history ]]; then
	path=$(tail -n 1 ~/.history)
	if [[ $path != "" ]]; then
		pwd >> ~/.future
		cd $path
		head -n -1 ~/.history > ~/.back.sh.tmp
		mv ~/.back.sh.tmp ~/.history

		rm ~/.back.sh.tmp

		pwd2
	fi
fi