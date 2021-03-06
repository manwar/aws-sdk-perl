package Paws::Lightsail::StaticIp;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has AttachedTo => (is => 'ro', isa => 'Str', xmlname => 'attachedTo', request_name => 'attachedTo', traits => ['Unwrapped','NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', xmlname => 'createdAt', request_name => 'createdAt', traits => ['Unwrapped','NameInRequest']);
  has IpAddress => (is => 'ro', isa => 'Str', xmlname => 'ipAddress', request_name => 'ipAddress', traits => ['Unwrapped','NameInRequest']);
  has IsAttached => (is => 'ro', isa => 'Bool', xmlname => 'isAttached', request_name => 'isAttached', traits => ['Unwrapped','NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', xmlname => 'location', request_name => 'location', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', xmlname => 'resourceType', request_name => 'resourceType', traits => ['Unwrapped','NameInRequest']);
  has SupportCode => (is => 'ro', isa => 'Str', xmlname => 'supportCode', request_name => 'supportCode', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::StaticIp

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::StaticIp object:

  $service_obj->Method(Att1 => { Arn => $value, ..., SupportCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::StaticIp object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes the static IP.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the static IP (e.g.,
C<arn:aws:lightsail:us-east-1:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE>).


=head2 AttachedTo => Str

  The instance where the static IP is attached (e.g.,
C<Amazon_Linux-1GB-Virginia-1>).


=head2 CreatedAt => Str

  The timestamp when the static IP was created (e.g., C<1479735304.222>).


=head2 IpAddress => Str

  The static IP address.


=head2 IsAttached => Bool

  A Boolean value indicating whether the static IP is attached.


=head2 Location => L<Paws::Lightsail::ResourceLocation>

  The region and Availability Zone where the static IP was created.


=head2 Name => Str

  The name of the static IP (e.g., C<StaticIP-Virginia-EXAMPLE>).


=head2 ResourceType => Str

  The resource type (usually C<StaticIp>).


=head2 SupportCode => Str

  The support code. Include this code in your email to support when you
have questions about an instance or another resource in Lightsail. This
code enables our support team to look up your Lightsail information
more easily.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

