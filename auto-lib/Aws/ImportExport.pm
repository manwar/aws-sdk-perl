
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
<<<<<<< HEAD:auto-lib/AWS/ImportExport.pm
enum 'AWS::ImportExport::JobType', ['Import','Export',];
=======
enum 'Aws::ImportExport::JobType', [qw(Import Export )];
>>>>>>> 323bbcedd10d641f975a57cc3645d986efd7a617:auto-lib/Aws/ImportExport.pm


class Aws::ImportExport::Job with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CreationDate => (is => 'ro', isa => 'Str');
  has IsCanceled => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Aws::ImportExport::JobType');
}



class Aws::ImportExport::CancelJob {
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelJob');
  has _returns => (isa => 'Aws::ImportExport::CancelJobResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelJobResult');  
}
class Aws::ImportExport::CreateJob {
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has Manifest => (is => 'ro', isa => 'Str', required => 1);
  has ManifestAddendum => (is => 'ro', isa => 'Str');
  has ValidateOnly => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  has _returns => (isa => 'Aws::ImportExport::CreateJobResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateJobResult');  
}
class Aws::ImportExport::GetStatus {
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetStatus');
  has _returns => (isa => 'Aws::ImportExport::GetStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetStatusResult');  
}
class Aws::ImportExport::ListJobs {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxJobs => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  has _returns => (isa => 'Aws::ImportExport::ListJobsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListJobsResult');  
}
class Aws::ImportExport::UpdateJob {
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has Manifest => (is => 'ro', isa => 'Str', required => 1);
  has ValidateOnly => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJob');
  has _returns => (isa => 'Aws::ImportExport::UpdateJobResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateJobResult');  
}

class Aws::ImportExport::CancelJobResult with AWS::API::ResultParser {
  has Success => (is => 'ro', isa => 'Str');

}
class Aws::ImportExport::CreateJobResult with AWS::API::ResultParser {
  has AwsShippingAddress => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
  has SignatureFileContents => (is => 'ro', isa => 'Str');
  has WarningMessage => (is => 'ro', isa => 'Str');

}
class Aws::ImportExport::GetStatusResult with AWS::API::ResultParser {
  has AwsShippingAddress => (is => 'ro', isa => 'Str');
  has Carrier => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CurrentManifest => (is => 'ro', isa => 'Str');
  has ErrorCount => (is => 'ro', isa => 'Int');
  has JobId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has LocationCode => (is => 'ro', isa => 'Str');
  has LocationMessage => (is => 'ro', isa => 'Str');
  has LogBucket => (is => 'ro', isa => 'Str');
  has LogKey => (is => 'ro', isa => 'Str');
  has ProgressCode => (is => 'ro', isa => 'Str');
  has ProgressMessage => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
  has SignatureFileContents => (is => 'ro', isa => 'Str');
  has TrackingNumber => (is => 'ro', isa => 'Str');

}
class Aws::ImportExport::ListJobsResult with AWS::API::ResultParser {
  has IsTruncated => (is => 'ro', isa => 'Str');
  has Jobs => (is => 'ro', isa => 'ArrayRef[Aws::ImportExport::Job]');

}
class Aws::ImportExport::UpdateJobResult with AWS::API::ResultParser {
  has Success => (is => 'ro', isa => 'Str');
  has WarningMessage => (is => 'ro', isa => 'Str');

}

class Aws::ImportExport with (Net::AWS::Caller, AWS::API::SingleEndpointCaller, Net::AWS::V2Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'importexport');
  has version => (is => 'ro', isa => 'Str', default => '2010-06-01');
  
  method CancelJob (%args) {
    my $call = Aws::ImportExport::CancelJob->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ImportExport::CancelJobResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateJob (%args) {
    my $call = Aws::ImportExport::CreateJob->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ImportExport::CreateJobResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetStatus (%args) {
    my $call = Aws::ImportExport::GetStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ImportExport::GetStatusResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListJobs (%args) {
    my $call = Aws::ImportExport::ListJobs->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ImportExport::ListJobsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateJob (%args) {
    my $call = Aws::ImportExport::UpdateJob->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ImportExport::UpdateJobResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}