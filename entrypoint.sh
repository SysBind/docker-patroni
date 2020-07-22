#!/bin/sh

if [ $# -eq 0 ]
  then
      echo "required argument: patroni configuration file path"
      exit 2
fi

/usr/bin/patroni $1
