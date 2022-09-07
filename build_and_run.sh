#!/bin/sh
# get file path
cwd=`dirname "${0}"`
name=$( git describe --tags )
mkdir -p ${cwd}/bin
expr "${0}" : "/.*" > /dev/null || cwd=`(cd "${cwd}" && pwd)`
gcc ${cwd}/main.cpp -lstdc++ -o ${cwd}/bin/$name.out
ls ${cwd}/bin
