#!/bin/bash

if [ -z "$1" ]
then
	echo bmk '<nickname>'
elif [ "$1" = "clear" ]
then
	echo \#!/bin/bash > ~/.bookmarks.sh
elif [ "$1" = "log" ]
then
	cat ~/.bookmarks.sh
else
	echo alias $1=\'cs $(pwd)\' >> ~/.bookmarks.sh
	. ~/.bash_profile 
fi
