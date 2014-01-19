#!/bin/bash

cs $(ls -l|grep -m 1 "^d"|awk '{ print $NF }')
