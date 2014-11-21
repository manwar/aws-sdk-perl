
package Aws::RedShift::DescribeEventCategories {
  use Moose;
  has SourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventCategories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::EventCategoriesMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventCategoriesResult');
}
1;