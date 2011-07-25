package RPC::Any::Server::XMLRPC::PSGI;
use Moose;
extends 'RPC::Any::Server::XMLRPC::HTTP';
with 'RPC::Any::Interface::PSGI';

__PACKAGE__->meta->make_immutable;

1;
