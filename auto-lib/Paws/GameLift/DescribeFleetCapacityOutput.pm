
package Paws::GameLift::DescribeFleetCapacityOutput;
  use Moose;
  has FleetCapacity => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::FleetCapacity]');
  has NextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetCapacityOutput

=head1 ATTRIBUTES


=head2 FleetCapacity => ArrayRef[L<Paws::GameLift::FleetCapacity>]

Collection of objects containing capacity information for each
requested fleet ID. Leave this parameter empty to retrieve capacity
information for all fleets.



=head2 NextToken => Str

Token indicating where to resume retrieving results on the next call to
this action. If no token is returned, these results represent the end
of the list.

If a request has a limit that exactly matches the number of remaining
results, a token is returned even though there are no more results to
retrieve.




=cut

1;