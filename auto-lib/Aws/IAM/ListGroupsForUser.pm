
package Aws::IAM::ListGroupsForUser {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupsForUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListGroupsForUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListGroupsForUserResult');
}
1;