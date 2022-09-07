#!/bin/sh
# get file path
cwd=`dirname "${0}"`
name=${GITHUB_REF##*/}
expr "${0}" : "/.*" > /dev/null || cwd=`(cd "${cwd}" && pwd)`

gcc ${cwd}/main.cpp -lstdc++ -o bin/$name.out
