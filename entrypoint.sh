#!/bin/sh

if [ $# -eq 0 ]
  then
      echo "required argument: patroni configuration file path"
      exit 2
fi

if [ $1 == "SLEEP" ]; then
    sleep 240h
fi

/usr/bin/patroni $1
