/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.MQRecv">Using MQ</a>.</p>
/// The
/// <b>MQRecv</b> class is used to get a message from a queue.&nbsp;
/// <br>
Class %Net.MQRecv Extends %Net.abstractMQ [ System = 3 ]
{

/// MQ type
Property qtype As %Integer [ InitialExpression = 0, Internal ];

/// Message Selection Options: Message Id
Property SelectMessageId As %String;

/// Message Selection Options: Correlation Id
Property SelectCorrelationId As %String;

/// The <b>%Get</b> method reads from the queue specified in the %Init call.&nbsp;
/// The method takes one argument, the timeout in milliseconds.&nbsp; The timeout
/// refers to the time required to contact the server.&nbsp; <b>%Get</b> is
/// non-blocking (returns immediately whether or not there is a message on
/// the queue).
/// <p>If&nbsp; <b>%Get</b> gives a return code of 0, there was a failure or
/// timeout.&nbsp; The return string is empty.&nbsp; If&nbsp; <b>%Get</b> returns
/// 1, the call was successful.&nbsp; The return string is empty or contains
/// a message depending on what the queue contained.
/// <br>
Method %Get(ByRef Message As %String, timeout As %Integer = 0) As %Boolean
{
}

/// Identical to <b>%Get</b> except the queue message, if any, is returned in a file character stream object.
/// <p>Data is read from the queue into a memory buffer, and the entire message written to the file
/// of the character stream object.
/// <br>
Method %GetStream(stream As %Stream, timeout As %Integer = 0) As %Boolean
{
}

}
