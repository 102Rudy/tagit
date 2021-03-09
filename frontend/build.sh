#!/bin/bash

# Make sure you have installed grpcio and grpcio-tools
# To install run the following commads:
#   python -m pip install grpcio
#   python -m pip install grpcio-tools

# generate models and services from .proto files
python -m grpc_tools.protoc -I../proto --python_out=. --grpc_python_out=. ../proto/helloworld.proto
