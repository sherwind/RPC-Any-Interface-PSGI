package RPC::Any::Server::JSONRPC::PSGI;
use strict;
use warnings;

use Moose;
extends 'RPC::Any::Server::JSONRPC::HTTP';
with 'RPC::Any::Interface::PSGI';

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

RPC::Any::Server::JSONRPC::PSGI - JSON-RPC server for a PSGI environment

=head1 SYNOPSIS

  # in app.psgi
  use RPC::Any::Server::JSONRPC::PSGI;

  # Create a server where calling Foo.bar will call My::Module->bar.
  my $server = RPC::Any::Server::JSONRPC::PSGI->new(
      dispatch  => { 'Foo' => 'My::Module' },
      allow_get => 0,
  );

  my $handler = sub{ $server->handle_input(@_) };

=head1 DESCRIPTION

This is a subclass of L<RPC::Any::Server::JSONRPC::HTTP> that has the
functionality described in L<RPC::Any::Interface::PSGI>.

=head1 AUTHOR

Sherwin Daganato E<lt>sherwin@daganato.comE<gt>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<RPC::Any::Server::JSONRPC::HTTP> L<RPC::Any::Interface::PSGI>

=cut
