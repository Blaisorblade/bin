#!/bin/sh
host=tatooine

cd ~/AeroFS/Repos/
for i in *-$host
do
  [ -d $i ] && (cd $i  && [ -d .git ] &&
    {
      echo $i
      git "$@"
    })
done
