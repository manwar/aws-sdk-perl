
package Paws::EC2::CancelBundleTaskResult;
  use Moose;
  has BundleTask => (is => 'ro', isa => 'Paws::EC2::BundleTask', xmlname => 'bundleInstanceTask', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelBundleTaskResult

=head1 ATTRIBUTES


=head2 BundleTask => L<Paws::EC2::BundleTask>

Information about the bundle task.


=head2 _request_id => Str


=cut

