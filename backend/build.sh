#!/bin/bash

# setup protoc and grpc_cpp_plugin
if [ "$(uname)" == "Darwin" ]; then
    PROTOC_BIN="../vcpkg/buildtrees/protobuf/x64-osx-rel/protoc"
    GRPC_CPP_PLUGIN="../vcpkg/buildtrees/grpc/x64-osx-rel/grpc_cpp_plugin"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    PROTOC_BIN="../vcpkg/buildtrees/protobuf/x64-linux-rel/protoc"
    GRPC_CPP_PLUGIN="../vcpkg/buildtrees/grpc/x64-linux-rel/grpc_cpp_plugin"
# TODO: Update for Windows
# elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
#     # Do something under 32 bits Windows NT platform
# elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
#     # Do something under 64 bits Windows NT platform
fi

# setup source and destination directories
SRC_DIR=../proto
DST_DIR=generated

# generate models and services from .proto files
./$PROTOC_BIN -I=$SRC_DIR --grpc_out=$DST_DIR --plugin=protoc-gen-grpc=$GRPC_CPP_PLUGIN $SRC_DIR/helloworld.proto
./$PROTOC_BIN -I=$SRC_DIR --cpp_out=$DST_DIR $SRC_DIR/helloworld.proto

# build project
mkdir build
pushd build
cmake -DCMAKE_TOOLCHAIN_FILE=../vcpkg/scripts/buildsystems/vcpkg.cmake ..
make
popd

mkdir bin
mv build/app/tagit-backend-app bin/tagit-backend-app
