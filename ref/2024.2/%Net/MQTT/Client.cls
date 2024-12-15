/// This class implements an interface to the eclispse paho-c MQTT client library. Details of
/// of the library can be found here :- https://www.eclipse.org/paho/clients/c.<p>
/// The client provides the ability to connect to a third-party MQTT broker and publish or
/// subscribe to topics and send/receive messages. MQTT is a light-weight protocol and
/// can provide superior performance to HTTP based messaging. There are many excellent tutorials
/// for MQTT to be found on the internet and one should take the time to become familiar with the
/// basics as although the interface to the client is relatively straight-forward, the behaviors can be
/// sophisticated depending upon which options are selected. All strings passed to the library have the
/// requirement to be utf-8 encoded which includes, but is not limited to, messages, topics, usernames
/// and passwords.
Class %Net.MQTT.Client Extends %RegisteredObject
{

/// Indicates if the last send or receive operation timed out. You can test this following
/// a successful call to determine if the operation timed out. The timeout on a send is only
/// relevant if you have selected a quality of service which indicates that the broker should
/// confirm receipt of the message ($$$QOSWaitForDelivery specified on the send).
Property TimedOut As %Boolean [ InitialExpression = 0 ];

/// When creating a new client instance at minimum the url to connect and a client id is required to be specified.
/// The client id must be a utf-8 string which is used to uniquely identify the client.
/// This takes the form "tcp://localhost:1883" where the scheme is tcp and the host and port are seperated by a colon. If
/// you are using ssl you should specify the url in the form "ssl://localhost:8883" where scheme is ssl.
/// The second parameter is a string which the broker can use to identify the client. The client will generate an id if not specified.
/// The third parameter defines the required quality of service, 'Fire and Forget' or 'Wait for Delivery'. The fourth parameter is the keepalive interval.
/// The client will send keepalive messages to the broker according to the specified interval. The final pair of parameters specifies the last will and testament topic and associated message.
/// The LWT (last will and testament) feature tells the broker to deliver the Last Will message to the Last Will topic, should the
/// client unexpectedly disconnect<p>
///
/// Note, %New() can error so it's important to check that the return value with $IsObject() and examine the %objlasterror status value
/// should the %New() not return a valid object.
Method %OnNew(url As %String, clientid As %String = "", qos As %Integer = {$$$QOSFireAndForget}, keepaliveinterval As %Integer = {$$$KeepAliveInterval}, lwttopic As %String = "", lwtmessage As %String = "") As %Status
{
}

/// Connect to the broker specifying username and password if required. The cleansession argument
/// can be set to 1 if a persistent session is required. Timeout is a connection timeout in seconds. If a secure connection using
/// SSL is required then the name of an IRIS SSL configuration should be passed as the fifth argument. Please
/// consult the documentation for an explanation of what it means to use a persistent session.
Method Connect(username As %String = "", password As %String = "", cleansession As %Boolean = 1, timeout As %Integer = 1, sslconfig As %String = "") As %Status [ Final ]
{
}

/// Disconnect from the broker. It's important to disconnect from the broker when a connection is
/// no longer required to free up system resources on both the broker and the client.
Method Disconnect() As %Status [ Final ]
{
}

/// Test to see if the client is connected. The library maintains a connection and it can be queried
/// to determine if the client is currently connected. Disconnects can occur at any time due to network
/// glitches so it's important to be able to determine the connection status.
Method IsConnected(Output connected As %Boolean) As %Status
{
}

/// Send a message to a specified topic. Note that both should be utf-8 encoded. You may pass
/// 1 as the retain argument if you want the broker to retain the message. Additionally if the QOS has been set
/// to $$$QOSWaitForDelivery then the timeout argument will be used for the time to wait for an acknowledgement that
/// the broker has received the message. After calling send you can check the TimedOut property to determine it's status.
Method Publish(topic As %String, message As %String, retain As %Boolean = 0, timeout As %Integer = 1000) As %Status [ Final ]
{
}

/// Call this to subscribe to the named topic. The topic must be utf-8 encoded. You must call this method
/// before you attempt to Receive a message for the named topic.
Method Subscribe(topic As %String) As %Status
{
}

/// Listen for a message to be received for up to timeout milliseconds. If the timeout expires both the <p>
/// topic and message will be set to the empty string. Additionally the TimedOut property will be set accordingly
Method Receive(Output topic As %String, Output message As %String, timeout As %Integer = 1000) As %Status [ Final ]
{
}

/// Unsubscribe from a topic. After calling this the client will stop receiving messages for the <p>
/// specific topic. Topic must be utf-8 encoded.
Method Unsubscribe(topic As %String) As %Status [ Final ]
{
}

Method %OnClose() As %Status
{
}

/// Private, Decode an error reported by the library and form status
Method DecodeError(list As %String) As %Status [ Final, Internal, Private ]
{
}

/// Private, Create a client
Method Create(url As %String, clientid As %String, qos As %Integer, keepaliveinterval As %Integer, lwttopic As %String, lwtmessage As %String) As %Status [ Final, Internal, Private ]
{
}

/// Private, Destroy a client
Method Destroy() As %Status [ Final, Internal, Private ]
{
}

/// Error Text Domain
Parameter DOMAIN = "%ObjectErrors";

/// This holds the handle to the library's instance of the MQTT client
Property Handle As %Integer [ InitialExpression = 0, Private ];

/// This holds the url scheme, tcp or ssl
Property UrlScheme As %String [ Private ];

/// This holds the client id
Property ClientId As %String [ ReadOnly ];

}
