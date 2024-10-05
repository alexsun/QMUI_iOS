#!/bin/zsh

cd "QMUIKit" || exit

rm -rf "include"
mkdir "include"

#shopt -s globstar

for i in **/*.h; do
    echo $i
    # shellcheck disable=SC3010
    if [[ $i != *Private.h ]]; then
        cd "include" || exit
        ln -sF "../$i" "$(basename $i)"
        cd ..
    fi
done

