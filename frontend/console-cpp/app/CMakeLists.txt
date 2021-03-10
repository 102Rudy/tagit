set(SOURCES
    main.cc)

add_executable(tagit-console-client
    ${SOURCES})

target_link_libraries(tagit-console-client PRIVATE
    gRPC::gpr
    gRPC::grpc
    gRPC::grpc++
    gRPC::grpc++_alts
    gRPC::grpc_plugin_support
    gRPC::grpc++_reflection
    
    tagit-generated)
