#!/bin/sh
# get file path
cwd=`dirname "${0}"`
name=$1
expr "${0}" : "/.*" > /dev/null || cwd=`(cd "${cwd}" && pwd)`

gcc ${cwd}/main.cpp -lstdc++ -o bin/$GITHUB_REF_NAMe.out
