#!/bin/zsh

cd "QMUIKit"

rm -rf "include"
mkdir "include"

#shopt -s globstar

for i in **/*.h; do
    echo $i
    cd "include"
    if [[ $i != *Private.h ]]; then
        ln -sF "../$i" "$(basename $i)"
    fi
    cd ..
done

