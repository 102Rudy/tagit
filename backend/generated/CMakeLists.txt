set(GENERATED_SOURCES
    helloworld.pb.cc
    helloworld.grpc.pb.cc)

add_library(tagit-backend-generated
    ${GENERATED_SOURCES})

target_link_libraries(tagit-backend-generated PRIVATE gRPC::gpr gRPC::grpc gRPC::grpc++ gRPC::grpc++_alts gRPC::grpc_plugin_support gRPC::grpc++_reflection)

target_include_directories(tagit-backend-generated PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)
