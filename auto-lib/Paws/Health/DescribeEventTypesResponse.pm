
package Paws::Health::DescribeEventTypesResponse;
  use Moose;
  has EventTypes => (is => 'ro', isa => 'ArrayRef[Paws::Health::EventType]', traits => ['Unwrapped'], xmlname => 'eventTypes' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEventTypesResponse

=head1 ATTRIBUTES


=head2 EventTypes => ArrayRef[L<Paws::Health::EventType>]

List of event types to be matched with.


=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.


=head2 _request_id => Str


=cut

1;