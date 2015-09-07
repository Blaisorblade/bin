. host.inc
. common.inc

fullName="$1"
baseName="$(basename $fullName)"

cd ~/AeroFS/Repos

for host in $hosts; do
    git clone git@github.com:$fullName.git $baseName-$host
done

lnSrc $baseName
