set(SOURCES
    main.cc
    GreeterServiceImpl.cc)

add_executable(tagit-backend-app
    ${SOURCES})

target_link_libraries(tagit-backend-app PRIVATE
    gRPC::gpr
    gRPC::grpc
    gRPC::grpc++
    gRPC::grpc++_alts
    gRPC::grpc_plugin_support
    gRPC::grpc++_reflection
    
    tagit-backend-generated)
