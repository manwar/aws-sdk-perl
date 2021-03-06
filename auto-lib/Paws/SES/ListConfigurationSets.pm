
package Paws::SES::ListConfigurationSets;
  use Moose;
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurationSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::ListConfigurationSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListConfigurationSetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListConfigurationSets - Arguments for method ListConfigurationSets on Paws::SES

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurationSets on the 
Amazon Simple Email Service service. Use the attributes of this class
as arguments to method ListConfigurationSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurationSets.

As an example:

  $service_obj->ListConfigurationSets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxItems => Int

The number of configuration sets to return.



=head2 NextToken => Str

A token returned from a previous call to C<ListConfigurationSets> to
indicate the position of the configuration set in the configuration set
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurationSets in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

