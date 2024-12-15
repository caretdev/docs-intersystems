/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.MIMEWriter">MIME Messages</a>.</p>
/// %Net.MIMEWriter outputs a MIME document as represented by a top-level <class>%Net.MIMEPart</class>
/// with multiple parts specified.
Class %Net.MIMEWriter Extends %RegisteredObject [ System = 4 ]
{

Method %Write(text As %String) [ Internal, Private ]
{
}

/// Destination for %Net.MIMEWriter output.
/// Possible values are "file", "stream" and "device".
Property OutputDestination As %String [ InitialExpression = "device", Private ];

/// Stream for output to stream or file.
/// Will store a stream,
///   but declare as %RegisteredObject to prevent auto create of serial object.
Property OutputStream As %RawString [ Private ];

/// <method>OutputToDevice</method> sets output to the current device which
/// is the default if no output method is specified.
Method OutputToDevice() As %Status
{
}

/// <method>OutputToStream</method> sets output to be directed to a stream.
/// <var>export</var> is the exported stream.
/// If <var>export</var> is the oref of a stream, the MIME document will
/// be written to this existing stream at the current position.
/// If <var>export</var> is "", then a new %GlobalBinaryStream will be
/// created to contain the MIME document and its oref returned.
/// In this case, <var>export</var> must be passed by reference.
Method OutputToStream(ByRef export As %BinaryStream) As %Status
{
}

/// <method>OutputToFile</method> sets output to be directed to a
/// new file, named <var>filename</var>.
/// The file is created with parameters "WNS".
Method OutputToFile(filename As %String) As %Status
{
}

/// <method>WriteMIMEMessage</method> outputs a MIME message.
Method WriteMIMEMessage(message As %Net.MIMEPart) As %Status
{
}

/// <method>WriteMIMEBody</method> outputs the body of a MIME multipart message.
/// If the message is multipart, the caller is expected to output needed headers.
/// If the message, is not multipart, then headers are output.
Method WriteMIMEBody(message As %Net.MIMEPart) As %Status
{
}

/// Write the body.
Method WriteBody(message As %Net.MIMEPart) As %Status [ Internal, Private ]
{
}

/// Write a MIME part
Method WritePart(part As %Net.MIMEPart) As %Status [ Internal, Private ]
{
}

/// Write a header
Method WriteHeader(name As %String, value As %String)
{
}

/// Write stream -- base64 encoded
Method EncodeStreamBase64(stream As %Stream.Object) As %Status [ Internal, Private ]
{
}

/// Write stream -- quoted printable encoded
Method EncodeStreamQuotedPrintable(stream As %Stream.Object) As %Status [ Internal, Private ]
{
}

/// Write stream - not encoded
Method OutputNoEncoding(stream As %Stream.Object) [ Internal, Private ]
{
}

/// Return integer or hex padded to 2 place with leading zeros
Method pad2(n As %String) As %String [ CodeMode = expression, Internal, Private ]
{
}

/// Append encoded data to output buffer
Method AppendToOutput(ByRef out As %String, str As %String) [ Internal, Private ]
{
}

/// Output buffered output
Method ProcessLine(line As %String) [ Internal, Private ]
{
}

}
