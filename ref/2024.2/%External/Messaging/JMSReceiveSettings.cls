Class %External.Messaging.JMSReceiveSettings Extends %External.Messaging.Settings
{

/// Timeout in milisecond to receive messages
Property receiveTimeout As %Integer [ InitialExpression = 100 ];

/// Optional subscriber name
Property subscriber As %String;

}
