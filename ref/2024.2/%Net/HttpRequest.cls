/// <p><b>For information on using this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.HttpRequest">Sending HTTP Requests</a>.</p>
/// %Net.HttpRequest provides an interface to issue HTTP requests to a web server and read the response.
/// This allows you to interact with other web sites, for example you could issue a request to get
/// a stock quote from another site, then parse the information returned to store the stock value
/// in the local database. This implementation is designed to the HTTP/1.1 specification
/// <a href="http://www.w3.org/Protocols/rfc2616/rfc2616.html">RFC 2616</a>.
/// In normal use you create a single %Net.HttpRequest object and use it to issue as many
/// requests as you need to the web server, each %Net.HttpRequest object can be thought of as
/// a single instance of an internet browser.
/// On completion of each request, it returns a <CLASS>%Net.HttpResponse</CLASS>
/// object in the <PROPERTY>HttpResponse</PROPERTY> property. This is used to see the reponse
/// from the web server. Note that when you call <METHOD>Get</METHOD>, <METHOD>Head</METHOD>,
/// <METHOD>Post</METHOD>, or <METHOD>Put</METHOD>, it will automatically <METHOD>Reset</METHOD>
/// the %Net.HttpRequest object ready for another request. For example:
/// <EXAMPLE>
/// Set httprequest=##class(%Net.HttpRequest).%New()
/// Set httprequest.Server="www.intersystems.com"
/// Do httprequest.Get("/")
/// Do httprequest.HttpResponse.OutputToDevice()
/// Do httprequest.Get("/cache/")
/// Do httprequest.HttpResponse.OutputToDevice()
/// </EXAMPLE>
/// In order to send parameters on the URL, i.e. when you see a URL like
/// <pre>
/// http://www.demo.com/page.html?PARAM1=TEST&amp;PARAM2=HELLO
/// </pre>
/// You use the <METHOD>SetParam</METHOD> method to add these parameters one by one. For example
/// to get the index page from Documatic you do:
/// <EXAMPLE>
/// Set httprequest=##class(%Net.HttpRequest).%New()
/// Set httprequest.Port=1972
/// Do httprequest.SetParam("PAGE","INDEX")
/// Do httprequest.Get("/csp/docbook/%CSP.Documatic.cls")
/// Do httprequest.HttpResponse.OutputToDevice()
/// </EXAMPLE>
/// You may also pass the query parameters on the <method>Get</method> call directly too as
/// long as they are correctly escaped.<br>
/// Form data can also be sent with this class. This is done by first inserting the form
/// name/value pairs using the <METHOD>InsertFormData</METHOD>. Then the data is
/// <METHOD>Post</METHOD> to the web server, for example something like:
/// <EXAMPLE>
/// Do httprequest.InsertFormData("element","value")
/// Do httprequest.Post("/cgi-bin/script.CGI")
/// </EXAMPLE>
/// You can specify default values for this class by setting the system wide global
/// ^%SYS("HttpRequest",name)=value which will set the property 'name' to the 'value'
/// as part of the <method>InitHeaders</method> initialization. For namespace specific settings
/// set the ^SYS("HttpRequest",name)=value global, with namespace specific settings taking
/// precedence over global settings.
Class %Net.HttpRequest Extends %RegisteredObject [ ServerOnly = 1, System = 3 ]
{

Method %OnNew(initvalue As %String = "") As %Status [ Internal ]
{
}

Method InitHeaders(server As %String, referer As %String, useragent As %String) As %Status [ Internal ]
{
}

Method %OnClose() As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Time to first character
Property TTFC As %Float;

/// Time to last character
Property TTLC As %Float;

/// Number of characters sent
Property SentChars As %Integer [ InitialExpression = 0 ];

/// Number of bytes received (not characters)
Property RecChars As %Integer [ InitialExpression = 0 ];

/// Internal structure used to store the collection of headers. This is
/// used so the user can add headers that are not explicitly defined in
/// this class to the request.
Property Headers As %String [ Internal, MultiDimensional, Private ];

/// Add a header to the http request. Most of the normal headers that you may want
/// are covered by properties of this class such as <PROPERTY>Date</PROPERTY> however
/// if you wish to add a non standard header then call this. For example:
/// <EXAMPLE>
/// Do httprequest.SetHeader("MyHeader","Data to display")
/// </EXAMPLE>
/// Note that headers such as Content-Type, Content-Encoding, and Content-Length are
/// part of the entity body rather than the http main headers and as such as forwarded
/// to the <PROPERTY>ContentType</PROPERTY>, <PROPERTY>ContentEncoding</PROPERTY> and
/// trying to set the Content-Length is just ignored as this is a read only property.
/// Also any attempt to set the 'Connection' header is ignored at this request class
/// does not support persistent connections.
Method SetHeader(name As %String, value As %String) As %Status
{
}

/// Allows you to obtain the current value for any of the Http headers that have
/// been set.
Method GetHeader(name As %String) As %String
{
}

/// Remove a Http header value
Method RemoveHeader(name As %String) As %Status
{
}

/// Output the full list of Http headers that will be sent to the machine
/// <PROPERTY>Server</PROPERTY> for the item <PROPERTY>Location</PROPERTY> to the current device.
/// This does not include any entity headers associated with the <PROPERTY>EntityBody</PROPERTY>.
Method OutputHeaders() As %Status
{
}

/// Return the full list of Http headers that will be sent to the machine
/// <PROPERTY>Server</PROPERTY> for the item <PROPERTY>Location</PROPERTY>.
/// This does not include any entity headers associated with the <PROPERTY>EntityBody</PROPERTY>.
Method ReturnHeaders() As %String
{
}

/// Get the authentication token based on the specified authentication scheme.
Method GetAuthenticationToken(scheme As %String, challenge As %String) As %String [ Internal ]
{
}

/// Extract the schemes from the WWW-Authenticate headers and get an
/// Authuthentication token for the first scheme on our list thta is configured.
Method ProcessAuthenticationHeader(authenticateHeader As %String, Output scheme As %String) As %String [ Internal ]
{
}

/// Close the authentication handle
Method AuthenticationClose() [ Internal ]
{
}

/// Sets/get the 'Authorization:' header field in the Http request.<p>
/// A user agent that wishes to authenticate itself with a server--
/// usually, but not necessarily, after receiving a 401 response--may do
/// so by including an Authorization header field with the request. The
/// Authorization field value consists of credentials containing the
/// authentication information of the user agent for the realm of the
/// resource being requested.<p>
/// This class understands the Basic authentication mechanism and if you set
/// the <property>Username</property> and <property>Password</property> properties
/// then it will send this information suitably encoded to the server with
/// each request. Note that Basic authentication is not secure and sends to username
/// and password over the network in just base64 encoded form.
Property Authorization As %String [ Calculated ];

Method AuthorizationGet() As %String [ CodeMode = expression, Internal ]
{
}

Method AuthorizationSet(value As %String) As %Status [ CodeMode = expression, Internal ]
{
}

/// The <property>Username</property> is used to construct the response for SPNEGO or NTLM.
/// If not specfied on Windows, then the current login context will be used for SPNEGO and NTLM.<br/>
/// Previously setting the Username property, as a side-effect, sent a Basic Authorization header to the server.
/// This behavior will only continue for HTTP 1.0 requests.
/// For HTTP 1.1 requests an unsolicited Authorization header will never be sent unless the
/// InitiateAuthentication property is set.</br>
/// If you manually set the <property>Authorization</property> header this property will be ignored.<br>
/// If Username'="" and you do not wish %Net.HttpRequest to initiate authentication as Basic,
/// then InitiateAuthentication must be set to "" (for not initiate) or to the initiate scheme.
Property Username As %Library.Username;

/// The <property>Password</property> is used to construct the response for SPNEGO or NTLM.
/// If not specfied on Windows, then the current login context will be used for SPNEGO and NTLM.<br/>
/// If you manually set the <property>Authorization</property> header this property will be ignored.
Property Password As %String;

/// A client may initiate a connection to the server with an "Authorization" header containing
/// the initial token for the server for a chosen authentication scheme.
/// %Net.HttpRequest is asked to initiate the connection by setting the InitiateAuthentication property
/// to a string which is a single scheme name. This form will bypass the initial 401 error from
/// the server when the client knows that the server will accept the specified scheme.
/// Supported schemes are Negotiate, NTLM and Basic.
/// The default for InitiateAuthentication is Basic.
/// However, if InitiateAuthentication=Basic and Username="", then InitiateAuthentication will be ignored.
Property InitiateAuthentication As %String [ InitialExpression = "Basic" ];

/// %Net.HttpRequest will attempt to always respond with an Authorization header with a supported
/// authentication scheme to a 401 status code. The supported authentication schemes
/// are specified by the AuthenticationSchemes property as a comma separated list of case-sensitive
/// authentication schemes.
/// The possible authentication schemes are Negotiate, NTLM and Basic.<br/><br/>
///
/// The caller needs to supply Username and Password properties.
/// If the Username  property is not specified on Windows and a 401 status code associated with
/// WWW-Authenticate header for SPNEGO or NTLM is received,
/// then the current login context will be used.<br/><br/>
///
/// When responding to a 401 status code, the authentication scheme that is tried is picked
/// from the intersection of those specified by WWW-Authenticate headers in the response
/// and rhe list in the AuthenticationSchemes property.
/// The schemes are checked in the order of the AuthenticationSchemes list.
/// The first scheme which is supported and configured for IRIS will be used to return an
/// Authorization header with that scheme.
/// In order to encourage the user to try more secure schemes first, the default value for
/// Authentication schemes is "Negotiate,NTLM,Basic".
Property AuthenticationSchemes As %String [ InitialExpression = "Negotiate,NTLM,Basic" ];

/// The authentication scheme that was used to do the most recent authentication.
Property CurrentAuthenticationScheme As %String;

/// If an attempt to get an authentication handle or token for a scheme fails,
/// then the underlying error is saved to the AuthenticationErrors property.<br/>
/// The value of AuthenticationErrors is a $list which contains the errors.
/// Each entry is of the form:  <scheme> ERROR: <messsage>
Property AuthenticationErrors As %List;

/// The maximum of authentication round-trips.
Property MaxAuthenticationDepth As %Integer [ InitialExpression = 6 ];

/// Sets/get the 'Date:' header field in the HTTP request.<p>
/// The Date general-header field represents the date and time at which
/// the message was originated, having the same semantics as orig-date in
/// RFC 822. The field value is an HTTP-date. A date should only be included
/// if the message contains an entity body and even then it is optional.
/// An example is<p>
/// Date: Tue, 15 Nov 1994 08:12:31 GMT
Property Date As %String [ Calculated ];

Method DateGet() As %String [ CodeMode = expression, Internal ]
{
}

Method DateSet(value As %String) As %Status [ CodeMode = expression, Internal ]
{
}

/// Internal value to store cache device used for the Http request
Property Device As %String [ Internal, Private ];

/// Internal state of the current device
Property DeviceState As %String [ Internal, Private ];

/// If set to true then this will force the %Net.HttpRequest class to reuse the existing connection
/// to the web server if the socket is already open. If there is any error it will be reported to
/// the caller. This has been introduced to support reliable SOAP messaging, so should not normally
/// be set by other code.
Property ForceReuseDevice As %Boolean [ InitialExpression = 0 ];

/// Internal value to allow us to raise an error on the next socket open call
Property ErrorOnNextOpen As %Boolean [ InitialExpression = 0, Internal, Private ];

/// Internal value to store time when connection was last used
Property TimeLastUsed As %String [ Internal, Private ];

/// When using a 'keep-alive' HTTP connection this is the maximum time we will keep the socket open for in seconds.
/// If the socket is open for longer than this then it may well have been closed by a firewall etc. so we will start
/// a new connection automatically. Set this property to 0 to disable keep-alive persistent HTTP connections.
Property SocketTimeout As %Integer [ InitialExpression = 115 ];

/// When an Entity-Body is included with a message, the data type of that
/// body is determined via the header fields Content-Type and Content-
/// Encoding. These define a two-layer, ordered encoding model.<p>
/// This is a stream so to insert into this stream use:
/// <EXAMPLE>
/// Do oref.EntityBody.Write("Data into stream")
/// </EXAMPLE>
/// See <CLASS>%AbstractStream</CLASS> for more information about streams.
/// Note that setting a new Entity-Body will reset the <property>ContentType</property>,
/// <property>ContentCharset</property> and <property>ContentEncoding</property> as these
/// values are stored in the Entity-Body stream as stream attributes.
Property EntityBody As %GlobalBinaryStream;

/// Internal only property to indicate that special buffering is to be used for SOAP
Property SOAPBuffering As %Boolean [ Internal ];

/// If specified use this local network interface when opening the TCP/IP socket. This becomes
/// the /BINDTO open parameter.
Property LocalInterface As %String;

/// The From request-header field, if given, should contain an Internet
/// e-mail address for the human user who controls the requesting user
/// agent. The address should be machine-usable, as defined by mailbox in
/// RFC 822 [7] (as updated by RFC 1123 [6]):<p>
///
/// From = "From" ":" mailbox<p>
///
/// An example is:<p>
///
/// From: webmaster@w3.org<p>
///
/// This header field may be used for logging purposes and as a means for
/// identifying the source of invalid or unwanted requests. It should not
/// be used as an insecure form of access protection. The interpretation
/// of this field is that the request is being performed on behalf of the
/// person given, who accepts responsibility for the method performed. In
/// particular, robot agents should include this header so that the
/// person responsible for running the robot can be contacted if problems
/// occur on the receiving end.<p>
///
/// The Internet e-mail address in this field may be separate from the
/// Internet host which issued the request. For example, when a request
/// is passed through a proxy, the original issuer's address should be
/// used.<p>
Property From As %String [ Calculated ];

Method FromGet() As %String [ CodeMode = expression, Internal ]
{
}

Method FromSet(value As %String) As %Status [ CodeMode = expression, Internal ]
{
}

/// The HTTP version we should report to the server when making the request.
/// Defaults to '1.1'.
Property HTTPVersion As %String [ InitialExpression = "1.1" ];

/// The If-Modified-Since request-header field is used with the GET
/// method to make it conditional: if the requested resource has not been
/// modified since the time specified in this field, a copy of the
/// resource will not be returned from the server; instead, a 304 (not
/// modified) response will be returned without any Entity-Body.<p>
///
/// If-Modified-Since = "If-Modified-Since" ":" HTTP-date<p>
///
/// An example of the field is:<p>
///
/// If-Modified-Since: Sat, 29 Oct 1994 19:43:31 GMT<p>
///
/// The purpose of this feature is to allow efficient updates of cached
/// information with a minimum amount of transaction overhead.
Property IfModifiedSince As %String [ Calculated ];

Method IfModifiedSinceGet() As %String [ CodeMode = expression, Internal ]
{
}

Method IfModifiedSinceSet(value As %String) As %Status [ CodeMode = expression, Internal ]
{
}

/// The Pragma general-header field is used to include implementation-
/// specific directives that may apply to any recipient along the
/// request/response chain. All pragma directives specify optional
/// behavior from the viewpoint of the protocol; however, some systems
/// may require that behavior be consistent with the directives.<p>
///
/// Pragma = "Pragma" ":" 1#pragma-directive<p>
///
/// pragma-directive = "no-cache" | extension-pragma<br>
/// extension-pragma = token [ "=" word ]
Property Pragma As %String [ Calculated ];

Method PragmaGet() As %String [ CodeMode = expression, Internal ]
{
}

Method PragmaSet(value As %String) As %Status [ CodeMode = expression, Internal ]
{
}

/// The Referer request-header field allows the client to specify, for
/// the server's benefit, the address (URI) of the resource from which
/// the Request-URI was obtained. This allows a server to generate lists
/// of back-links to resources for interest, logging, optimized caching,
/// etc. It also allows obsolete or mistyped links to be traced for
/// maintenance. The Referer field must not be sent if the Request-URI
/// was obtained from a source that does not have its own URI, such as
/// input from the user keyboard.<p>
///
/// Referer = "Referer" ":" ( absoluteURI | relativeURI )<p>
///
/// Example:<p>
///
/// Referer: http://www.w3.org/hypertext/DataSources/Overview.html<p>
///
/// If a partial URI is given, it should be interpreted relative to the
/// Request-URI. The URI must not include a fragment.<p>
///
/// <b>Note:</b> that when you call <METHOD>Reset</METHOD> this
/// field is automatically updated with the last request URI, i.e. <PROPERTY>Location</PROPERTY>.
Property Referer As %String [ Calculated ];

Method RefererGet() As %String [ CodeMode = expression, Internal ]
{
}

Method RefererSet(value As %String) As %Status [ CodeMode = expression, Internal ]
{
}

/// The IP address or machine name of the web server that you wish to
/// connect to. This defaults to 'localhost', i.e. your current machine
/// if not specified. This also sets the 'Host' http header field.
Property Server As %String [ Calculated ];

Method ServerGet() As %String [ CodeMode = expression, Internal ]
{
}

Method ServerSet(value As %String) As %Status [ CodeMode = expression, Internal ]
{
}

/// The User-Agent request-header field contains information about the
/// user agent originating the request. This is for statistical purposes,
/// the tracing of protocol violations, and automated recognition of user
/// agents for the sake of tailoring responses to avoid particular user
/// agent limitations. Although it is not required, user agents should
/// include this field with requests. The field can contain multiple
/// product tokens and comments identifying the agent and
/// any subproducts which form a significant part of the user agent. By
/// convention, the product tokens are listed in order of their
/// significance for identifying the application.<p>
///
/// User-Agent = "User-Agent" ":" 1*( product | comment )<p>
///
/// The default value of this field is:<p>
///
/// User-Agent: Mozilla/4.0 (compatible; Cache;)<p>
Property UserAgent As %String [ Calculated ];

Method UserAgentGet() As %String [ CodeMode = expression, Internal ]
{
}

Method UserAgentSet(value As %String) As %Status [ CodeMode = expression, Internal ]
{
}

/// Name of item to retrieve from the web server. This is always an
/// absolute path, so if you wish to retrieve the document that is refered
/// to from the URI 'http://machine/cache/index.html' the Location will be<p>
/// <i>cache/index.html</i><p>
/// All the request methods such as <METHOD>Get</METHOD> take the location as
/// the first parameter to make calling the method easier. Note the location does
/// not contain a leading '/' character as this is implicit.
Property Location As %String;

Method LocationSet(val As %String) As %Status [ Internal ]
{
}

/// The TCP/IP port number to connect to. This is normally port 80 (the default)
/// unless the web server has been configured to run on an different port.
Property Port As %Integer;

Method PortGet() As %Integer [ Internal ]
{
}

/// If not using a proxy server and this is true then it issues a request for an https page
/// rather than the normal http page. This also changes the default <property>Port</property>
/// on the target system to 443 the https port.<br>
/// If using a proxy server use of https is determined by <property>ProxyHTTPS</property>
/// and <property>Https</property> controls use of a secure SSL connection to the proxy
/// server.  In this case the default <property>ProxyPort</property> becomes,
/// 443 the https port.
Property Https As %Boolean;

/// The name of the activated TLS/SSL configuration to use for https requests.
Property SSLConfiguration As %String;

/// If request uses an SSL connection and a SSL handshake error has occurred,
/// then SSLError contains text describing the SSL error.
Property SSLError As %String;

/// When making an SSL connection check the server identity in the server certificate matches the name of the system we are connecting to.
/// This defaults to being on and matches based on the rules layed out in section 3.1 of RFC 2818.
Property SSLCheckServerIdentity As %Boolean [ InitialExpression = 1 ];

/// Used internally to avoid checking common name unless it is a new SSL connection
Property SSLCheckIdentityInternal As %String [ Internal ];

/// When making an SSL/TLS connection use the Server Name Indication (SNI) TLS extension (RFC6066).
/// This defaults to true.
Property SSLUseSNI As %Boolean [ InitialExpression = 1 ];

/// If <property>SSLCheckIdentityInternal</property> is true this property
/// will hold the Certificate retrieved in <method>CheckSSLCN</method> <br>
Property SSLPeerCertificate As %String;

/// If true then use the HTTP CONNECT command to establish a tunnel through the proxy
/// to the target HTTP server. The address of the proxy server is taken from
/// <property>ProxyServer</property> and <property>ProxyPort</property>. If <property>ProxyHttps</property>
/// is true then once the tunnel is established we will negotiate the SSL connection. The <property>Https</property>
/// property is ignored as the tunnel establishes a direct connection with the target system.
Property ProxyTunnel As %Boolean [ InitialExpression = "0" ];

/// The amount of time to wait for a response from the web server before
/// assuming that the web server is not responding. This defaults to 30
/// seconds.
Property Timeout As %Integer [ InitialExpression = 30 ];

/// If specified is the amount of time we will wait for the TCP/IP connection to open.
/// If not specified then it will default to <property>Timeout</property> value.
Property OpenTimeout As %Integer;

/// If true then automatically follow redirection requests from the web server.
/// These are signaled by the HTTP status codes of the form 3xx.
/// The default is true for GET and HEAD methods.  Otherwise the default is false.
Property FollowRedirect As %Boolean;

/// If you need to request a web page through a proxy server you specify the
/// proxy server host name in this property. If this property is defined then
/// the http request will be directed at this machine and it will forward the
/// request to the machine at <PROPERTY>Location</PROPERTY> and return the response.<p>
Property ProxyServer As %String;

/// The port to connect to the proxy web server on. This is often port 8080 (the default).<p>
Property ProxyPort As %String [ InitialExpression = 8080 ];

/// If using a proxy server and this is true then it issues a request for an https page
/// rather than the normal http page. This allows a proxy server that supports https to
/// support a secure connection from this %Net.HttpRequest class. This also changes the
/// default <property>Port</property> on the target system to 443 the https port.
/// If using a proxy server, use of https is determined by <property>ProxyHTTPS</property>.
Property ProxyHTTPS As %Boolean [ InitialExpression = 0 ];

/// Sets/get the 'Proxy-Authorization:' header field in the Http request.<p>
/// A user agent that wishes to authenticate itself with a proxy--
/// usually, but not necessarily, after receiving a 407 response--may do
/// so by including an Proxy-Authorization header field with the request. The
/// Proxy-Authorization field value consists of credentials containing the
/// authentication information of the user agent for the realm of the
/// resource being requested.<p>
Property ProxyAuthorization As %String [ Calculated ];

Method ProxyAuthorizationGet() As %String [ CodeMode = expression, Internal ]
{
}

Method ProxyAuthorizationSet(value As %String) As %Status [ CodeMode = expression, Internal ]
{
}

/// The character set to send the HTTP request header in. According to the RFC the HTTP header
/// should only contain ASCII characters as the behaviour with characters outside this range
/// is unspecified. This class defaults to using UTF-8 as this leaves all the ASCII characters
/// unchanged. You should never need to change this parameter.
Property RequestHeaderCharset As %String [ InitialExpression = "UTF-8" ];

/// If set to true then any data posted to the HTTP server will be gzipped before being sent.
/// You must be sure the remote server can accept gzip data before setting this property.
Property PostGzip As %Boolean [ InitialExpression = 0 ];

/// Set this to the timeout to use when writing to the remote HTTP server.
/// The default is -1 means it will wait indefinitely for the remote server to accept the
/// written data, change it to another value to specify the timeout in seconds. The minimum
/// value accepted is 2 seconds.
Property WriteTimeout As %Float [ InitialExpression = -1 ];

/// If true then we report we can accept gzip compressed data to the web server (the default),
/// if false then do not send the header saying we accept gzip data.
Property AcceptGzip As %Boolean [ InitialExpression = 1 ];

Method AcceptGzipSet(val As %Boolean) As %Status
{
}

/// This holds the <CLASS>%Net.HttpResponse</CLASS> object which contains all the
/// data that the web server returned from this http request. If you wish to hold
/// onto this after you make another http request or you close the %Net.HttpRequest object
/// you should do:
/// <EXAMPLE>
/// Set response=httprequest.HttpResponse
/// </EXAMPLE>
Property HttpResponse As %Net.HttpResponse;

/// Internal structure used to store the list of cookies we have.
Property Cookies As %String [ Internal, MultiDimensional, Private ];

/// Internal structure used to store name/value elements when submitting a form.
Property FormData As %String [ Internal, MultiDimensional, Private ];

/// Set the value of name-value pair <VAR>name</VAR> to <VAR>value</VAR>.
/// <P>If more than one value is associated with <VAR>name</VAR>, then the values
/// are subscripted using <VAR>index</VAR> starting with 1. The value inserted
/// can be either a %String or a stream.
Method InsertFormData(name As %String, value As %RawString)
{
}

/// Tests if a name-value pair <VAR>name</VAR> is defined.
Method IsFormDataDefined(name As %String, index As %Integer = 1) As %Boolean [ CodeMode = expression ]
{
}

/// Returns the number of values associated with the name-value pair <VAR>name</VAR>.
Method CountFormData(name As %String) As %Integer
{
}

/// Returns the next key in sequence
Method NextFormData(name As %String) As %String [ CodeMode = expression ]
{
}

/// Removes this key from the collection
Method DeleteFormData(name As %String, index As %Integer = "") As %Boolean
{
}

Method OutputFormData(stream As %Stream.Object, table As %String) As %String
{
}

/// Sets/gets the 'Content-Type:' entity header field in the HTTP request. If it
/// is not specified and there is an <PROPERTY>EntityBody</PROPERTY> then it default
/// to 'text/html'.<p>
/// Note: This actually gets/sets the attribute 'CONTENT-TYPE' associated with
/// the stream <PROPERTY>EntityBody</PROPERTY> rather than setting a <PROPERTY>Headers</PROPERTY>.<p>
/// A Content-Type specifies the media type of the <PROPERTY>EntityBody</PROPERTY>
/// data. A	<PROPERTY>Content-Encoding</PROPERTY> may be used to indicate any additional
/// content coding applied to the type, usually for the purpose of data
/// compression, that is a property of the resource requested. The
/// default for the content encoding is none.
Property ContentType As %String [ Calculated ];

Method ContentTypeGet() As %String [ Internal ]
{
}

Method ContentTypeSet(contenttype As %String) As %Status [ Internal ]
{
}

/// This is the charset to encode the contents with. This is actually specified in the HTTP
/// Content-Type header with something like:<p>
///
/// Content-Type: text/html; charset=UTF-8<p>
///
/// You must set this property after you set the <property>ContentType</property>
/// or it will overwrite this value.
Property ContentCharset As %String [ Calculated ];

Method ContentCharsetGet() As %String [ CodeMode = expression, Internal ]
{
}

Method ContentCharsetSet(charset As %String) As %Status [ Internal ]
{
}

/// If the <property>ContentType</property> is 'text/' type so we are sending text then
/// if <property>NoDefaultContentCharset</property> = 1 (true), then if there is no <property>ContentCharset</property>
/// entity body charset we will use iso-8859-1 as the charset to send the entity body in.
/// If the property is 0 (the default) then if there is no entity body charset we will use utf-8.
Property NoDefaultContentCharset As %Boolean [ InitialExpression = 0 ];

/// Sets/gets the 'Content-Encoding:' entity header field in the HTTP request.
/// This actually refers to the attribute on the <PROPERTY>EntityBody</PROPERTY>.
Property ContentEncoding As %String [ Calculated ];

Method ContentEncodingGet() As %String [ CodeMode = expression, Internal ]
{
}

Method ContentEncodingSet(contentencoding As %String) As %Status [ Internal ]
{
}

/// Read only property that returns the length of the <PROPERTY>EntityBody</PROPERTY>.
/// This can also be obtained by looking at 'http.EntityBody.Size' and is only included
/// for consistancy as this is the value written out for the 'Content-Length:' HTTP
/// request entity header.
Property ContentLength As %String [ Calculated ];

Method ContentLengthGet() As %Integer [ CodeMode = expression, Internal ]
{
}

/// Issue the Http 'get' request, this will cause the web server to return the page
/// requested. If this completes correctly the response to this request
/// will be in the <PROPERTY>HttpResponse</PROPERTY>. The <var>location</var> is the url to
/// request, e.g. '/test.html'. This can contain parameters which are assumed to be already URL
/// escaped, e.g. '/test.html?PARAM=%25VALUE' sets PARAM to %VALUE.
/// It can also be a full url with the server and optional port number e.g. 'http://server.com/test.html'.
/// If <var>test</var> is 1 then instead of connecting to a
/// remote machine it will just output what it would have send to the web server to the
/// current device, if <var>test</var> is 2 then it will output the response to the current
/// device after the Get. This can be used to check that it will send what you are expecting.
/// This calls <METHOD>Reset</METHOD> automatically after reading the response, except
/// in <var>test</var>=1 mode or if <var>reset</var>=0.
Method Get(location As %String = "", test As %Integer = 0, reset As %Boolean = 1) As %Status [ CodeMode = expression ]
{
}

/// Issue the Http 'post' request, this is used to send data to the web server such as the
/// results of a form, or upload a file. If this completes correctly the response to this request
/// will be in the <PROPERTY>HttpResponse</PROPERTY>. The <var>location</var> is the url to
/// request, e.g. '/test.html'. This can contain parameters which are assumed to be already URL
/// escaped, e.g. '/test.html?PARAM=%25VALUE' sets PARAM to %VALUE.
/// It can also be a full url with the server and optional port number e.g. 'http://server.com/test.html'.
/// If <var>test</var> is 1 then instead of connecting to a
/// remote machine it will just output what it would have send to the web server to the
/// current device, if <var>test</var> is 2 then it will output the response to the current
/// device after the Post. This can be used to check that it will send what you are expecting.
/// This calls <METHOD>Reset</METHOD> automatically after reading the response, except
/// in <var>test</var>=1 mode or if <var>reset</var>=0.
Method Post(location As %String = "", test As %Integer = 0, reset As %Boolean = 1) As %Status [ CodeMode = expression ]
{
}

/// Issue the Http 'put' request, this is used to upload data to the web server, it is not
/// used that often. If this completes correctly the response to this request
/// will be in the <PROPERTY>HttpResponse</PROPERTY>. The <var>location</var> is the url to
/// request, e.g. '/test.html'. This can contain parameters which are assumed to be already URL
/// escaped, e.g. '/test.html?PARAM=%25VALUE' sets PARAM to %VALUE.
/// It can also be a full url with the server and optional port number e.g. 'http://server.com/test.html'.
/// If <var>test</var> is 1 then instead of connecting to a
/// remote machine it will just output what it would have send to the web server to the
/// current device, if <var>test</var> is 2 then it will output the response to the current
/// device after the Put. This can be used to check that it will send what you are expecting.
/// This calls <METHOD>Reset</METHOD> automatically after reading the response, except
/// in <var>test</var>=1 mode or if <var>reset</var>=0.
Method Put(location As %String = "", test As %Integer = 0, reset As %Boolean = 1) As %Status [ CodeMode = expression ]
{
}

/// Issue the Http 'patch' request, this is used for making partial changes to an existing resource.
/// If this completes correctly the response to this request
/// will be in the <PROPERTY>HttpResponse</PROPERTY>. The <var>location</var> is the url to
/// request, e.g. '/test.html'. This can contain parameters which are assumed to be already URL
/// escaped, e.g. '/test.html?PARAM=%25VALUE' sets PARAM to %VALUE.
/// It can also be a full url with the server and optional port number e.g. 'http://server.com/test.html'.
/// If <var>test</var> is 1 then instead of connecting to a
/// remote machine it will just output what it would have send to the web server to the
/// current device, if <var>test</var> is 2 then it will output the response to the current
/// device after the Put. This can be used to check that it will send what you are expecting.
/// This calls <METHOD>Reset</METHOD> automatically after reading the response, except
/// in <var>test</var>=1 mode or if <var>reset</var>=0.
Method Patch(location As %String = "", test As %Integer = 0, reset As %Boolean = 1) As %Status [ CodeMode = expression ]
{
}

/// Issue the Http 'head' request, this will cause the web server to just return the header
/// of the response and none of the body. If this completes correctly the response to this request
/// will be in the <PROPERTY>HttpResponse</PROPERTY>. The <var>location</var> is the url to
/// request, e.g. '/test.html'. This can contain parameters which are assumed to be already URL
/// escaped, e.g. '/test.html?PARAM=%25VALUE' sets PARAM to %VALUE.
/// It can also be a full url with the server and optional port number e.g. 'http://server.com/test.html'.
/// If <var>test</var> is 1 then instead of connecting to a
/// remote machine it will just output what it would have send to the web server to the
/// current device, if <var>test</var> is 2 then it will output the response to the current
/// device after the Head. This can be used to check that it will send what you are expecting.
/// This calls <METHOD>Reset</METHOD> automatically after reading the response, except
/// in <var>test</var> mode or if <var>reset</var>=0.
Method Head(location As %String, test As %Integer = 0, reset As %Boolean = 1) As %Status [ CodeMode = expression ]
{
}

/// Issue the Http 'delete' request, this will cause the web server to delete the item referred. If this completes correctly the response to this request
/// will be in the <PROPERTY>HttpResponse</PROPERTY>. The <var>location</var> is the url to
/// request, e.g. '/test.html'. This can contain parameters which are assumed to be already URL
/// escaped, e.g. '/test.html?PARAM=%25VALUE' sets PARAM to %VALUE.
/// It can also be a full url with the server and optional port number e.g. 'http://server.com/test.html'.
/// If <var>test</var> is 1 then instead of connecting to a
/// remote machine it will just output what it would have send to the web server to the
/// current device, if <var>test</var> is 2 then it will output the response to the current
/// device after the Head. This can be used to check that it will send what you are expecting.
/// This calls <METHOD>Reset</METHOD> automatically after reading the response, except
/// in <var>test</var> mode or if <var>reset</var>=0.
Method Delete(location As %String, test As %Integer = 0, reset As %Boolean = 1) As %Status [ CodeMode = expression ]
{
}

/// Method that actually sends HTTP request to the server.
/// This is normally called from <method>Get</method>, <method>Post</method>, <method>Put</method>, <method>Head</method>
/// but if you wish to use a different HTTP verb you can call this directly passing the <var>type</var> as the verb
/// you require.
Method Send(type As %String, location As %String, test As %Integer = 0, reset As %Boolean = 1) As %Status
{
}

/// Open the TCP/IP port onto the web server.
Method Open(ByRef reused As %Boolean) As %Status [ Internal, Private ]
{
}

/// Reset the %Net.HttpRequest class so that it can issue another request. This is much faster
/// than closing this object and creating a new %Net.HttpRequest object. This also moves the
/// value of <PROPERTY>Location</PROPERTY> to <PROPERTY>Referer</PROPERTY>. It is called by
/// the <METHOD>Send</METHOD> automatically after issuing a request.
Method Reset() As %Status
{
}

/// ResetForRedirection clears the request body, URL parameters, and other information
/// that should not be part of the subsequent redirected HTTP request.
Method ResetForRedirection() As %Status [ Internal ]
{
}

/// Used to count redirections to prevent it getting into a loop.
Property RedirectNo As %Integer [ Internal, Private ];

/// Used to count roundtrips needed for NTLM or SPNEGO authentication to prevent getting into a loop.
Property AuthenticationDepth As %Integer [ Internal, Private ];

/// The context handle used for NTLM or SPNEGO authentication.
Property AuthenticationHandle As %Integer [ Internal, Private ];

/// An array of strings containing any query name/value pairs associated with this request.
/// These are added to the request URL when the request is issued.
Property Params As %String [ MultiDimensional ];

/// If true then the body of the response will be read in using RAW mode, ie. with no characterset
/// translate. If false (the default) then it will use the charset specified in the response headers.
Property ReadRawMode As %Boolean [ InitialExpression = 0 ];

/// If we read a gzip response from the web server and this property is true then the stream returned
/// in the <property>HttpResponse</property> will be a %Stream.FileBinary/CharacterGzip pointing at the gzip
/// file we read. If this property is false we will uncompress the file stream into a %Stream.GlobalBinary/Character
/// stream which involves an extra copy operation. The defaults to faster operation, however you can
/// reset it to 0 for backward compatibility.
Property ReturnGzipResponse As %Boolean [ InitialExpression = 1 ];

Property BinaryContent As %Boolean [ InitialExpression = 1, Private ];

/// If true then the body (EntityBody) of the request will be written using RAW mode, ie. with no characterset
/// translate. If false (the default) then it will use the charset specified in the request
/// headers.
Property WriteRawMode As %Boolean [ InitialExpression = 0 ];

/// Optional property, if set to a stream then this is the stream that will be used to write the data from the
/// web server to rather than constructing a stream of its own. This allows you to specify which type of stream
/// you wish to read the data into, for example a file stream rather than a global stream which is the default.
Property ResponseStream As %RawString;

/// Returns the value of name-value pair <VAR>name</VAR>.
/// <P>If more than one value is associated with <VAR>name</VAR>, then the values
/// are subscripted using <VAR>index</VAR> starting with 1.
/// <VAR>index</VAR>
/// <P>If the name-value pair is not defined, returns the value of <VAR>default</VAR>.
Method GetParam(name As %String, default As %String = "", index As %Integer = 1) As %String [ CodeMode = expression ]
{
}

/// Set the value of the name-value pair <var>name</var>. The optional <var>index</var>
/// is used to associate multiple <var>value</var> with a single <var>name</var>.
Method SetParam(name As %String, value As %String, index As %Integer = 1)
{
}

/// Set the value of name-value pair <VAR>name</VAR> to <VAR>value</VAR>.
/// <P>If more than one value is associated with <VAR>name</VAR>, then the values
/// are subscripted using <VAR>index</VAR> starting with 1.
Method InsertParam(name As %String, value As %String)
{
}

/// Tests if a name-value pair <VAR>name</VAR> is defined.
Method IsParamDefined(name As %String, index As %Integer = 1) As %Boolean [ CodeMode = expression ]
{
}

/// Returns the number of values associated with the name-value pair <VAR>name</VAR>.
Method CountParam(name As %String) As %Integer
{
}

/// Returns the next key in sequence
Method NextParam(name As %String) As %String [ CodeMode = expression ]
{
}

/// Removes this key from the collection
Method DeleteParam(name As %String, index As %Integer = "") As %Boolean
{
}

/// Output all the parameters to the current device. The <var>params</var> is any
/// parameters that you wish to be included in the parameters output, these are
/// assumed to already be URL escaped.
Method OutputParams(params As %String = "", table As %String)
{
}

/// Return the list of parameters that this request will output.
Method ReturnParams() As %String
{
}

/// Add a cookie to this %Net.HttpRequest object. The <var>name</var> is the name of the cookie, the <var>value</var>
/// is the value this cookie is set to. The <var>path</var> is the path to store the cookie under, it will only
/// be output for this path and any subpaths on the server. The <var>domain</var> is the name of the machine the
/// cookie is downloaded from. Then <var>expires</var> is the date/time when this cookie will expire. The <var>secure</var>
/// parameter is if the cookie should be send over secure channels only, i.e. https.
Method InsertCookie(name As %String, value As %String, path As %String, domain As %String, expires As %String, secure As %Boolean = 0) As %Status
{
}

/// Remove a cookie from this %Net.HttpRequest object. The <var>name</var>, <var>path</var>, and <var>domain</var>
/// must match the ones used to insert the cookie in the first place.
Method DeleteCookie(name As %String, path As %String, domain As %String) As %Status
{
}

/// Remove any session cookie from this %Net.HttpRequest object.
Method DeleteSessionCookie() As %Status [ Internal ]
{
}

/// Internal function to take the server cookie line and insert cookies from it.
Method InsertCookieFromServer(cookie As %String) As %Status [ Internal, Private ]
{
}

/// Internal function to return the list of cookies that we should send to this
/// <var>domain</var> for this <var>path</var>.
Method GetCookiesForHost(domain As %String, path As %String) As %String [ Internal, Private ]
{
}

Method cookiesForHost(cookies As %String, domain As %String, path As %String) As %String [ Internal, Private ]
{
}

/// Passed <var>cookies</var> by reference and return an array of cookies so you can see which
/// cookies have been set, or persist them into a database if wished. The return from this method
/// is the number of cookies that are in the array. The format of the array is:<p>
/// array(index)=$LB(name,domain,path,value,expires,secure)
Method GetFullCookieList(ByRef cookies) As %Integer
{
}

/// Internal method used to read the response from the web server into this object.
Method Read(device As %String, timeout As %Integer = 10, startTime As %Float, type As %String = "") As %Status [ Internal, Private ]
{
}

/// Helper function to convert from a $H value into the date/time format suitable for
/// use in an HTTP request. It converts the timezone from the current $H value to the
/// GMT timezone as well as outputting the correct format.
ClassMethod HorologToRFCDateTime(horolog As %String = {$Horolog}) As %String
{
}

/// Passed a character set, if it is null it returns the default character set for this
/// system and updates <parameter>charset</parameter> with the rfc name for this charset.
/// If defined it looks up the charset and returns the InterSystems IRIS name for it.
Method GetDefaultCharset(ByRef charset As %String) As %String [ Internal, Private ]
{
}

/// Parse a name=value,name2="newvalue" type list
ClassMethod ParseContent(in As %String, ByRef return As %String) As %Boolean
{
}

/// Verify the SSL <var>server</var> we are connected to has the correct certificate.
/// In order to call this method the SSL/TLS connection must be active and must be the current
/// device, also at least one message must have been sent down the socket in order for the SSL/TLS
/// handshake to have taken place so we have the certificate.
/// If InterSystems IRIS is acting as a client and makes a request to a server by IP address, the server's certificate
/// need only contain the matching IP address in the Subject DN for us to verify the server's identity;
/// the subjectAltName extension does not have to be present. This is a slight difference to the wording of RFC 2818.
ClassMethod CheckSSLCN(server As %String, Output certificate As %String) As %Status
{
}

ClassMethod parseName(name As %String) As %String [ Private ]
{
}

/// Determine if this domain is a public suffix (publicsuffix.org) or not, return
/// true if it is and false if it is not.
ClassMethod MatchSuffix(domain As %String) As %Boolean
{
}

/// Load in the <var>filename</var> which is the downloaded public suffix list from publicsuffix.org
ClassMethod LoadPublicSuffix(filename As %String) As %Status
{
}

Property LastPongContent As %Stream.TmpBinary;

/// Receives a possibly-fragmented message from the server. <br />
/// Throws $$$NetWebSocketErrConnectionClosed if the server closes the connection. <br />
/// Responds to pings from the server automatically.
Method WebSocketRead(Output pContentStream As %Stream.Object = {$$$NULLOREF}, pTimeout As %Integer = 10, Output pTimedOut As %Boolean = 0) As %Status
{
}

/// Writes <var>pContentStream</var> as a binary frame if it is a binary stream type, or a text frame if not.
/// If <var>pFragmentSize</var> is 0, will send <var>pContentStream</var> as a single binary/text frame;
/// otherwise, will send as fragments of maximum length <var>pFragmentSize</var>.
Method WebSocketWrite(pContentStream As %Stream.Object, pFragmentSize As %Integer = 0) As %Status
{
}

/// Sends a ping frame with contents defined in <var>pContentStream</var>.
Method WebSocketPing(pContentStream As %Stream.Object) As %Status
{
}

/// Sends an pong frame with contents defined in <var>pContentStream</var>.
/// Should be used only for unsolicited pongs.
Method WebSocketPong(pContentStream As %Stream.Object) As %Status
{
}

/// The client should not close the web socket connection for any reason other than "going away" (1001).
Method WebSocketClose(pReason As %Integer = 1001) As %Status
{
}

}
