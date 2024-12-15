/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.MailMessage">Sending and Receiving Email</a>.</p>
/// Send an SMTP mail message or receive a MIME message using POP3.
Class %Net.MailMessage Extends %Net.MailMessagePart [ Not ProcedureBlock, System = 3 ]
{

/// Cc for message, list of names to which message will be sent (SMTP) or was sent (POP3)
Property Cc As list Of %String(MAXLEN = 8000);

/// Bcc for message, list of names to which message will be sent (SMTP) or was sent (POP3)
Property Bcc As list Of %String(MAXLEN = 8000);

/// Who the message is from
Property From As %String(MAXLEN = 1000);

/// Subject of message
Property Subject As %String(MAXLEN = 1000);

/// To for message, list of names to which message will be sent (SMTP) or was sent (POP3)
Property To As list Of %String(MAXLEN = 8000);

/// The date/time that the message was retrieved as reported by POP3,
/// or date/time to be included in the message sent via %Net.SMTP.
/// If Date is not specified, then %Net.SMTP will set it to the current date and time.
Property Date As %String;

/// Who actually sent the message
Property Sender As %String(MAXLEN = 1000);

/// The Reply-To header field of the message
Property ReplyTo As %String(MAXLEN = 1000);

/// The total length of the message.
/// The MessageSize property is not set for attached emails.
Property MessageSize As %Integer;

/// Return the date/time that the message was retrieved converted to
/// UTC in $H format.  An empty string is returned if the date format
/// is invalid.
Method GetUTCDateTime() As %String
{
}

/// Return the date/time that the message was retrieved converted to
/// local time in $H format.  An empty string is returned if the date format
/// is invalid.
Method GetLocalDateTime() As %String
{
}

/// Return the date/time that the message was retrieved converted to
/// UTC in seconds since 12/31/1840.
/// An empty string is returned if the date format is invalid.
Method GetUTCSeconds() As %Integer
{
}

/// Convert the specified number of seconds since 12/31/1840 to $h format.
ClassMethod SecondsToH(seconds As %Integer) As %String [ CodeMode = expression ]
{
}

/// Convert $h format to the number of seconds since 12/31/1840.
ClassMethod HToSeconds(h As %String) As %Integer [ CodeMode = expression ]
{
}

}
