#!/bin/bash

# Make sure you have installed grpcio and grpcio-tools
# To install run the following commads:
#   python -m pip install grpcio
#   python -m pip install grpcio-tools

# setup source and destination directories
SRC_DIR=../../proto
DST_DIR=.

# generate models and services from .proto files
python -m grpc_tools.protoc -I$SRC_DIR --python_out=$DST_DIR --grpc_python_out=$DST_DIR $SRC_DIR/helloworld.proto
