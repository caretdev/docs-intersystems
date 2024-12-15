/// The <class>%CSP.StreamServer</class> serves any stream data directly from InterSystems IRIS.
/// It derives from %CSP.Page and implements the <method>OnPage()</method> and
/// <method>OnPreHTTP()</method> methods.<br>
/// You can control how the stream is sent using the stream's attributes, these attributes
/// can be accessed via properties in the <class>%CSP.CharacterStream</class> and
/// <class>%CSP.BinaryStream</class>, however you can also set these directly in any stream
/// class. The attributes are:
/// <ol>
/// <li><b>ContentType</b> - Sets the %response.ContentType property</li>
/// <li><b>CharSet</b> - Sets the %response.CharSet property</li>
/// <li><b>Expires</b> - Sets the %response.Expires property</li>
/// <li><b>ContentDisposition</b> - Set the 'Content-Disposition' response header</li>
/// </ol>
/// You can set the default charset to server up character files in using the global
/// ^%SYS("CSP","DefaultFileCharset"), and if you need to define settings per extension (in uppercase)
/// you can use ^%SYS("CSP","MimeFileClassify",$zcvt(ext,"U"))=$listbuild(type,bin,charset) where:
/// <ol>
/// <li>type - Content Type value, e.g. 'text/javascript'</li>
/// <li>bin - 1 if this is binary and 0 if this is a character file</li>
/// <li>charset - For character files the charset to report in the charset header</li></ol>
/// If nothing is defined then for character files we use the default charset associated
/// with the file device in InterSystems IRIS.
Class %CSP.StreamServer Extends %CSP.Page [ System = 3 ]
{

/// Stream serving does not need the session
Parameter UseSession As BOOLEAN = 0;

/// The <method>OnPostHTTP()</method> is called by the CSP dispatcher before the HTTP
/// headers have been sent.  Here, we check that the incoming STREAMOID value is valid,
/// then we set the appropriate content type and content length values into the %response
/// object (see <class>%CSP.Request</class>), in preparation for sending the image data
/// in the <method>OnPage()</method>.
ClassMethod OnPreHTTP() As %Boolean
{
}

/// The <method>OnPage()</method> is called by the CSP dispatcher to generate the
/// page content.  For %CSP.StreamServer, since the content type is actually a stream, not HTML
/// we simply write out the stream data.
ClassMethod OnPage() As %Status
{
}

/// Get oid for file
ClassMethod GetOidForFile(file As %String) As %ObjectIdentity [ Internal ]
{
}

/// Classify a file type
ClassMethod FileClassify(ext As %String, ByRef type As %String, ByRef bin As %Boolean, ByRef charset As %String) As %Boolean
{
}

/// Convert a $H value into an HTTP date format. It assumes that $H is local
/// time and converts it to UTC
ClassMethod ToHTTPDate(h As %String) As %String
{
}

/// Convert an HTTP date to a $HOROLOG format date, converts from UTC time
/// to the local time.
ClassMethod FromHTTPDate(hd As %String) As %String
{
}

}
