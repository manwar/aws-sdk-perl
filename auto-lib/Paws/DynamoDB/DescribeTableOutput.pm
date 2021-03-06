
package Paws::DynamoDB::DescribeTableOutput;
  use Moose;
  has Table => (is => 'ro', isa => 'Paws::DynamoDB::TableDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeTableOutput

=head1 ATTRIBUTES


=head2 Table => L<Paws::DynamoDB::TableDescription>




=head2 _request_id => Str


=cut

1;