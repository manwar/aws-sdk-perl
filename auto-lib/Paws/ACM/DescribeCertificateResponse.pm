
package Paws::ACM::DescribeCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Paws::ACM::CertificateDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACM::DescribeCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => L<Paws::ACM::CertificateDetail>

Contains a CertificateDetail structure that lists the fields of an ACM
Certificate.


=head2 _request_id => Str


=cut

1;