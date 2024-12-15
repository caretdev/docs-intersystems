/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.SMTP">Sending and Receiving Email</a>.</p>
/// Send a SMTP mail message
/// <p>
/// The <property>Charset</property> property of each <class>%Net.MailMessagePart</class>
/// determines the charset 	for text MIME parts.  The charset property is ignored unless
/// <property>ContentType</property>=text/...
/// <property>Charset</property> sets the Character Set for the content-type header.
/// IMPORTANT:  Charset must be set before any data is written to the TextData
/// stream associated with this <class>%Net.MailMessagePart</class>.
/// The Charset may also be initialized when the message
/// is created by ##Class(%Net.MailMessagePart).%New(charset) or ##Class(%Net.MailMessage).%New(charset).
/// For Unicode locale, the default Charset for ##Class(%Net.SMTP).%New() is utf-8.<p>
/// <EXAMPLE>
/// #include %occOptions
/// #include %occStatus
///
/// testmailsend3 ;
/// ;  Replace information marked with [[ ]]
///
/// new attached,err,m,nestedm,s,status
/// set s=##class(%Net.SMTP).%New()
/// set s.smtpserver=[["SMTP server name"]]
/// set s.timezone=[["-0400"]]  may remove this line to get Universal Time
/// set m=##class(%Net.MailMessage).%New()
/// set m.From=[["test@company.com"]]
/// // Either address with name or just email address supported.
/// do m.To.Insert([["receiver@another.com"]])
/// do m.To.Insert([["Joe Smith <jsmith@another.com>"]])
/// write !,"s.port="_s.port
/// write !,"s.localhost="_s.localhost
/// set m.Subject="Sent by InterSystems IRIS mail"
/// set m.Charset="iso-8859-1"
/// set status=m.TextData.Write("This is the main body.")
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// set status=m.TextData.Write($char(13,10))
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// set status=m.TextData.Write("This is the second line.")
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// set status=m.TextData.Write($char(13,10))
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// set status=m.AttachFile("c:\winnt","notepad.exe")
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// // Attach a text file with charset=iso-8859-1
/// set status=m.AttachFile("d:\temp","test.txt",0,"iso-8859-1")
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// set nestedm=m.AttachNewMessage()
/// // Attach a binary file
/// set status=nestedm.AttachFile("c:\irissys\bin","test.bin")
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// write !,"m.Parts.Count()="_m.Parts.Count()
/// write !,"m.Parts.GetAt(3).Parts.GetAt(1).FileName="_m.Parts.GetAt(3).Parts.GetAt(1).FileName
/// write !,"m.Parts.GetAt(3).Parts.Count()="_m.Parts.GetAt(3).Parts.Count()
/// set status=s.Send(m)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status)
/// quit
///
/// </EXAMPLE>
Class %Net.SMTP Extends %RegisteredObject [ System = 3 ]
{

/// The sending host, default is $ZU(110).
Property localhost As %String(TRUNCATE = 1) [ InitialExpression = {$ZU(110)} ];

/// The port of the SMTP server, the default is 25 for plain text and 465 for SSL.
Property port As %String(MAXLEN = 100, TRUNCATE = 1);

/// Default port is 25 for plain text and 465 for SSL.
Method portGet() As %String [ CodeMode = expression, Internal ]
{
}

/// the name of the SMTP server
Property smtpserver As %String(MAXLEN = 100, TRUNCATE = 1);

/// The name of the activated TLS/SSL configuration to use for smpts requests.
Property SSLConfiguration As %String;

/// If true then the STARTTLS extension to SMTP (RFC 3207) should be used to authenticate
/// to the SMTP server on the normal SMTP port.
/// The SSLConfiguration must be specified.
Property UseSTARTTLS As %Boolean;

/// When making an SSL connection check the server identity in the server certificate matches the name of the system we are connecting to.
/// This defaults to being on and matches based on the rules layed out in section 3.1 of RFC 2818.
Property SSLCheckServerIdentity As %Boolean [ InitialExpression = 1 ];

/// If false (as is the default), Send() will fail if there is an authenticator present but authentication with the server fails.
/// If true, Send() will ignore a failure to authenticate and proceed with sending without authentication.
/// If no authenticator is present, authentication is never attempted and so this property is ignored.
Property IgnoreFailedAuth As %Boolean [ InitialExpression = 0 ];

/// timezone as specified by RFC822, for example "EST", "PDT", "-0400".
/// If timezone is "LOCAL", then the local timezone expressed as "+nnnn" or "-nnnn" is used.
/// If timezone is not set, then "UT" is used for the timezone and
/// universal time is used in the message.
Property timezone As %String(MAXLEN = 100, TRUNCATE = 1);

/// If ShowBcc = true (1), then Bcc headers will be written to the email message.
/// The Bcc headers will usually be filtered out by the SMTP server.
Property ShowBcc As %Boolean;

/// To do SMTP authentication with the SMTP server (as defined by RFC 2554),
/// instantiate a <class>%Net.Authenticator</class> object, set UserName
/// and Password properties of the authenticator and assign it to this property.
/// An example of the use of authenticator follows.
/// <EXAMPLE>
/// #include %occOptions
/// #include %occStatus
///
/// authtestmailsend ;
/// ;  Replace information marked with [[ ]]
///
/// new auth,m,s,status
/// set s=##class(%Net.SMTP).%New()
/// set auth=##class(%Net.Authenticator).%New() ; use default authentication list
/// set auth.UserName=[["myUser"]]
/// set auth.Password=[["myPassword"]]
/// set s.authenticator=auth
/// set s.smtpserver=[["SMTP server name"]]
/// set s.timezone=[["-0400"]]  may remove this line to get Universal Time
/// set m=##class(%Net.MailMessage).%New()
/// set m.From=[["test@company.com"]]
/// do m.To.Insert([["receiver@another.com"]])
/// do m.To.Insert([["Joe Smith <jsmith@another.com>"]])
/// set m.Subject="Sent by InterSystems IRIS mail"
/// set m.Charset="iso-8859-1"
/// do m.TextData.Write("This message has been sent using an SMTP server with Authentication.")
/// set status=s.Send(m)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status)
/// quit
///
/// </EXAMPLE>
Property authenticator As %Net.Authenticator;

/// <property>AuthFrom</property> specifies the address to be used for the
/// AUTH parameter of the MAIL FROM SMTP command for SMTP authenticated session.
/// If specified, this property will be the argument of the AUTH= extension to the
/// MAIL FROM command.  This property may be specified as "&lt;&gt;" to indicate that the
/// original submitter of the messge is not known.
Property AuthFrom As %String(MAXLEN = 255, TRUNCATE = 1);

/// If true, the <method>Send</method> method will encode non-ASCII header
/// text according to the rules specified by RFC 2047.  This is the default.
/// Some mail readers do not accept the encoding specified by RFC 2047 and
/// thus we allow disabling this encoding by setting AllowHeaderEncoding=false.
Property AllowHeaderEncoding As %Boolean [ InitialExpression = 1 ];

/// If Send is called and returns an error status, the error
/// message is in the Error property.
Property Error As %String(MAXLEN = 255, TRUNCATE = 1);

/// If true, sending the email will continue if a send fails and failed email
/// addresses will be added to the FailedSend list.
Property ContinueAfterBadSend As %Boolean [ InitialExpression = 0 ];

/// A list of email addresses for which the Send failed.
/// If the Send for any address is successful, then a %Status of $$$OK
/// is returned by Send and this list contains any failed addresses.
/// If Send is not successful for any email address, then an %Status of
/// $$$SMTPNoSend and all address on this list.
/// Use (sender.FailedSend.Count()=0) to test if all sends succeeded.
Property FailedSend As list Of %String(MAXLEN = 8000, TRUNCATE = 1);

/// <property>IPVersion</property> specifies the versin of IP address to be used
/// to connect SMTP server. The valid values are:<br>
/// 0 - Try to connect with IPV4 first if failed then try it again with IPV6.<br>
/// 4 - Connect to SMTP server with IPV4 address.<br>
/// 6 - Connect to SMTP server with IPV6 address.<br>
/// All other values are treated as 0.<br>
Property IPVersion As %Integer [ InitialExpression = 0 ];

/// The %Status to be returned by send.
/// Do not set directly, use SetStatus.
Property Status As %Status [ Internal, Private ];

/// The charset to be used for header fields
Property HeaderCharset As %String(TRUNCATE = 1) [ Internal, Private ];

/// The translate table to be used for header fields
Property HeaderTable As %String(TRUNCATE = 1) [ Internal, Private ];

Property bufcount As %Integer [ InitialExpression = 1 ];

Property Debug As %Integer [ InitialExpression = 0 ];

Parameter Base64Seq = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

Parameter PrintableAscii = " !""""#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~";

/// Get response to mail command.  Use timeout as specified by RFC1123.
Method GetResponse(timeout As %Integer, ByRef responseArray As %String) As %String [ Internal, Private ]
{
}

/// Get the email part of a full address.
Method GetEmail(s As %String) As %String [ Internal, Private ]
{
}

/// Used to send msg to SMTP server.
/// <p>Returns a %Status to indicate success or failure.
/// <p>The <method>send</method> supports the following small subset of permissible
/// message header fields. Set the corresponding MailMessage properties before
/// invoking send.
/// <ul>
/// <li>Date - set from msg.Date; will be set to the current date and time if not specified</li>
/// <li>From - set from msg.From</li>
/// <li>Subject - set from msg.Subject</li>
/// <li>To - set from msg.To by converting to "," separated list</li>
/// <li>Cc - optionally set from msg.Cc by converting to "," separated list</li>
/// <li>Bcc - optionally set from msg.Bcc by converting to "," separated list</li>
/// <li>Sender - optionally set from msg.Sender</li>
/// <li>Reply-To - optionally set from msg.ReplyTo</li>
/// </ul>
/// <p>The "MAIL FROM:" SMTP command uses the Sender field if specified, otherwise the From field.
/// <br>The "RCPT TO:" SMTP command uses the To and Cc lists joined by commas.
/// <br>simple e-mail address must be passed to MAIL and RCPT.
/// Therefore if the address is of the form <i>name &lt;email&gt;</i>,
/// the value passed to the SMTP command is just <i>email</i>.
/// <p>
Method Send(msg As %Net.MailMessage) As %Status [ ProcedureBlock = 1 ]
{
}

/// Send the mail message data to the SMTP server
Method SendMessage(msg As %Net.MailMessage) [ Internal, Private ]
{
}

/// Setup session with the SMTP server.
/// We will use the EHLO command and SMTP authentication as supplied
/// by the authenticator property where possible.
/// If EHLO is not accepted or authentication fails, we will
/// attempt to use the HELO command.
Method Login(ByRef authenticated As %Boolean) [ ProcedureBlock = 1 ]
{
}

/// Encode headers according to rules in RFC 2045.
Method WriteHeader(name As %String, text As %String) [ Internal, Private ]
{
}

/// Handle of large subset of encoding required for structured headers in RFC 2045.<br>
/// Return the encoded header.<br>
/// The following formats are supported:<br>
/// <ul>
/// <li>address comma separated list:  display [&lt;addr&gt;],...</li>
/// <li>message id (not comma separated list: &lt;addr&gt; ..</li>
/// <li>keyword comma separated list: display, ...</li>
/// </ul>
/// keyword list is different from address list because display part<br>
/// of address list part is considered an address if no address is
/// specified.<br>
/// Parenthesized comments are not supported for any of these formats.
Method EncodeStructuredHeader(header As %String, input As %String, keywords As %Boolean) As %String [ Internal, Private ]
{
}

/// Handle the structured headers in RFC 2045 that contain quoted strings
/// which may be encoded, but no other part of the header is encoded.<br>
/// Return the encoded header.<br>
Method EncodeQuotedHeader(header As %String, input As %String) As %String [ Internal, Private ]
{
}

/// Handle the ; separated parts of the structured headers in RFC 2045 that contain quoted strings
/// which may be encoded, but no other part of the header is encoded.<br>
/// Return the encoded header part.<br>
Method EncodeQuotedHeaderPart(input As %String) As %String [ Internal, Private ]
{
}

Method EncodeHeaderPart(header As %String, part As %String, addr As %String, first As %Boolean, termChar As %String, sepChar As %String = " ") As %String [ Private ]
{
}

/// Force JIS string to end in ASCII mode per RFC 1468.
Method endJISInASCII(input As %String) As %String [ Internal, Private ]
{
}

/// Extract and base64 encode enough JIS text to fill out the available space on this line.
Method extractJIStext(len As %Integer, ByRef text As %String, ByRef JIStext As %String) As %String [ Internal, Private ]
{
}

/// Encode header using special quoted printable encoding
/// defined in RFC 2045 for header fields.
Method EncodeQ(input As %String) As %String [ Internal, Private ]
{
}

/// Encode header using base64 encoding
Method EncodeB(input As %String) As %String [ CodeMode = expression, Internal, Private ]
{
}

/// Find the translate table for any non ASCII headers
Method SetHeaderCharset(msg As %Net.MailMessagePart) [ Internal, Private ]
{
}

/// Generate message for unexpected response.
Method UnexpectedResponse(msg As %String, response As %String) As %String [ Internal, Private ]
{
}

/// Return timezone converted to RFC822 format
Method zone() As %String
{
}

/// Return integer or hex padded to 2 place with leading zeros
Method pad2(n As %String) As %String [ CodeMode = expression, Internal, Private ]
{
}

/// Return %Status object
Method GetStatus() As %Status [ CodeMode = expression, Internal, Private ]
{
}

/// Set Status for Send function.
Method SetStatus(status As %Status) [ Internal, Private ]
{
}

/// Error trap
Method zzErrorTrap() As %String [ CodeMode = generator, Private ]
{
}

/// Output stream to SMTP server with no encoding
Method OutputNoEncoding(stream As %Stream.Object) [ Internal, Private ]
{
}

/// Output stream to SMTP server with base64 encoding
Method EncodeStreamBase64(stream As %Stream.Object) [ Internal, Private ]
{
}

/// Base64 encode a string.
Method Base64Encode(b1 As %String, b2 As %String, b3 As %String) As %String [ Internal, Private ]
{
}

/// Send as many lines together as will fit in 512 byte buffer
Method ProcessLine(line As %String) [ Internal, Private ]
{
}

/// Send a, possibly multi-part, message part,
Method SendMultiPart(msg As %Net.MailMessagePart, boundary As %String) [ Internal, Private ]
{
}

/// Check if message part is empty
Method IsPartEmpty(msg As %Net.MailMessagePart) As %Boolean [ Internal, Private ]
{
}

/// Send a single (non multi-part message part.
Method SendMessagePart(msg As %Net.MailMessagePart) [ Internal, Private ]
{
}

/// Encode a stream as quoted printable and output the stream.
Method EncodeStreamQuotedPrintable(stream As %Stream.Object) [ Internal, Private ]
{
}

/// xtext encoding is defined in RFC 1891 as:<p>
/// "xtext" is formally defined as follows:<br>
/// xtext = *( xchar / hexchar )<br>
/// xchar = any ASCII CHAR between "!" (33) and "~" (126) inclusive,
/// except for "+" and "=".<br>
/// ;"hexchar"s are intended to encode octets that cannot appear<br>
/// ;as ASCII characters within an esmtp-value.
/// hexchar = ASCII "+" immediately followed by two upper case hexadecimal digits
Method EncodeXtext(text As %String) As %String [ ProcedureBlock = 1 ]
{
}

/// Append to current output line.
/// If the line becomes longer than 75 charcaters, then start a new line.
Method AppendToOutput(ByRef out As %String, str As %String) [ Internal, Private ]
{
}

/// Scan text to see if any non-ascii chars
ClassMethod IsAscii(stream As %Stream.Object) As %Integer [ Internal, Private ]
{
}

}
