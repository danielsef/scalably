#!/bin/bash

echo "Positional Parameters"
echo '$0 = ' $0
echo '$1 = ' $1
echo '$2 = ' $2
echo '$3 = ' $3


HOST="$HOSTNAME"
RIGHT_NOW=$(date +"%Y%m%d")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"

echo $HOST
echo $RIGHT_NOW
echo $TIME_STAMP

FILES=/Users/danielsef/repos/recomm-feature-flask-v03/*
for f in $FILES
do
  echo "Processing $f file..."
done
