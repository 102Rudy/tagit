pushd vcpkg
./bootstrap-vcpkg.sh
./vcpkg integrate install
./vcpkg install grpc:x64-linux
./vcpkg install gtest:x64-linux
popd
