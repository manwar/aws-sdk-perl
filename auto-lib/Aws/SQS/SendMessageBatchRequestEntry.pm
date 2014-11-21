package Aws::SQS::SendMessageBatchRequestEntry {
  use Moose;
  has DelaySeconds => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MessageAttributes => (is => 'ro', isa => 'Aws::SQS::MessageAttributeMap');
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
}
1;