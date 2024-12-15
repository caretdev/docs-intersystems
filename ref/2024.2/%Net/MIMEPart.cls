/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.MIMEPart">MIME Messages</a>.</p>
/// %Net.MIMEPart holds a MIME message part.
Class %Net.MIMEPart Extends %RegisteredObject [ System = 4 ]
{

/// Parts of a multipart message.
/// Either Parts must contain MIMEParts or Body must be specified, but not both.
Property Parts As list Of %Net.MIMEPart;

/// The body of the attachment as a stream.
/// Either Parts must contain MIMEParts or Body must be specified, but not both.
Property Body As %RegisteredObject;

/// If PartOwnedStream is true, then the part owns the stream and should cleasr it when
/// the part is deleted.
Property PartOwnedStream As %Boolean;

/// Set the body of the attachment to a stream.
/// If the stream contains a Headers attribute, this attribute is used to
/// initialize the headers of the MIME part.
/// The %CSP.BinaryStream that is returned by the CSP engine is an example of such
/// a stream with Headers attribute.
Method BodySet(body As %CSP.BinaryStream = "") As %Status
{
}

/// Optionally initialize the body (and possibly the headers) during construction.
Method %OnNew(body As %CSP.BinaryStream = "") As %Status
{
}

/// Make sure stream is Clear'ed when this part is closed
Method %OnClose() As %Status [ Private, ServerOnly = 1 ]
{
}

/// The MIME headers for this attachment.
/// The key is the header name in upper case.
/// The stored value is $lb(headerName,headerValue) where<br>
/// <var>headerName</var> is the user specified header name.<br>
/// <var>headerValue</var> is the header value stripped of leading and trailing whitespace.
Property Headers As array Of %List [ Internal, Private ];

/// Add a header to the MIME part. The basic Content headers that you may want are covered by
/// properties of this class:  Content-Type, Content-Transfer-Encoding, Content-Id and Content-Location.
Method SetHeader(name As %String, value As %String)
{
}

/// Remove a header to the MIME part.
Method RemoveHeader(name As %String)
{
}

/// Lookup a previously set header.  The lookup is not case sensitive.
/// However, the original name is returned.
Method GetHeader(name As %String, Output originalName As %String) As %String
{
}

/// Get the next header based on the upper case key used to store the headers.
Method NextHeader(name As %String) As %String [ CodeMode = expression ]
{
}

/// Clear the list of headers
Method ClearHeaders() As %Status [ CodeMode = expression ]
{
}

/// Sets/gets the 'Content-Type:' MIME header.  A Content-Type specifies the media type
/// of the <PROPERTY>Body</PROPERTY> data. A Content-Transfer-Encoding header may be used
/// to indicate any additional content coding applied to the type.
Property ContentType As %String(MAXLEN = "") [ Calculated ];

Method ContentTypeGet() As %String [ CodeMode = expression ]
{
}

Method ContentTypeSet(contenttype As %String) As %Status
{
}

/// Attributes of Content-Type header stored in multidimensional array.
Property ContentTypeAttributes As %String [ Internal, MultiDimensional, Private ];

/// Parse the Content-Type header into its attributes
Method ParseContentType(value As %String) [ Internal, Private ]
{
}

/// Return an attribute of a previously stored Content-Type.
Method GetContentTypeAttribute(name As %String) [ CodeMode = expression ]
{
}

/// If the <PROPERTY>ContentType</PROPERTY> starts with 'text/' then this is the
/// charset to encode the contents with. This is actually specified in the MIME
/// Content-Type header with something like:<p>
///
/// Content-Type: text/html; charset=UTF-8<p>
///
/// You must set this property after you set the <property>ContentType</property>
/// or it will overwrite this value.
Property ContentCharset As %String(MAXLEN = "") [ Calculated ];

Method ContentCharsetGet() As %String [ CodeMode = expression ]
{
}

Method ContentCharsetSet(charset As %String) As %Status
{
}

/// Content-Transfer-Encoding header. Can be one of "base64", "quoted-printable", "7bit", "8bit", "binary".
Property ContentTransferEncoding As %String(VALUELIST = ",base64,quoted-printable,7bit,8bit,binary");

Method ContentTransferEncodingSet(value As %String) As %Status
{
}

Method ContentTransferEncodingGet() As %String [ CodeMode = expression ]
{
}

/// The normalized content-location.
/// Any leading or trailing whitespace and comments are removed.
Property ContentLocation As %String(MAXLEN = "");

Method ContentLocationSet(value As %String) As %Status
{
}

/// The normalized content-id.
/// Any leading or trailing whitespace and enclosing <> are removed.
Property ContentId As %String(MAXLEN = "");

Method ContentIdSet(value As %String) As %Status
{
}

/// Boundary to used to separate parts of the message.
/// If none is specified, a default is created.
Property Boundary As %String(MAXLEN = "");

Method BoundaryGet() As %String
{
}

/// Strip enclosing <> from Content-Id header.
/// Input must already be stripped of lleading and trailing whitespace
ClassMethod NormalizeContentId(contentId As %String) As %String [ CodeMode = expression ]
{
}

/// Strip whitespace and comments from the Content-Location header.
/// Input must already be stripped of lleading and trailing whitespace
ClassMethod NormalizeContentLocation(contentLocation As %String) As %String
{
}

}
