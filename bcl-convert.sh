#!/bin/bash

A=( "$@" )

docker run --rm --name bcl-convert\
         -v "$2":/mnt/input \
         -v "$4":/mnt/output \
         bcl-convert:latest \
             --bcl-input-directory /mnt/input \
             --output-directory /mnt/output/ \
             "${A[@]:4}"
