Class %External.Messaging.SQSReceiveSettings Extends %External.Messaging.Settings
{

/// Max number of messages to retrieve
Property maxNumberOfMessages As %Integer [ InitialExpression = 10 ];

/// Poll timeout in second
Property waitTimeSeconds As %Integer [ InitialExpression = 1 ];

/// Visibility timeout in second
Property visibilityTimeout As %Integer [ InitialExpression = 1 ];

}