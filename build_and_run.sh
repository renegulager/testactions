#!/bin/sh
# get file path
cwd=`dirname "${0}"`
mkdir -p ${cwd}/bin
expr "${0}" : "/.*" > /dev/null || cwd=`(cd "${cwd}" && pwd)`
gcc ${cwd}/main.cpp -lstdc++ -o ${cwd}/bin/bb.out
ls ${cwd}/bin
