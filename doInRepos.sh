#!/bin/sh
hostName=tatooine

cd ~/AeroFS/Repos/
for i in *-$hostName
do
  [ -d $i ] && (cd $i  && [ -d .git ] &&
    {
      echo $i
      git "$@"
    })
done
