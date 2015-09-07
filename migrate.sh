#!/bin/sh -ex
#src=~/Documents/Research/Sorgenti
dst=~/AeroFS/Repos

#cd $src
hostName=tatooine
#hostName=bluevelvet
list="$@"

for dir_ in $list; do
    if [ -d $dir_ ]; then
	dir=$(basename $dir_) # Chomp final '/' if needed.
	newName=$dir-$hostName
	mv $dir $dst/$newName
	ln -s $dst/$newName ./$dir
    fi
done
