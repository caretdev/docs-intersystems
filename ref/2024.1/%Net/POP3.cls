/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.POP3">Sending and Receiving Email</a>.</p>
/// <P>Implements <CLASS>%Net.FetchMailProtocol</CLASS></P>
Class %Net.POP3 Extends %Net.FetchMailProtocol [ System = 3 ]
{

/// The port of the POP3 server, the default is 110 for plain text and 995 for SSL.
Property port As %Integer;

/// Default port is 110 for plain text and 995 for SSL.
Method portGet() As %Integer [ CodeMode = expression, Internal ]
{
}

/// The read timeout in seconds to use when communicating with the POP3 server
Property timeout As %Integer [ InitialExpression = 30 ];

/// The name of the activated TLS/SSL configuration to use for pop3s requests.
Property SSLConfiguration As %String;

/// If true then the STARTTLS extension to POP3 (RFC 2595) should be used to authenticate
/// to the POP3 server on the normal POP3 port.
/// The SSLConfiguration must be specified.
Property UseSTARTTLS As %Boolean;

/// If IgnoreInvalidBase64Chars is true, then unexpected characters will be ignored during base64 decoding.
/// RFC 2045 is ambiguous about whether unexpected characters should be ignored or result in an error
/// during base64 decoding.
/// The default is false.
Property IgnoreInvalidBase64Chars As %Boolean [ InitialExpression = 0 ];

/// When making an SSL connection check the server identity in the server certificate matches the name of the system we are connecting to.
/// This defaults to being on and matches based on the rules layed out in section 3.1 of RFC 2818.
Property SSLCheckServerIdentity As %Boolean [ InitialExpression = 0 ];

/// TCP device actually used for communicating with the POP3 server.
Property dev As %String [ Internal ];

/// Branch of the temp global that stores the message.
Property Branch As %Integer [ Internal, Private ];

/// Cleanup the temp global used to store the message.
Method %OnClose() As %Status [ ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>Connect</METHOD></P>
Method Connect(PopServer As %String, UserName As %String, Password As %String = "", AccessToken As %String = "") As %Status [ CodeMode = expression ]
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>Connect</METHOD></P>
Method ConnectPort(PopServer As %String, PopPort As %Integer = 110, UserName As %String, Password As %String, AccessToken As %String = "") As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>GetMailBoxStatus</METHOD></P>
Method GetMailBoxStatus(ByRef NumberOfMessages As %Integer, ByRef NumberOfBytes As %Integer) As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>GetSizeOfMessages</METHOD></P>
Method GetSizeOfMessages(MessageNumber As %String = "", ByRef ListOfSizes As %ArrayOfDataTypes) As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>GetMessageUIDArray</METHOD></P>
Method GetMessageUIDArray(MessageNumber As %String = "", ByRef ListOfUniqueIDs As %ArrayOfDataTypes) As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>GetMessageUID</METHOD></P>
Method GetMessageUID(MessageNumber As %Integer, ByRef UniqueID As %String) As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>Fetch</METHOD></P>
Method Fetch(MessageNumber As %Integer, ByRef MailMsg As %Net.MailMessage, Delete As %Boolean = 0, messageStream As %BinaryStream) As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>FetchFromStream</METHOD></P>
Method FetchFromStream(messageStream As %BinaryStream, ByRef MailMsg As %Net.MailMessage) As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>FetchMessage</METHOD></P>
Method FetchMessage(MessageNumber As %Integer, ByRef From As %String, ByRef To As %String, ByRef Date As %String, ByRef Subject As %String, ByRef MessageSize As %Integer, ByRef MsgHeaders As %ArrayOfDataTypes, ByRef MailMsg As %Net.MailMessage, Delete As %Boolean = 0) As %Status
{
}

/// Convert a part that represents an email message to %Net.MailMessage object
Method GetMailMessage(glv As %String, part As %Integer, Output mailmsg As %Net.MailMessage) As %Status [ Internal, Private, ProcedureBlock = 1 ]
{
}

/// Convert the text of an attached email (Content-Type: message/rfc822) to a %Net.mailMessage.
Method GetAttachedEmail(msgpart As %Net.MailMessagePart, Output mailmsg As %Net.MailMessage) As %Status [ ProcedureBlock = 1 ]
{
}

Method WalkParts(glv As %String, part As %Integer, msgpart As %Net.MailMessagePart) [ Internal, Private ]
{
}

Method FetchMessageInfo(MessageNumber As %Integer, Lines As %Integer, ByRef From As %String, ByRef To As %String, ByRef Date As %String, ByRef Subject As %String, ByRef MessageSize As %Integer, ByRef MsgHeaders As %ArrayOfDataTypes, ByRef MessageText As %String) As %Status
{
}

/// Assumes current device is TCP socket to POP3 server.
Method GetHeadersAndBody(ByRef From As %String, ByRef To As %String, ByRef Date As %String, ByRef Subject As %String, ByRef MsgHeaders As %ArrayOfDataTypes, MessageText As %String) As %Status [ Internal, Private ]
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>FetchMessageHeaders</METHOD></P>
Method FetchMessageHeaders(MessageNumber As %Integer, ByRef MsgHeadersArray As %String) As %Status
{
}

/// Assumes current device is TCP socket to POP3 server.
Method GetHeadersArray(Output MsgHeadersArray As %String) As %Status [ Internal ]
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>DeleteMessage</METHOD></P>
Method DeleteMessage(MessageNumber As %Integer) As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>RollbackDeletes</METHOD></P>
Method RollbackDeletes() As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>QuitAndCommit</METHOD></P>
Method QuitAndCommit() As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>QuitAndRollback</METHOD></P>
Method QuitAndRollback() As %Status
{
}

/// <P>see <CLASS>%Net.FetchMailProtocol</CLASS> <METHOD>Ping</METHOD></P>
Method Ping() As %Status
{
}

Method SetDestList(destlist As %ListOfDataTypes, dests As %String) [ Internal, Private ]
{
}

ClassMethod BeginsWithSpace(x As %String) As %Integer [ Internal, Private ]
{
}

ClassMethod MailError(line As %String) As %String [ Internal, Private ]
{
}

}
