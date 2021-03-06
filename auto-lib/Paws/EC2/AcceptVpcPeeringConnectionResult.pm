
package Paws::EC2::AcceptVpcPeeringConnectionResult;
  use Moose;
  has VpcPeeringConnection => (is => 'ro', isa => 'Paws::EC2::VpcPeeringConnection', xmlname => 'vpcPeeringConnection', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AcceptVpcPeeringConnectionResult

=head1 ATTRIBUTES


=head2 VpcPeeringConnection => L<Paws::EC2::VpcPeeringConnection>

Information about the VPC peering connection.


=head2 _request_id => Str


=cut

