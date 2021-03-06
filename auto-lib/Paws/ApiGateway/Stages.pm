
package Paws::ApiGateway::Stages;
  use Moose;
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::Stage]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Stages

=head1 ATTRIBUTES


=head2 Item => ArrayRef[L<Paws::ApiGateway::Stage>]

An individual Stage resource.


=head2 _request_id => Str


=cut

