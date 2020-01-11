#!/bin/bash

## Usage
## ./resize_image.sh team/eric_roethlisberger.jpg team/eric_roethlisberger_400_400.jpg

INPUTFILE=$1
OUTPUTFILE=$2

convert $INPUTFILE -resize 400x400 $OUTPUTFILE