package Paws::Discovery::NeighborConnectionDetail;
  use Moose;
  has ConnectionsCount => (is => 'ro', isa => 'Int', xmlname => 'connectionsCount', request_name => 'connectionsCount', traits => ['Unwrapped','NameInRequest'], required => 1);
  has DestinationPort => (is => 'ro', isa => 'Int', xmlname => 'destinationPort', request_name => 'destinationPort', traits => ['Unwrapped','NameInRequest']);
  has DestinationServerId => (is => 'ro', isa => 'Str', xmlname => 'destinationServerId', request_name => 'destinationServerId', traits => ['Unwrapped','NameInRequest'], required => 1);
  has SourceServerId => (is => 'ro', isa => 'Str', xmlname => 'sourceServerId', request_name => 'sourceServerId', traits => ['Unwrapped','NameInRequest'], required => 1);
  has TransportProtocol => (is => 'ro', isa => 'Str', xmlname => 'transportProtocol', request_name => 'transportProtocol', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::NeighborConnectionDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::NeighborConnectionDetail object:

  $service_obj->Method(Att1 => { ConnectionsCount => $value, ..., TransportProtocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::NeighborConnectionDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionsCount

=head1 DESCRIPTION

Details about neighboring servers.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionsCount => Int

  Number of open network connections with the neighboring server.


=head2 DestinationPort => Int

  Destination network port for the connection.


=head2 B<REQUIRED> DestinationServerId => Str

  ID of the server that accepted the networker connection.


=head2 B<REQUIRED> SourceServerId => Str

  ID of server that opened the network connection.


=head2 TransportProtocol => Str

  Network protocol used for the connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

