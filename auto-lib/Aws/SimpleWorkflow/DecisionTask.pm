
package Aws::SimpleWorkflow::DecisionTask {
  use Moose;
  with 'AWS::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');
  has previousStartedEventId => (is => 'ro', isa => 'Num');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

}
1;