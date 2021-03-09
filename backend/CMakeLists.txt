cmake_minimum_required(VERSION 3.16)

project(tagit)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

find_package(gRPC CONFIG REQUIRED)

add_subdirectory(generated)
add_subdirectory(app)
