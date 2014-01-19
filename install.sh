#!/bin/bash

alreadyinstalled=$(grep -F ". .binbash.sh" ~/.bash_profile)
if [ -z "$alreadyinstalled" ]
then
	echo binbash is already installed
else
	cp .binbash.sh ~/.binbash.sh
	echo '. .binbash.sh'
fi
