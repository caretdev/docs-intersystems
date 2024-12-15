/// Abstract superclass for REST implementation classes generated from OpenAPI specifications.
Class %REST.Impl Extends %RegisteredObject [ System = 4 ]
{

/// If ExposeServerExceptions is overridden as true, then details of internal errors will be exposed.
Parameter ExposeServerExceptions = 0;

/// The HTTP Status code to be sent back in the response.  The HTTP status codes are defined
/// in RFC 2068.<br>
/// <br>
/// <A HREF="http://www.faqs.org/rfcs/rfc2068.html">http://www.faqs.org/rfcs/rfc2068.html</A>
/// <br>
ClassMethod %SetStatusCode(statusCode As %String)
{
}

/// Set the content-type header of the response
ClassMethod %SetContentType(contentType As %String)
{
}

/// Get the content-type header of the request
ClassMethod %GetContentType()
{
}

/// Sets a custom HTTP header into the reply.
/// If you set the same header twice it will append the information
/// to the first with a ',' between them.  Note that <var>name</var> is not case sensitive, however we will
/// remember the case of the header when sending this to the client.
ClassMethod %SetHeader(name As %String, value As %String)
{
}

/// Sets a custom HTTP Cookie into the reply.
/// Takes the value of a Set-Cookie header as a String and parses out its properties.
/// These include name,value,expires,path,etc...
/// Created for use with WSGI.
///
ClassMethod %SetCookieFromHeader(cookie As %String)
{
}

/// Helper method that sets a header if it is currently empty, if it already has a value it does nothing.
/// Returns true if the header was set and false if it did nothing.
ClassMethod %SetHeaderIfEmpty(name As %String, value As %String) As %Boolean
{
}

/// Return the value of the <PARAMETER>name</PARAMETER> request header.
/// Note that <var>name</var> is not case sensitive
ClassMethod %GetHeader(name As %String) As %String
{
}

/// Remove a header from the response. Note that <var>name</var> is not case sensitive
ClassMethod %DeleteHeader(name As %String)
{
}

/// Report an error when processing a request.
/// The implementation class may contain an override of %ReportRESTError in
/// order to format the error response as required by the REST application.
/// The override should use the %WriteResponse method to return the error response.
ClassMethod %ReportRESTError(statusCode As %String, sc As %Status, exposeServerExceptions As %Boolean = 0)
{
}

/// Check that the ACCEPT request header is included in the produces list.
ClassMethod %CheckAccepts(produces As %String) As %Boolean
{
}

/// %WriteResponse is used by the dispatch class to write the response to this request.
ClassMethod %WriteResponse(response)
{
}

/// Log an API Management error
ClassMethod %LogError(methodName As %String, error As %String, data As %String)
{
}

/// Check that all items of an array are unique.
ClassMethod %CheckUniqueArray(array As %ListOfDataTypes) As %Boolean [ Internal ]
{
}

}
