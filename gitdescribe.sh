#!/bin/bash

cd $(pwd)

RAW_VERSION=$(git describe)

if [ "$?" -ne "0" ]
then 
  >&2 echo "Do any tags exist on this repo?"
  exit 100 
fi

CLEAN_VERSION=$(echo $RAW_VERSION | sed -e 's/^v//')
echo "gitdescribe=$CLEAN_VERSION" > .git/gitdescribe
