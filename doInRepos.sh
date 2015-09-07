#!/bin/sh
. host.inc

cd ~/AeroFS/Repos/
for i in *-$hostName
do
  [ -d $i ] && (cd $i  && [ -d .git ] &&
    {
      echo $i
      git "$@"
    })
done
