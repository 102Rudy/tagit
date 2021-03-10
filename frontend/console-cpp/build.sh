#!/bin/bash

# copy generated models and services
cp -r ../../backend/generated generated

# build project
mkdir build
pushd build
cmake -DCMAKE_TOOLCHAIN_FILE=../../vcpkg/scripts/buildsystems/vcpkg.cmake ..
make
popd

mkdir bin
mv build/app/tagit-console-client bin/tagit-console-client
