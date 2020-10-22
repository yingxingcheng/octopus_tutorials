#!/bin/bash

dir_lis=(
exec
restart
static
output_iter
)

file_lis=(
output
)


for d in ${dir_lis[@]}; do
    if [ -d $d ]; then
        rm -rf $d
    fi
done

for f in ${file_lis[@]}; do
    if [ -f $f ]; then
        rm -rf $f
    fi
done

# rm -rf exec restart static output output_iter
