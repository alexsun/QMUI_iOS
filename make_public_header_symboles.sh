#!/bin/zsh

cd "QMUIKit"

rm -rf "include"
mkdir "include"

#shopt -s globstar

for i in **/*.h; do
    echo $i
    cd "include"
#    if [ ! -d "$(dirname $i)" ]
#    then
##        echo "mkdir: include/$(dirname $i)"
#        mkdir -p "$(dirname $i)"
##    else
##        echo "directory exists: include/$(dirname $i)"
#    fi
#    echo "ln -sF ../$i $i"
#${1##*/}
#    ln -sF "../$i" "${i##*/}"
    ln -sF "../$i" "$(basename $i)"
    cd ..
done

