/// The
/// <b>MQPub</b> class is used to Publish a message on an MQ Topic.&nbsp;
/// An MQ Topic is taken from the QName. Set the QName Property with the desired Topic string.
/// <br>
Class %Net.MQPub Extends %Net.MQSend [ System = 3 ]
{

/// MQ type
Property qtype As %Integer [ InitialExpression = 2, Internal ];

/// For the default case, the optional topicName needs to be created
/// beforehand, using WebSphere MQ Explorer or this MQSC command:
/// DEFINE TOPIC(STOCKS) TOPICSTR(NYSE) REPLACE;
/// Topic name
Property TopicName As %String;

/// Topic String
Property TopicString As %String;

/// <b>%Connect</b> creates a connection to a Topic and opens the queue object.&nbsp; A connection
/// and open MQ object (queue, topic, subscription) is required before messages can be sent or received.&nbsp;
/// <p>User must first set the standard MQSeries initialization arguments
/// <p>Topic: Host Topic (Required)
/// <p>QMgr: Host Queue Manager name. Passing "" connects to the default queue manager. (Optional)
/// <p>Channel: Host Channel name (Optional)
/// <p>Transport: Transport type (TCP, LU62, NETBIOS, SPX) (Optional)
/// <p>Connection: Connection spec, e.g., "127.0.0.1(1401)" (Optional)
/// <p>See IBM MQ documentation on establishing defaults, and MQ authentication.
Method %Connect() As %Boolean
{
}

}
