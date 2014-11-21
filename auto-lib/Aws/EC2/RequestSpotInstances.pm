
package Aws::EC2::RequestSpotInstances {
  use Moose;
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneGroup' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'instanceCount' );
  has LaunchGroup => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchGroup' );
  has LaunchSpecification => (is => 'ro', isa => 'Aws::EC2::RequestSpotLaunchSpecification');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spotPrice' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );
  has ValidFrom => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'validFrom' );
  has ValidUntil => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'validUntil' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestSpotInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::RequestSpotInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;