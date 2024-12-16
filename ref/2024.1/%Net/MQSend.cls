/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.MQSend">Using MQ</a>.</p>
/// The
/// <b>MQSend</b> class is used to put messages on a queue.
/// <br>
Class %Net.MQSend Extends %Net.abstractMQ [ System = 3 ]
{

/// MQ type
Property qtype As %Integer [ InitialExpression = 1, Internal ];

/// Generated message id
Property GeneratedMessageId As %String;

/// Use the %Put method to write a message to the queue specified in the %Init
/// method.&nbsp; The %Put method takes one argument, the message.&nbsp; The
/// message can be up to 32K bytes long.
/// <p>%Put returns 0 if the call failed, else 1.
/// <br>
Method %Put(Msg As %Library.String) As %Boolean
{
}

/// Identical to <b>%Put</b> except the queue message is input from a file character stream object which
/// has been created by the caller.
/// <p>Data is read from the start to the end of the file, and the entire stream put on the queue as a
/// single message.
/// <br>
Method %PutStream(stream As %Stream) As %Boolean
{
}

/// The <b>%SetMsgId</b> method sets the Message Id for the next message to be sent.&nbsp;
/// <br>
Method %SetMsgId(Value As %Library.String) As %Boolean
{
}

/// Sets the Correlation Id for the next message to be sent.&nbsp;
/// <br>
Method %SetCorId(Value As %Library.String) As %Boolean
{
}

/// Sets the Reply Queue Manager Name for the next message to be sent.&nbsp;
/// <br>
Method %SetReplyQMgrName(Value As %Library.String) As %Boolean
{
}

/// Sets the Reply Queue Name for the next message to be sent.&nbsp;
/// <br>
Method %SetReplyQName(Value As %Library.String) As %Boolean
{
}

/// Sets the Application Identity for the next message to be sent.&nbsp;
/// <br>
Method %SetApplIdentityData(Value As %Library.String) As %Boolean
{
}

/// Sets the Put Application Type for the next message to be sent.&nbsp;
/// <br>
Method %SetPutApplType(Value As %Library.String) As %Boolean
{
}

}