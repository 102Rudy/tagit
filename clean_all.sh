#!/bin/bash

pushd backend
./clean.sh
popd

pushd frontend/console-cpp
./clean.sh
popd

pushd frontend/console-python
./clean.sh
popd
