/// <p><b>For information on using the API provided by this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.abstractMQ">Using MQ</a>.</p>
/// <br>The <b>%Net.MQ</b> class provides an interface to the IBM WebSphere
/// MQ Series messaging product.&nbsp; Two classes are provided: <class>%Net.MQSend</class>
/// for sending messages to a queue, and <class>%Net.MQRecv</class> for picking up messages
/// that have been queued.
/// <p><b>Usage</b>
/// <p>An MQ object is created when an instance of an MQ class is created via <b>%New</b>.
/// Following creation, the class can be assigned an error log file, and connected to
/// an MQ Server.
/// <p>The <b>%Init()</b> method is a simple way to perform both these functions.
/// <p>For advanced applications, these steps can be performed via separate method calls.
/// <p>To establish an error log file for the class, call <b>%ErrLog()</b>.
/// <p>A connection is established by calling the <b>%Connect()</b> method.
/// The connection is maintained until you deallocate the instance.
/// The instance must be successfully connected before it can be used for
/// message queuing.
/// <p>Use <b>MQSend.%Put()</b> to send messages to a queue.&nbsp; Use <b>MQRecv.%Get()</b>
/// to read messages from a queue.
/// <p>All methods return 1 for success, 0 for failure.  In case of a failure, the actual MQ error code is
/// available via the method <b>%GetLastError()</b>.
/// <p><b>Charcter Set Translation</b>
/// <p> <b>%CharSet(.ccs)</b> Retrieves the Coded Character Set identifier. This value may be altered by the message system after an unsuccessful attempt to convert data in MQGet.
/// <p> <b>%SetCharSet(id)</b> Sets the Coded Character Set identifier. Incoming messages will be converted to this character set. Outgoing message's character set encoding is identified to the message queue with this value.
/// <p>For output (MQSend.%Put()), the Coded Character Set Id describes to the system the char set used for the message. If not set, the MQ system assumes the default character set for the MQ client.
/// <p>For input (MQRecv.%Get()), the Coded Character Set Id indicates to the MQ client how the message should be converted. The conversion is done automatically during message reciept on the client.
/// <p>Thus one may send messages in any encoding (notifying the system what the encoding used is), and receive messages converting from one encoding to another.
/// <p>Example:
/// <p>To convert a message encoded in EBCDIC (Character Coded Set Id 1047, indicating IBM-1047 coding), a user on a Windows system may wish to convert using code 437 (the default on Windows systems). Then the following will convert the EBCDIC message to ascii on the windows system:
/// <p>Do mq.%SetCharSet(437) ;437 English ascii code on Windows
/// <p>Do mq.%Get(.msg) ;converts the message to 437 code
/// <p><b>MQ Documentation</b>
/// <p>Consult the IBM WebSphere MQ website for further documentation.
/// <br>&nbsp;
/// <br>&nbsp;
/// <br>
Class %Net.abstractMQ Extends %RegisteredObject [ Abstract, System = 3 ]
{

/// Handle to the MQInterface object created by <b>%New.</b>
Property mDesc As %Integer [ InitialExpression = "0", Internal ];

/// Handle to the loaded MQInterface shared library
Property mDllid As %Integer [ InitialExpression = "-1", Internal ];

/// Handle to the Connect function
Property MQConnectID As %Integer [ Internal ];

/// Handle to the Disconnect function
Property MQDisconnID As %Integer [ Internal ];

/// Handle to the Open Queue function
Property MQOpenQID As %Integer [ Internal ];

/// Handle to the Open Topic function
Property MQOpenTopicID As %Integer [ Internal ];

/// Handle to the Close Queue function
Property MQCloseQID As %Integer [ Internal ];

/// Handle to the Close function
Property MQDeleteID As %Integer [ Internal ];

/// Handle to the Commit function
Property MQCommitID As %Integer [ Internal ];

/// Handle to the Get function
Property MQGetID As %Integer [ Internal ];

/// Handle to the Put function
Property MQPutID As %Integer [ Internal ];

/// Handle to the Get Stream function
Property MQGetStreamID As %Integer [ Internal ];

/// Handle to the Put Stream function
Property MQPutStreamID As %Integer [ Internal ];

/// Handle to access the Message Descriptor
Property MQMsgDescID As %Integer [ Internal ];

/// Handle to access integer pieces of the Message Descriptor
Property MQMsgDescIID As %Integer [ Internal ];

/// Handle to set the Message Descriptor
Property MQMsgDescSetID As %Integer [ Internal ];

/// Handle to the errlog function
Property MQErrLogID As %Integer [ Internal ];

/// Handle to the errlog function
Property MQGetLastErrID As %Integer [ Internal ];

/// Handle to the Connection Options function
Property MQSetChannelID As %Integer [ Internal ];

/// Handle to the Connection Auth function
Property MQSetUserPassID As %Integer [ Internal ];

/// Handle to the Subscribe function
Property MQSubscribeID As %Integer [ Internal ];

/// MQ type
Property qtype As %Integer [ Internal ];

/// Queue name
Property QName As %String;

/// Queue Manager name
Property QMgr As %String;

/// Channel Definition Options: Channel Name
Property Channel As %String;

/// Channel Definition Options: Transport type
Property Transport As %String;

/// Channel Definition Options: Connection name
Property Connection As %String;

/// Channel Definition Options: SSL Cipher Spec
Property SSLCipherSpec As %String;

/// Channel Definition Options: Username (if any)
Property Username As %String;

/// Channel Definition Options: Password (if any)
Property Password As %String;

/// Message Descriptor Options: Character Set Identifier
Property CharSetId As %Integer;

/// Message Descriptor Options: Message Id
Property MessageId As %String;

/// Message Descriptor Options: Correlation Id
Property CorrelationId As %String;

/// Message Descriptor Options: Reply Q Manager name
Property ReplyQMgrName As %String;

/// Message Descriptor Options: Reply Q name
Property ReplyQName As %String;

/// Message Descriptor Options: Application Identity
Property ApplIdentityData As %String;

/// Message Descriptor Options: Put application type
Property PutApplType As %Integer;

/// Flag indicating use of SYNCPOINT
Property Syncpoint As %Boolean [ InitialExpression = 0 ];

/// Flag indicating use of message context
/// 0 - DEFAULT, 1 - IDENTITY, 2 - ALL
Property Context As %Integer [ InitialExpression = 0 ];

/// Flag indicating Queue Manager behavior
/// 0 - commit on disconnect (DEFAULT), 1 - backout on disconnect
Property QMBehavior As %Integer [ InitialExpression = 0 ];

/// <b>%GetLastError</b> returns the last error or reason code returned from MQ.
Method %GetLastError() As %Integer
{
}

/// <b>%Connect</b> creates a connection to a queue manager and opens the queue object.&nbsp; A connection
/// and open MQ object (queue, topic, subscription) is required before messages can be sent or received.&nbsp;
/// <p>User must first set the standard MQSeries initialization arguments
/// <p>QName: Host Queue Name (Required)
/// <p>QMgr: Host Queue Manager name. Passing "" connects to the default queue manager. (Optional)
/// <p>Channel: Host Channel name (Optional)
/// <p>Transport: Transport type (TCP, LU62, NETBIOS, SPX) (Optional)
/// <p>Connection: Connection spec, e.g., "127.0.0.1(1401)" (Optional)
/// <p>See IBM MQ documentation on establishing defaults, and MQ authentication.
Method %Connect() As %Boolean
{
}

/// <b>%Init</b> creates a connection to a queue.&nbsp; A connection
/// is required before messages can be sent or received.&nbsp; Use the following
/// standard MQSeries initialization arguments:
/// <p>QName: Host Queue name (Required)
/// <p>QMgr: Host Queue Manager name. Passing "" connects to the default queue manager. (Optional)
/// <p>QChannel: Host Channel specification, in form &lt;channel>/TCP/&lt;hostname>(&lt;port>)
/// If not set, MQ connects to the default Channel. (Optional)
/// <p>ErrorFile: For logging, specify a file name to store MQ system returned messages. (Optional)
/// <p>%Init returns 0 on failure, 1 on success.
/// <br>
Method %Init(QName As %String, QMgr As %String, QChannel As %String, ErrorFile As %String = "") As %Boolean
{
}

/// <b>%Commit</b> commits changes to the queue.  Used in conjunction with the
/// syncpoint option.  If the syncpoint option is set, then when sending, no messages
/// are visible on the queue until commit.  When receiving, the messages are not removed
/// from the queue until commit is issued.
/// <p>%Commit returns 0 on failure, 1 on success.
/// <br>
Method %Commit() As %Boolean
{
}

/// <b>%Backout</b> backs out changes to the queue.  Used in conjunction with the
/// syncpoint option.  If the syncpoint option is set, then when sending, no messages
/// are visible on the queue until commit.  If backout is called, all the messages
/// sent since the last commit are removed from the queue.
/// When receiving, the messages are not removed from the queue until commit is issued.
/// If backout is called, the messages are restored to the queue and available to users.
/// <p>%Backout returns 0 on failure, 1 on success.
/// <br>
Method %Backout() As %Boolean
{
}

/// The <b>%CharSet</b> method returns the current value of the
/// Coded Character Set Id used for message conversion.&nbsp;  The
/// CCSId may also be set to the message's Character Set if conversion
/// was not possible.
/// <br>
Method %CharSet(ByRef Value As %Integer) As %Boolean
{
}

/// The <b>%ErrLog</b> method creates an error log
/// to be used for errors on this object.&nbsp;
/// <br>
Method %ErrLog(log As %String) As %Boolean
{
}

/// The <b>%SetCharSet</b> method sets the Coded Character Set Id
/// to be used for message conversion.&nbsp;
/// <br>
Method %SetCharSet(Value As %Integer) As %Boolean
{
}

/// The <b>%MsgId</b> method returns the Message Id for the last message read.&nbsp;
/// <br>
Method %MsgId(ByRef Value As %String) As %Boolean
{
}

/// The <b>%CorId</b> method returns the Correlation Id for the last message read.&nbsp;
/// <br>
Method %CorId(ByRef Value As %String) As %Boolean
{
}

/// The <b>%ReplyQMgrName</b> method returns the Reply Queue Manager Name for the last message read.&nbsp;
/// <br>
Method %ReplyQMgrName(ByRef Value As %String) As %Boolean
{
}

/// The <b>%ReplyQName</b> method returns the Reply Queue Name for the last message read.&nbsp;
/// <br>
Method %ReplyQName(ByRef Value As %String) As %Boolean
{
}

/// The <b>%ApplIdentityData</b> method returns the Application Identity Data for the last message read.&nbsp;
/// <br>
Method %ApplIdentityData(ByRef Value As %String) As %Boolean
{
}

/// The <b>%PutApplType</b> method returns the Put Application Type for the last message read.&nbsp;
/// <br>
Method %PutApplType(ByRef Value As %Integer) As %Boolean
{
}

/// The <b>%Syncpoint</b> method returns the current syncpoint status for the connection.&nbsp;
/// <br>
Method %Syncpoint(ByRef Value As %Integer) As %Boolean
{
}

Method %OnClose() As %Status [ Internal, Private ]
{
}

Method %OnNew(Arg1Ignored As %String) As %Status [ Internal, Private ]
{
}

Parameter MessageId = 1;

Parameter CorrelationId = 2;

Parameter ReplyQMgrName = 3;

Parameter ReplyQName = 4;

Parameter ApplIdentityData = 5;

}
