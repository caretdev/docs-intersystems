/// The <class>%CSP.Response</class> class determines what the HTTP headers generated for this page
/// will look like. Note that by default CSP pages are set to never be cached, so the browser will
/// have to get the page each time. If you wish to change this see the <property>Expires</property> property.
Class %CSP.Response Extends %RegisteredObject [ System = 3 ]
{

/// Version of HTTP support CSP will report. If this is "" (the default), then use the version reported from the client
/// request. If you need another value such as "HTTP/1.0" even for an HTTP/1.1 request,
/// then set this property to the version on you require.<br><br>
/// For an HTTP/2 request, version "HTTP/2.0" is always assumed, and setting this property has no effect.
Property HTTPVersion As %String;

/// The HTTP Status code to be sent back in the response.  The HTTP status codes are defined
/// in RFC 2068.<br>
/// <br>
/// <A HREF="http://www.faqs.org/rfcs/rfc2068.html">http://www.faqs.org/rfcs/rfc2068.html</A>
/// <br>
Property Status As %String [ InitialExpression = "200 OK" ];

/// Setting this property to a target URL will cause the browser to be redirected to this new page.
/// The result of this is to send a 303 Redirected HTTP header back to the client browser, the
/// browser then requests the new redirected page from the server. This is not as fast as a
/// server side redirect which can be issues using the <property>ServerSideRedirect</property>.<p>
/// The OnPage() method will <b>not</b> be called if this is set. For
/// example the following CSP page section will redirect to the 'redirect.csp' page.
/// <EXAMPLE LANGUAGE=CSP>
/// <script language="Cache" method="OnPreHTTP" arguments="" returntype="%Boolean">
/// :	Set %response.Redirect="redirect.csp"
/// :	Quit 1
/// </script>
/// </EXAMPLE>
Property Redirect As %String;

/// Typically when performing a browser-side redirect using <property>Redirect</property>
/// the target URL will be transformed to an absolute URL before being sent to the client.
/// The system may also add CSPToken and/or CSPCHD URL parameters as appropriate.
/// If <property>UseExactRedirect</property> is 1, then the server will not perform these
/// transformations; the URL specified in <property>Redirect</property> will be used exactly.
/// This only affects the current request, and does not affect redirects using
/// <property>ServerSideRedirect</property>. The default is 0.
Property UseExactRedirect As %Boolean [ InitialExpression = 0 ];

/// Setting this property to a URL will make the server redirect to this new page and render
/// this instead of the original URL. This redirection is done entirely on the server which
/// makes it much faster than the <property>Redirect</property> which needs to go all the
/// way back to the browser and then back to the server again. You should set this to a
/// URL without the 'http://machine' part such as '/csp/samples/menu.csp' or it will not
/// be able to parse this correctly and will use a browser redirect instead<p>
/// Note that as the browser asked for page 'a.csp' and using a server side redirect you
/// display 'b.csp' the browser still thinks it has displayed page 'a.csp' and so will show
/// this URL in the address bar.
/// The OnPage() method will <b>not</b> be called if this is set. For
/// example the following CSP page section will redirect to the 'redirect.csp' page.
/// <EXAMPLE LANGUAGE=CSP>
/// <script language="Cache" method="OnPreHTTP" arguments="" returntype="%Boolean">
/// :	Set %response.ServerSideRedirect="redirect.csp"
/// :	Quit 1
/// </script>
/// </EXAMPLE>
Property ServerSideRedirect As %String;

/// Sets the Content-Type header.  Since the HTTP headers are sent after the OnPreHTTP()
/// method is complete, setting it after this has no effect.
Property ContentType As %String [ InitialExpression = "text/html" ];

/// Sets the Character Set for the content-type header.  If CharSet is '= ""
/// and NoCharSetConvert=0, then output is translated for any content-type.
/// If not specified for text, then default is utf-8 on Unicode systems and
/// the system default on 8-bit systems.
Property CharSet As %String;

/// The path we will send the session cookie with
Property CookiePath As %String(MAXLEN = 256);

/// Sets the Character Set to write out the HTTP headers.
/// If not specified it defaults to UTF-8 which appears to be the standard
/// for most browsers. If you do not want to use any translation you can specify
/// "RAW" for this property.
Property HeaderCharSet As %String;

/// Sets the Content-Length header.  Since the HTTP headers are sent after the OnPreHTTP()
/// method is complete, setting it after this has no effect.
Property ContentLength As %String;

/// If the <property>ContentType</property>=text/... or the <property>CharSet</property>
/// is specified then CSP will normally convert to the target charset when writing the
/// page out. However sometimes you may wish to turn this off if for example you do not
/// have this charset installed and just wish to use RAW mode. If so set this property
/// to 1.
Property NoCharSetConvert As %Boolean [ InitialExpression = 0 ];

/// Maintains the collection of cookies to be sent out.  See <method>SetCookie</method>.
Property Cookies As %String [ MultiDimensional ];

/// Use 'HttpOnly' with Session Cookie
Property UseHttpOnly As %Boolean [ InitialExpression = 1 ];

/// Maintains the collection of additional HTTP Headers to be sent out.  See <method>SetHeader</method>
/// and <method>GetHeader</method>.
Property Headers As %String [ MultiDimensional ];

/// Used to keep track of how long various pieces of the CSP pages take to render.
Property Timers As %Float [ MultiDimensional ];

/// Returns true if the request is already in progress -- that is the HTTP headers
/// have been sent, and false otherwise. A read only property.
Property InProgress As %Integer [ InitialExpression = 0 ];

/// Set method for InProgress property
Method InProgressSet(val As %Boolean) As %Status [ Internal, Private ]
{
}

/// Maintain a list of name-value pairs that will be added to every hyperlink and form on
/// this page. This array should be created in the OnPreHTTP() method before the page is
/// being rendered or some links will have these parameters and some will not. This can be
/// used for example to add a page Id to every link from this page so that if the user
/// bookmarks this page and comes back to it later you will know they clicked on a link
/// from the 'Camera purchase' page of the web site.<p>
/// The format of this array is just:
/// <example>
/// Set %response.Context("Name")="Value"
/// </example>
/// Note that if the page you link to is encoded then these parameters will be automatically encrypted,
/// if you do not want this behavior then 'Set %response.Context("Name","encrypted")=0' in addition
/// to setting the value of this property.
/// If you wish to insert the same item name multiple times you can do this.<p>
/// <example>
/// Set %response.Context("Name")="Value"
/// Set %response.Context("Name",1)="Value2"
/// </example>
/// This will insert 'Name' twice, first with 'Value' and then with 'Value2'.
Property Context As %String [ MultiDimensional ];

/// Used to control the expiration of the CSP page being served.  It can be set to one
/// of the following values:<br>
/// <ul>
/// <li><b>-1</b>: Expire immediately, this is the default for a CSP page</li>
/// <li><b>0</b>: Expire immediately, this also sets the 'no-store' option so using the back button will request a new page</li>
/// <li><b>""</b>: No HTTP 'Expires', 'Pragma', or 'cache-control' headers are sent.</li>
/// <li><b>nnnnn</b>: Number of seconds from now when the object should expire</li>
/// <li><b>Thu, 29 Oct 1998 17:04:19 GMT</b>: Absolute time at which the object should expire</li>
/// <li>One way to 'never expire' is to set a 'forever date':</li>
/// <li>  "Sun, 17-Jan-2038 19:14:07 GMT" is the maximum 32-bit Unix time/date</li>
/// <li>  "Mon, 31 Dec 2035 12:00:00 GMT" is the maximum IIS6 date.</li>
/// <li><b>ddddd,sssss</b>: Absolute time the object should expire in $ZTimeStamp format. Note
/// that this must be specified in the GMT timezone</li>
/// </ul>
/// Note that setting this header also effects the 'Cache-Control' and 'Pragma' headers. If the page is set
/// to expire immediately then it will send a 'Cache-Control: no-cache' and 'Pragma: no-cache' to
/// prevent any caches from storing the page. If the page is set to never expires then it will not send
/// any 'Cache-Control' or 'Pragma' headers. If you set an expires date then it will not modify the
/// 'Cache-Control' or 'Pragma' headers so if they are set they will be sent as specified and if you did
/// not set them then nothing will be sent for these headers.
Property Expires As %String [ Calculated ];

/// Set method for Expires property
Method ExpiresSet(val As %String) As %Status [ Internal ]
{
}

/// Set method for Expires property
Method ExpiresGet() As %String [ CodeMode = expression, Internal ]
{
}

/// This property controls the CSP Gateway output caching mechanism along with the
/// <property>Expires</property>. Output caching is a mechanism to cache the result of a CSP
/// page on the web server and if another client requests the same page it can be given this
/// cached result directly from the web server without making InterSystems IRIS do any work. This can
/// result in significant scalability improvements if this is used carefully. A typical use
/// of this feature may be to cache the inital page on a web portal which displays some news
/// items, some weather information, etc. as everyone coming into the site sees this page first
/// it gets a lot of hits, but it is reasonable to only ask InterSystems IRIS to recreate the page every
/// five minutes which will save a significant amount of work on the server.<p>
/// The amount of time that the page will sit in the cache on the web server is determined
/// by the <property>Expires</property> (which also determines how long this page sits in
/// the web browsers cache as well. The conditions that must be met to serve up this cached
/// page are determined by the VaryByParam property. Possible values are<ul>
/// <li><b>None</b> - This means that any further request for this page in the period set by <property>Expires</property>
/// will return this cached page, even if the query parameters are different.</li>
/// <li><b>*</b> - Means that a separate cached copy of this page is retained by the web server for
/// every combination of parameters that are requested. So if user A requests page.csp?VAL=1 and
/// then user B request page.csp?VAL=5 they will not get the cached page, however if user C requests
/// page.csp?VAL=1 then they will get the cached page produced in response to user A's request.</li>
/// <li><b>A,B,C</b> - Means that just consider the parameters A, B, C in determining which cached page to
/// return, so if user A requests page.csp?A=1&amp;D=5 and then user B requests page.csp?D=10&amp;A=1 then they
/// will get the same page generated for user A.</li></ul>
Property VaryByParam As %String;

/// Setting this to true will cause a CSP object dump after the page has been written. This can
/// be very useful for debugging pages.
Property TraceDump As %Boolean [ InitialExpression = 0 ];

/// If this property is set to 0 then prevent the session cookie and CSPCHD from being output.
/// Can be useful when serving up static content for example from %CSP.StreamServer. Note that if
/// the value has been set by the CSP server to 0 already you should not set it to 1 as when the CSP
/// server determines a request does not need a session it skips various session related logic and
/// does not define a session cookie value so setting this to 1 will have no effect.
Property OutputSessionToken As %Boolean [ InitialExpression = 1 ];

/// If true and the CSP web gatway is running on Microsoft Internet Information Server then
/// this will post the output from CSP through the ASP engine on the web server which will
/// output the final HTML. This is done by writing a temporary file on the web server and then
/// asking the ASP engine to render this temporary file. Note you must set this property in the
/// OnPreHTTP() method, i.e. before any message headers have been written out for it to be
/// effective. If you attempt to set this after the header have been written it will generate
/// an error.
Property UseASPredirect As %Boolean [ InitialExpression = 0 ];

/// Set method for UseASPredirect property
Method UseASPredirectSet(val As %Boolean) As %Status [ Internal ]
{
}

/// Can be set in the OnPreHTTP() method of a page in which case this changes the amount of time the
/// CSP gateway will wait for a response from the server in seconds before it reports the 'Server is not
/// responding' error message. This is useful if you know that this page is doing an expensive SQL
/// query that will take a couple of minutes and you want to set the server response timeout on
/// the CSP gateway to a minute and yet wait three minutes for this page to respond. It will just
/// change the server response timeout for this page only. If not set the the CSP gateway uses its
/// default timeout value specified in the CSP gateway configuration.
Property Timeout As %Integer;

/// Set method for Timeout property
Method TimeoutSet(val As %Integer) As %Status [ Internal ]
{
}

/// The language (RFC 1766 format) in which this page is to be displayed.
/// %response.Language may be set:<br>
/// 1) explicitely by the user,<br>
/// 2) by calling %response.MatchLanguage,<br>
/// 3) by calling %response.GetText with language of "",<br>
/// 4) by calling ##class(%CSP.TagLanguage).GetText or one of
/// the tags implemented using ##class(%CSP.TagLanguage).GetText
/// such as csp:text, div, span.
Property Language As %String;

/// Set method for Language property
Method LanguageSet(val As %String) As %Status [ Internal ]
{
}

/// The %response.Domain attribute is used as the default domain for csp:text, span and div
/// tags.  The %response.Domain attribute is initialized from the DOMAIN parameter of the
/// CSP and may be changed by the page class at any time.
Property Domain As %String;

/// If true the ask the CSP gateway to gzip the output and add modify the HTTP header to
/// show the data is gzipped. Depending on the version and platform of the CSP gateway component
/// this may not be supported in which case the output will be sent as per normal.
Property GzipOutput As %Boolean;

/// Set method for GzipOutput property
Method GzipOutputSet(val As %Boolean) As %Status [ Internal ]
{
}

/// If IgnoreRESTOutput is true, then writes during a REST method are ignored.
Property IgnoreRESTOutput As %Boolean [ Internal ];

/// This method is deprecated since Java applet based hyperevents are no longer supported.<p>
ClassMethod HyperEventBody() As %String [ Deprecated, Final, ServerOnly = 1 ]
{
}

/// Find and return the language (RFC 1766 format) in which this page is to be displayed.
/// The %response Language attribute is used as the default language for csp:text, span and div
/// tags.  If %response.Language is not set by the CSP page, then %response.Language is set
/// to %session.Language.  In turn, if %session.Language has not set been already set,
/// then it is set to the best fit from the HTTP_ ACCEPT_LANGUAGE CGI variable
/// using #class(%MessageDictionary).MatchLanguage based on the current %response.Domain.
/// The domain for a specific csp:text, div or span tag does not influence the selection
/// of language.
Method MatchLanguage() As %String
{
}

/// Get and format message text for the page being output.
/// Language is optional and %response.Language is used, if language is "" or not specified.
/// Language will be converted to lower case before being used.
/// Domain can be a system domain beginning with % or a application domain.
/// Domain is optional and %response.Domain is used, if domain is "" or not specified.
/// Id is any message id.
/// Arguments of the form %1, %2, etc will be replaced by macro arguments
/// that follow the default argument.
/// Return a the string specified by the default argument, if message text not found.
/// If the default argument is not specified, then string for the default language
/// or English is used as the default.
Method GetText(language As %String = "", domain As %String = "", id As %String, default As %String, args...) As %String
{
}

/// Holds the string we need to send to the CSP Gateway to tell it what state this session
/// is in. This is for internal use only.
Property CSPGatewayData As %String [ Internal, Private ];

/// Add this <var>val</var> to the information to be sent to the CSP Gateway. This is for
/// internal use only.
Method CSPGatewayDataSet(val As %String) As %Status [ Internal, Private ]
{
}

/// Output the CSP Gateway session state information. For internal use only.
Method OutputCSPGatewayData() [ Internal ]
{
}

/// This flag is intended to be used in conjunction with the <method>Flush()</method> method.
/// The <method>Flush()</method> method will flush the response output buffer from InterSystems IRIS to the CSP Gateway.
/// If this flag is set in the page <b>OnPreHTTP()</b> method, the Gateway will flush each buffer received
/// from InterSystems IRIS to the web server, without attempting to aggregate small buffers into larger ones
/// before final dispatch back to the web server.
/// <br><br>
/// Example:
/// <EXAMPLE LANGUAGE=CSP>
/// <script language="Cache" method="OnPreHTTP" arguments="" returntype="%Boolean">
/// : Set %response.AllowOutputFlush=1
/// : Quit 1
/// </script>
/// </EXAMPLE>
Property AllowOutputFlush As %Integer [ InitialExpression = 0 ];

/// Flush the contents of the output buffer to the web server. This can be useful in large pages
/// where it can display the first section of the page quickly, but then takes a few seconds to
/// perform some calculation for the second half of the page. If you flush the output buffer
/// after writing the first half of the page then the browser may (this is not always true, it
/// depends on what you are outputting and how the browser parses the HTML) be able to display the
/// first section of the page. This can make the page look more responsive. This should be used
/// sparingly because buffering the output significantly improves the performance of CSP and the
/// output is automatically flushed at the end of a page.
Method Flush() As %Status
{
}

/// Sets a cookie into the reply.  All cookies must be set before the HTTP headers are written so they
/// need to be created in the OnPreHTTP() method. The <var>sameSite</var> attribute defaults to the session's
/// User Cookie Scope setting. If specified, it must be "Strict", "Lax", or "None" (case insensitive).
/// If "None", the Secure flag is required.
Method SetCookie(name As %String, value As %String, expires As %String = "", path As %String = "", domain As %String = "", secure As %Boolean = 0, httpOnlyFlag As %Boolean = 0, sameSite As %String = "")
{
}

/// Sets a custom HTTP header into the reply.  All headers must be set before the HTTP headers are
/// written (after OnPreHTTP() completes). If you set the same header twice it will append the information
/// to the first with a ',' between them.  Note that <var>name</var> is not case sensitive, however we will
/// remember the case of the header when sending this to the client.
Method SetHeader(name As %String, value As %String)
{
}

/// Helper method that sets a header if it is currently empty, if it already has a value it does nothing.
/// Returns true if the header was set and false if it did nothing.
Method SetHeaderIfEmpty(name As %String, value As %String) As %Boolean
{
}

/// Return the value of the <PARAMETER>name</PARAMETER> header.
/// Note that <var>name</var> is not case sensitive
Method GetHeader(name As %String) As %String [ CodeMode = expression ]
{
}

/// Remove a header from the response. Note that <var>name</var> is not case sensitive
Method DeleteHeader(name As %String)
{
}

/// Internal method to insert a series of headers from the <class>%CSP.Session</class> object.
Method UpdateHeadersFromSession(headers As %String) [ Internal ]
{
}

/// Called by the CSP runtime to render the contents of the %response object as HTTP headers.
Method WriteHTTPHeader(ByRef OutputBody As %Boolean) As %Status [ Final ]
{
}

Method WriteHeaders(test As %Boolean) [ Internal ]
{
}

Method WriteHTTPHeaderCookies()
{
}

Method WriteCookies() [ Internal ]
{
}

/// Set default charset in i%CharSet and return the table name for the default charset.
Method SetDefaultCharset() As %String [ Internal, Private ]
{
}

/// Resets this %CSP.Response object to its initial state
Method Reset(redirect As %Boolean = 0) [ CodeMode = generator, Final ]
{
}

/// Attempt to abort the response written so far. There are three possibilities:<ul>
/// <li>We may have encountered the error before attempting to send any of the content.</li>
/// <li>Content may have been generated, but we have not flushed the buffer and so can still abort.</li>
/// <li>Content has already been sent to the browser, we cannot abort.</li></ul>
/// So we try to abort the output, and set the <method>InProgress</method> to 0 if
/// it worked.
Method Abort() [ Final ]
{
}

/// Used internally to send a flag to end the session to the gateway
Method EndSession(val As %Boolean) As %Status [ Internal ]
{
}

/// Used internally to tell gateway if this is a persistent connection or not
Method SetPreserve(val As %Boolean) As %Status [ Internal ]
{
}

Method ContentInfo(Output contenttype As %String, Output table As %String) As %Status [ Internal ]
{
}

/// If true then avoid the partition cleanup at the end of the CSP page request.
/// Only used internally, not for customer use.
Property AvoidPartitionCleanup As %Boolean [ InitialExpression = 0, Internal ];

}
