pushd vcpkg
./bootstrap-vcpkg.sh
./vcpkg integrate install
./vcpkg install grpc:x64-osx
./vcpkg install gtest:x64-osx
popd
