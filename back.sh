#!/bin/bash

if [[ -f ~/.history ]]; then
	path=$(tail -n 1 ~/.history)
	if [[ $path != "" ]]; then
		pwd >> ~/.future
		cd $path
		tail -r ~/.history | tail -n +2 | tail -r > ~/.back.sh.tmp
		cat ~/.history
		echo -------
		cat ~/.back.sh.tmp

		mv ~/.back.sh.tmp ~/.history
		rm ~/.back.sh.tmp

		pwd2
	fi
fi
