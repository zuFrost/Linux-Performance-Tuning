#!/bin/bash
while true
do
  x=$((x+1))
  /bin/pwd >/dev/null
  if [ $x -gt 50000 ]
  then
    exit
  fi
done
