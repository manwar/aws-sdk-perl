
package Paws::EC2::DescribeTagsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', xmlname => 'nextToken', traits => ['Unwrapped',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagDescription]', xmlname => 'tagSet', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTagsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return..


=head2 Tags => ArrayRef[L<Paws::EC2::TagDescription>]

A list of tags.


=head2 _request_id => Str


=cut

