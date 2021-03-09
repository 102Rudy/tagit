#include "GreeterServiceImpl.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using helloworld::Greeter;
using helloworld::HelloReply;
using helloworld::HelloRequest;

Status GreeterServiceImpl::SayHello(ServerContext *context, const HelloRequest *request, HelloReply *reply) {
    std::string greeting("Hello, " + request->name() + ", I'm C++ backend!");
    reply->set_message(greeting);
    return Status::OK;
}
