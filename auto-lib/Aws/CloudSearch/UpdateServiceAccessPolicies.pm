
package Aws::CloudSearch::UpdateServiceAccessPolicies {
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::UpdateServiceAccessPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPoliciesResult');
}
1;