package Paws::AutoScaling::LifecycleHook;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has DefaultResult => (is => 'ro', isa => 'Str');
  has GlobalTimeout => (is => 'ro', isa => 'Int');
  has HeartbeatTimeout => (is => 'ro', isa => 'Int');
  has LifecycleHookName => (is => 'ro', isa => 'Str');
  has LifecycleTransition => (is => 'ro', isa => 'Str');
  has NotificationMetadata => (is => 'ro', isa => 'Str');
  has NotificationTargetARN => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LifecycleHook

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::LifecycleHook object:

  $service_obj->Method(Att1 => { AutoScalingGroupName => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::LifecycleHook object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroupName

=head1 DESCRIPTION

Describes a lifecycle hook, which tells Auto Scaling that you want to
perform an action when an instance launches or terminates. When you
have a lifecycle hook in place, the Auto Scaling group will either:

=over

=item *

Pause the instance after it launches, but before it is put into service

=item *

Pause the instance as it terminates, but before it is fully terminated

=back

For more information, see Auto Scaling Lifecycle in the I<Auto Scaling
User Guide>.

=head1 ATTRIBUTES


=head2 AutoScalingGroupName => Str

  The name of the Auto Scaling group for the lifecycle hook.


=head2 DefaultResult => Str

  Defines the action the Auto Scaling group should take when the
lifecycle hook timeout elapses or if an unexpected failure occurs. The
valid values are C<CONTINUE> and C<ABANDON>. The default value is
C<CONTINUE>.


=head2 GlobalTimeout => Int

  The maximum time, in seconds, that an instance can remain in a
C<Pending:Wait> or C<Terminating:Wait> state. The maximum is 172800
seconds (48 hours) or 100 times C<HeartbeatTimeout>, whichever is
smaller.


=head2 HeartbeatTimeout => Int

  The maximum time, in seconds, that can elapse before the lifecycle hook
times out. The default is 3600 seconds (1 hour). When the lifecycle
hook times out, Auto Scaling performs the default action. You can
prevent the lifecycle hook from timing out by calling
RecordLifecycleActionHeartbeat.


=head2 LifecycleHookName => Str

  The name of the lifecycle hook.


=head2 LifecycleTransition => Str

  The state of the EC2 instance to which you want to attach the lifecycle
hook. For a list of lifecycle hook types, see
DescribeLifecycleHookTypes.


=head2 NotificationMetadata => Str

  Additional information that you want to include any time Auto Scaling
sends a message to the notification target.


=head2 NotificationTargetARN => Str

  The ARN of the notification target that Auto Scaling uses to notify you
when an instance is in the transition state for the lifecycle hook.
This ARN target can be either an SQS queue or an SNS topic. The
notification message sent to the target includes the following:

=over

=item *

Lifecycle action token

=item *

User account ID

=item *

Name of the Auto Scaling group

=item *

Lifecycle hook name

=item *

EC2 instance ID

=item *

Lifecycle transition

=item *

Notification metadata

=back



=head2 RoleARN => Str

  The ARN of the IAM role that allows the Auto Scaling group to publish
to the specified notification target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

