/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.MIMEReader">MIME Messages</a>.</p>
/// %Net.MIMEReader inputs a MIME document and represents it by a top-level <class>%Net.MIMEPart</class>
/// with multiple parts specified.
Class %Net.MIMEReader Extends %RegisteredObject [ System = 4 ]
{

/// Stream containing the MIME message.
/// Declared as %RegisteredObject to prevent auto create of serial object.
Property inputStream As %RegisteredObject [ Private ];

/// Current buffer for stream input.
Property buffer As %String [ Private ];

/// Position of next input to process in the stream buffer
Property pos As %Integer [ Private ];

/// If true, previous line ended in CR which was discarded
Property previousCR As %Boolean [ Private ];

/// Open file that contains the MIME message.
Method OpenFile(source As %String) As %Status
{
}

/// Open stream that contains the MIME message.
Method OpenStream(source As %AbstractStream) As %Status
{
}

/// <method>ReadMIMEMessage</method> parses the MIME message in previously opened
/// file or stream, and creates a %Net.MIMEPart based on this MIME message.
Method ReadMIMEMessage(Output message As %Net.MIMEPart) As %Status
{
}

/// <method>ReadMIMEBody</method> parses the MIME body in previously opened file or stream
/// and makes it the body the MIME message represented by <var>message</var> %Net.MIMEPart.
/// Headers for the MIME message are assumed to have been processed and included in <var>message</var>.
Method ReadMIMEBody(message As %Net.MIMEPart) As %Status
{
}

/// Read the headers of the current message part and create the %Net.MIMEPart.
Method readHeader(Output message As %Net.MIMEPart, isMultiPart As %Boolean) As %Status
{
}

/// Read the body of the current message part.
Method readBody(message As %Net.MIMEPart, messageBoundary As %String, ByRef lastPart As %Boolean) As %Status
{
}

/// Get the next header line.  Return false if no more lines.
Method getLine(ByRef line As %String) As %Status [ Internal, Private ]
{
}

/// Decode a line of the base64 encoded body.
/// The length of the input must be a multiple of 4.
ClassMethod DecodeBase64(input As %String) As %String [ CodeMode = expression ]
{
}

/// Decode a line of the quoted printable encoded body
ClassMethod DecodeQP(input As %String) As %String
{
}

/// Decode and return the MIME header value passed in <var>input</var> argument
/// according to RFC 2047.
ClassMethod DecodeHeader(input As %String) As %String
{
}

}
