#!/bin/bash

## Utility Functions ##

function cprint {
	END=${3:-"\n"}

  printf "\033[$2m$1$END"
}

## Code ##

NAME=realpath $1

echo $NAME

# rsptransfer $1