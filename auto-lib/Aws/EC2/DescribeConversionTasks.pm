
package Aws::EC2::DescribeConversionTasks {
  use Moose;
  has ConversionTaskIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'conversionTaskId' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'filter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConversionTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeConversionTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;