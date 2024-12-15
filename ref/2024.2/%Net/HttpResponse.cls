/// This class encapsulates the response from the web server.
Class %Net.HttpResponse Extends %RegisteredObject [ System = 3 ]
{

/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.HttpResponse">Sending HTTP Requests</a>.</p>
/// The stream or a string contains all the data sent by the web server after the HTTP headers.
/// You can test if this is a stream with $isobject(response.Data) and if it is not a stream
/// then it is a string with the data in it.
Property Data As %RawString;

/// The HTTP status line. This is the first line of the response and signals
/// if the request was successful or if there was a problem.
Property StatusLine As %String;

/// The version of HTTP that the server supports.
Property HttpVersion As %String;

/// The HTTP status code. This is useful to determine if the request was
/// successful. Look in the rfc for HTTP to see which codes are supported
/// and what they mean. A human readable form of this code is stored as
/// the <PROPERTY>ReasonPhrase</PROPERTY>
Property StatusCode As %Integer;

/// This is the human readable reason that goes with the <PROPERTY>StatusCode</PROPERTY>.
Property ReasonPhrase As %String;

/// Storage for the HTTP headers in the reply.
Property Headers As %String [ MultiDimensional ];

/// Value of the HTTP 'Content-Type:' header.
Property ContentType As %String;

/// Length of the <PROPERTY>Data</PROPERTY>. Comes from the HTTP 'Content-Length:' header.
Property ContentLength As %String;

/// If specified the boundary signal for the <PROPERTY>Data</PROPERTY>
Property ContentBoundary As %String;

/// Additional information specified in the HTTP headers about the <PROPERTY>Data</PROPERTY>.
Property ContentInfo As %String;

/// Used internally to set a header name and value. This can also be called externally
/// if you want to record another header value.
Method SetHeader(name As %String, value As %String)
{
}

/// Get the value associated with this header.
Method GetHeader(name As %String) As %String [ CodeMode = expression ]
{
}

/// Return the name of the next header that was received from the web server.
Method GetNextHeader(name As %String) As %String [ CodeMode = expression ]
{
}

/// Output the HTTP headers from the web server to the current device. The headers will not
/// be in the same order but this does not alter the semantics.
Method OutputHeaders(test As %Boolean = 0)
{
}

/// Output the full response from the web server to the current device. The headers will not
/// be in the same order but this does not alter the semantics. This is useful to see what
/// the web server sent back.
Method OutputToDevice()
{
}

}
