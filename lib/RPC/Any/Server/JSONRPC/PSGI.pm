package RPC::Any::Server::JSONRPC::PSGI;
use Moose;
extends 'RPC::Any::Server::JSONRPC::HTTP';
with 'RPC::Any::Interface::PSGI';

__PACKAGE__->meta->make_immutable;

1;
