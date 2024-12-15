/// SOAP Web Client class.
/// <br>
///
/// Properties of this class that begin with Http are passed through to the
/// %Net.HttpRequest instance used by the class.
///
/// The only supported use of this class is as the super class for a SOAP Web Client.
/// Parameters, properties and methods may be used by the application.
Class %SOAP.WebClient Extends %SOAP.WebBase [ Abstract, System = 3 ]
{

/// The SOAPVERSION parameter specified the version of SOAP which is supported.
/// Possible values for the version are 1.1 and 1.2. The default value "" specifies
/// that both SOAP 1.1 and SOAP 1.2 are supported.
Parameter SOAPVERSION As STRING [ Constraint = ",1.1,1.2", Flags = ENUM ];

/// If the web client has the parameter SOAPACTIONQUOTED=1, then the web client will
/// quote the SOAPAction value for SOAP 1.1.  The default will be SOAPACTIONQUOTED=0
/// in order to be compatible with earlier versions of InterSystems IRIS.
Parameter SOAPACTIONQUOTED As BOOLEAN = 0;

/// If the web client has the parameter URLESCAPESOAPACTION=1, then the web client will
/// send URL ESCAPED SOAPAction Header for SOAP 1.1.  The default will be URLESCAPESOAPACTION=0
/// in order to be compatible with earlier versions of InterSystems IRIS.
/// New generated IRIS SOAP clients can take advantage of enabled URL Escaping for SOAP 1.1
Parameter URLESCAPESOAPACTION As BOOLEAN = 0;

/// The SoapVersion property is either "1.1" or "1.2" and indicates the SOAP
/// version for the current invocation.<br><br>
///
/// For a SOAP web client, SoapVersion specifies the SOAP version that is used
/// for the request.<br>
/// If SoapVersion="" (the default), then "1.1" is used if SOAPVERSION="1.1" or "" (the default).
/// Otherwise "1.2" is used if SOAPVERSION="1.2".<br>
/// After the response is received, it is the version of the response.
/// This, SoapVersion should be set before each method call.
Property SoapVersion As %String;

/// Deprecated. %Net.HttpRequester will always be used as the network access layer
Property HttpRequester As %String(VALUELIST = ",SAX,CACHE") [ Deprecated ];

/// If UsePPGHandler is true (1), then force SOAP response parsing to use PPG memory.<br>
/// If UsePPGHandler is false (0), then force SOAP response parsing to use local array memory.<br>
/// If UsePPGHandler is not set ( or = ""), then use default memory -- usually local array memory.<br>
/// The default value of this property is the USEPPGHANDLER parameter value.
Property UsePPGHandler As %Boolean [ InitialExpression = {..#USEPPGHANDLER}, Transient ];

/// If SoapBinary is 1, then the web client will use proprietary binary SOAP protocol.
/// The SoapBinary property defaults to the SOAPBINARY parameter.<br/>
/// For requests directed to subclass of %SOAP.WebService but not EnsLib.SOAP.Service
Property SoapBinary As %Boolean [ InitialExpression = {..#SOAPBINARY}, Transient ];

/// Setter method to insure that first not binary message uses session cookie form binary messages
Method SoapBinarySet(value As %Boolean) As %Status [ Internal ]
{
}

/// If set then we keep session cookie even if not binary session.
Property KeepSessionCookie As %Boolean [ Internal ];

/// Default charset for remote SOAP binary server.
/// This parameter is by default used to dertermine if binary message needs to be UTF8 encoded.
Parameter SOAPBINARYCHARSET As STRING;

/// Property to allow override of charset for remote SOAP binary server.
/// This parameter is used to dertermine if binary message needs to be UTF8 encoded.
/// The default for SoapBinaryCharset is the SOAPBINARYCHARSET parameter.
Property SoapBinaryCharset As %String [ InitialExpression = {..#SOAPBINARYCHARSET}, Transient ];

/// Property to allow the WS-Addressing namespace to be specified for requests
Property WSANamespace As %String [ Transient ];

/// Property to allow override of policy to be used for the web client.<br>
/// PolicyConfiguration is specified as 'Configuration class name':'Configuration name'
/// where 'Configuration name' comes from the name attribute of the configuration element
/// in the configuration class (i.e. sublcass of %SOAP.Configuration"
/// If PolicyConfiguration="" or is not specified, then the policy specified by the
/// service classname attribute is attached to this class.
Property PolicyConfiguration As %String [ Transient ];

/// If specified, the caller assigned %Net.HttpRequest instance is used for
/// the web service request.
Property HttpRequest As %Net.HttpRequest [ Transient ];

/// Content-Type to be used for transport class
Property ContentType As %String [ Transient ];

/// The name of the activated TLS/SSL configuration to use for https requests.
Property SSLConfiguration As %String [ Transient ];

/// If request uses an SSL connection and a SSL handshake error has occurred,
/// then SSLError contains text describing the SSL error.
Property SSLError As %String;

/// When making an SSL connection check the server identity in the certificate matches the name of the system we are connecting to.
/// This defaults to being on and matches based on the rules layed out in section 3.1 of RFC 2818.
Property SSLCheckServerIdentity As %Boolean;

/// If the GzipOutput property is set to true (1), then the output request
/// will be compressed using GZIP.
/// The default value for GzipOutput is the GZIPOUTPUT parameter.
Property GzipOutput As %Boolean [ InitialExpression = {..#GZIPOUTPUT}, Transient ];

/// If specified is the amount of time we will wait for the TCP/IP connection to open.
/// If not specified then it will default to <property>Timeout</property> value.
Property OpenTimeout As %Integer [ Transient ];

/// The HttpResponse property is set to the %Net.HttpResponse instance for the response to the
/// web service request. This property is only set when the %Net.HttpRequest object is used to
/// make the request, i.e. when HttpRequestor="CACHE" (the default).
Property HttpResponse As %Net.HttpResponse [ Transient ];

/// The HTTP version we should report to the server when making the request.
/// Defaults to '1.1'.
Property HTTPVersion As %String [ InitialExpression = "1.1", Transient ];

/// If true then automatically follow redirection requests from the web server.
/// These are signaled by the HTTP status codes of the form 3xx.
/// The default is false.
Property HttpFollowRedirect As %Boolean [ Transient ];

/// If you need to make SOAP request through a proxy server you specify the
/// proxy server host name in this property. If this property is defined then
/// the http request will be directed at this machine and it will forward the
/// request to the machine at <PROPERTY>Location</PROPERTY> and return the response.<p>
/// You can specify a default proxy server for this namespace or for the entire instance
/// by setting ^SYS("HttpRequest","ProxyServer") or ^%SYS("HttpRequest","ProxyServer").
Property HttpProxyServer As %String [ Transient ];

/// The port to connect to the proxy web server on. This is often port 8080 (the default).<p>
/// You can specify a default proxy server for this namespace or for the entire instance
/// by setting ^SYS("HttpRequest","ProxyPort") or ^%SYS("HttpRequest","ProxyPort").
Property HttpProxyPort As %String [ Transient ];

/// If true then use the HTTP CONNECT command to establish a tunnel through the proxy
/// to the target HTTP server. The address of the proxy server is taken from
/// <property>HttpProxyServer and <property>HttpProxyPort. If the endpoint URL
/// has the https: protocol, then once the tunnel is established we will negociate the SSL connection.
Property HttpProxyTunnel As %Boolean [ Transient ];

/// SSL connection to the proxy server will be used if the HttpProxySSLConnect property = 1.
/// <property>
/// Use of SSL to the eventual endpoint is determined by the protocol part of
/// web service's location url.
Property HttpProxySSLConnect As %Boolean [ Transient ];

/// HttpProxyHTTPS property is ignored since the use of SSL to the end point
/// is now determiend from the url.
/// If using a proxy server and this is true then it issues a request for an https page
/// rather than the normal http page. This allows a proxy server that support https to
/// support a secure connection from this %Net.Httprequest class.
Property HttpProxyHTTPS As %Boolean [ Transient ];

/// Sets/get the 'Proxy-Authorization:' header field in the Http request.<p>
/// A user agent that wishes to authenticate itself with a proxy--
/// usually, but not necessarily, after receiving a 407 response--may do
/// so by including an Proxy-Authorization header field with the request. The
/// Proxy-Authorization field value consists of credentials containing the
/// authentication information of the user agent for the realm of the
/// resource being requested.<p>
Property HttpProxyAuthorization As %String [ Transient ];

/// The character set to send the HTTP request header in. According to the RFC the HTTP header
/// should only contain ASCII characters as the behaviour with characters outside this range
/// is unspecified. This class defaults to using UTF-8 as this leaves all the ASCII characters
/// unchanged. You should never need to change this parameter.
Property HttpRequestHeaderCharset As %String [ Transient ];

/// If the Username and <property>Password</property> are defined then this information
/// will be sent using Basic authentication to the web server. If you manually set the
/// <property>Authorization</property> header this property will be ignored.
Property HttpUsername As %String [ Transient ];

/// If the <property>Username</property> and Password are defined then this information
/// will be sent using Basic authentication to the web server. If you manually set the
/// <property>Authorization</property> header this property will be ignored.
Property HttpPassword As %String [ Transient ];

/// A client may initiate a connection to the server with an "Authorization" header containing
/// the initial token for the server for a chosen authentication scheme.
/// %Net.HttpRequest is asked to initiate the connection by setting the InitiateAuthentication property
/// to a string which is a single scheme name. This form will bypass the initial 401 error from
/// the server when the client knows that the server will accept the specified scheme.
/// Supported schemes are Negotiate, NTLM and Basic.
Property HttpInitiateAuthentication As %String [ Transient ];

/// If HttpAccept202=0 (default) we follow the WS-I Basic Profile which calls for HTTP response
/// status 202 to be used only if no SOAP envelope is in the HTTP response and return an error if no envelope.<br>
/// If HttpAccept202=1, HTTP status 202 will treated just the same as HTTP status 200.
/// The HttpResponse.StatusCode property may be checked to see if 202 was actually returned.
Property HttpAccept202 As %Boolean [ Transient ];

/// If set to true then this will force the %Net.HttpRequest class to reuse the existing connection
/// to the web server if the socket is already open. If there is any error it will be reported to
/// the caller. This has been introduced to support reliable SOAP messaging, so should not normally
/// be set by other code.
Property HttpForceReuseDevice As %Boolean [ InitialExpression = 0, Internal ];

/// Internal structure used to store the collection of headers for %Net.HttpRequest.
Property HttpHeaders As %String [ MultiDimensional, Private, Transient ];

/// Set this to the timeout the HttpRequest object will use when writing to the remote HTTP server.
/// If not set the value from the HttpRequest object (%Net.HttpRequest) WriteTimeout property will be used which has a default of -1.
/// -1 means it will wait indefinitely for the remote server to accept the written data, change it to another value to specify the timeout in seconds.
/// The minimum value accepted is 2 seconds.
Property HttpWriteTimeout As %Float [ Transient ];

/// Add HTTP header to the SOAP request. For example:
/// <EXAMPLE>
/// Set client = ##class(My.Generated.Soap.Calculator).%New()
/// Set client.Locaton = http://Server:Port/IRISPrefix/Application/WebService.cls?CfgItem=ProductionServiceName
/// . . .
/// Do client.SetHttpHeader("Header-Name", "Header Value")
/// Do client.SetHttpHeader("SendingFacility", "Haymarket")
/// . . .
/// Do client.WSSecurityLogin(username, password)
/// Try {
///   Set myResult = client.Add(2, 2)
/// } Catch {
/// 	 . . .
/// }
/// </EXAMPLE>
/// The header name is case insensitive and this class forces it to upper case so
/// when the Http request is issued it will output the header as:<p>
/// MYHEADER: Data to display<p>
/// Note that headers such as Content-Type, Content-Encoding, and Content-Length are
/// part of the entity body rather than the http main headers and as such as forwarded
/// to the <PROPERTY>ContentType</PROPERTY>, <PROPERTY>ContentEncoding</PROPERTY> and
/// trying to set the Content-Length is just ignored as this is a read only property.
/// Also any attempt to set the 'Connection' header is ignored at this request class
/// does not support persistent connections.<br/>
/// For custom SOAP Headers within SOAP Envelope see Client HeadersOut collection, %SOAP.Header type and WebService XData named "parameters".
Method SetHttpHeader(name As %String, value As %String) As %Status [ ServerOnly = 1 ]
{
}

/// Clear all previously set Http headers.
Method ResetHttpHeaders() As %Status [ ServerOnly = 1 ]
{
}

/// The WSSecurityLogin method adds the WS-Security Security header with /UsernameToken.
/// Only the /UsernameToken/Username and /UsernameToken/Password fields are supported.
/// Signing and/or encryption as specified by WS-Security is not supported.
/// These facilities are expected to be implemented by the use of SSL.
Method WSSecurityLogin(Username As %String, Password As %String) As %Status [ ServerOnly = 1 ]
{
}

Method MakeSecurityHeader() [ Internal, Private, ServerOnly = 1 ]
{
}

/// Test for valid WS-Security 1.1 SignatureConfirmation elements in response message.
/// Return true if valid.
Method WSCheckSignatureConfirmation() As %Boolean [ ServerOnly = 1 ]
{
}

/// Start a WS-SecureConversation session by sending the specified RequestSecurityToken body
/// to the web service and obtaining a RequestSecurityTokenResponse.
/// If ComputedKey is to be used with both client and server entropy, ComputedKeySize property
/// of the RequestSecurityToken object should be set before calling StartSecureConversation.
/// RequireServerEntropy property of the RequestSecurityToken object should be set before calling StartSecureConversation.<br><br>
///
/// The SecurityContextToken thus returned will be saved in the SecurityContextToken property.
/// Future calls to this client may use this token if needed for the WS-Policy or
/// by explicitly adding to SecurityOut by calling AddSecurityElement.<br><br>
///
/// The SecurityOut header needs to be set for proper security for the RequestSecurityToken request.
/// The SecurityOut header used for WS-StartSecureConversation will be cleared after when this method is complete.
Method StartSecureConversation(RST As %SOAP.WST.RequestSecurityToken) As %Status [ ServerOnly = 1 ]
{
}

/// Cancel the this client's current WS-SecureConversation token specified by the SecurityContextToken property.
/// Clear the SecurityContextToken propery.
/// If SecurityOut header has not been set, then a minimal SecurityOut using the token for signing is created.
/// The SecurityOut header used for WS-StartSecureConversation will be cleared after when this method is complete.
Method CancelSecureConversation() As %Status [ ServerOnly = 1 ]
{
}

/// Start a WS-ReliableMessaging sequence by sending the specified CreateSequence body
/// to the web service and obtaining a CreateSequenceResponse.
/// Sessions are only supported for HTTP synchronous (HTTP request/response) with anonymouse WS-Addressing and
/// for only a single client instance.
///
/// The %SYS.RMSession object that is referenced in the %SOAP.RM.CreateSequence object
/// is updated based on the CreateSequenceResponse and saved in the RMSession property of this client.
/// Future calls to this client will use this %SYS.RMSession to make future calls part of this sequence.<br><br>
///
/// The SecurityOut header needs to be set for proper security for the CreateSequence request.
/// The SecurityOut header used for WS-ReliableMessaging will be cleared after when this method is complete.
///
/// If the SecurityContextToken property contains a SecurityContextToken, then this token will be
/// associated with the new sequence.
Method %StartRMSession(createSequence As %SOAP.RM.CreateSequence) As %Status [ ServerOnly = 1 ]
{
}

/// Close this client's current WS-ReliableMessaging session specified by the RMSession property.
/// Clear the RMSession property. If OmitSeqAckHeader is set to 1, then a final SequenceAcknowledgement
/// header will suppressed from the response.
Method %CloseRMSession(OmitSeqAckHeader As %Boolean = 0) As %Status [ ServerOnly = 1 ]
{
}

/// Send a %SOAP.RequestMessage subclass instance as a request message
/// The arguments to this method are:<br>
///  Action is the SOAPAction for the SOAP request.<br>
///  If OneWay is 1 (true) then no response is expected.<br>
///  Request is the %SOAP.RequestMessage subclass instance.<br>
///  MethodName is an optional name of the method being called which is used to select the WS-Policy.<br>
/// The response message node will be set in the ResponseDocuemtn and ResponseNodeId properties of %SOAP.RequestMessage.
Method SendSOAPRequest(action As %String, oneWay As %Boolean = 0, request As %SOAP.RequestMessage, methodName As %String) As %Status [ ServerOnly = 1 ]
{
}

/// Execute the Web Method represented by the descriptor class on
/// the server.  If an error is detected, a ztrap "SOAP" will be issued with
/// %objlasterror containing the error %Status.  If is the responsibilty of the
/// caller of the proxy method to set an error trap and test for $ZE["&lt;ZSOAP&gt;".
/// Note that if a SOAP fault is received, then the error is $$$SOAPFaultReceived.
///
/// If method argument is "", then this is an internal call to send the XML body.
/// In this case proxy is the character stream containing the body.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
Method InvokeClient(proxy As %SOAP.ProxyDescriptor, method As %String, Action As %String, OneWay As %Boolean = 0) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Send SOAP request and process response
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
Method SOAPRequestResponse(proxy As %SOAP.ProxyDescriptor, method As %String, Output retryAllowed As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Default transport for HTTP protocol
/// %SOAP.WebClient acts as its own transport class.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
Method DoSOAPRequest(Client As %SOAP.WebClient, Action As %String, OneWay As %Boolean, requestStream As %BinaryStream, ByRef responseStream As %BinaryStream) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Log the HTTP headers associated with an input SOAP message.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method LogInputHTTPHeaders() [ Internal, ServerOnly = 1 ]
{
}

/// Log the HTTP headers associated with an output SOAP message.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method LogOutputHTTPHeaders() [ Internal, ServerOnly = 1 ]
{
}

/// This method is a callback which will be invoked before invoking transport.DoSOAPRequest() method
/// to make the actual SOAP request.  This method may be override by the user's web client class.
/// DoSOAPRequest is the transport method which is responsible for sending the SOAP request and receiving the response.
/// The default DoSOAPRequest is included in %SOAP.WebClient and uses HTTP for request/response.<br><br>
///
/// The mode argument specifies the type of SOAP request "SOAP" or "binary".<br>
/// The client argument is the oref of the web client class.<br>
/// The action argument contains the value of the SOAPAction.<br>
/// The oneWay argument is true if no body is to be sent.
/// The method argument is the name of the WebMethod that is being invoked<br>
/// The requestStream argument contains the SOAP request message in a stream.
/// requestStream may =0 as an optimization to improve SOAP performance.
/// requestStream=0 means that the stream is kept in memory as much as possible with overflow to a global.
/// requestStream may be accessed by using $$$XMLRewind and $$$XMLRead macros.<br>
Method %OnSOAPRequest(mode As %String, client As %SOAP.WebClient, action As %String, oneWay As %Boolean, method As %String, requestStream As %BinaryStream)
{
}

/// This method is a callback which will be invoked after invoking transport.DoSOAPRequest() method
/// that made the actual SOAP request.  This method may be override by the user's web client class.
/// DoSOAPRequest is the transport method which is responsible for sending the SOAP request and receiving the response.
/// The default DoSOAPRequest is included in %SOAP.WebClient and uses HTTP for request/response.<br><br>
///
/// The mode argument specifies the type of SOAP request "SOAP" or "binary".<br>
/// The client argument is the oref of the web client class.<br>
/// The action argument contains the value of the SOAPAction.<br>
/// The oneWay argument is true if no body is to be sent.
/// The method argument is the name of the WebMethod that is being invoked<br>
/// The requestStream argument contains the SOAP request message in a stream.<br><br>
/// The responseStream argument contains the SOAP response message in a stream.<br>
/// The sc argument is the %Status that was returned by DoSOAPRequest.
Method %OnSOAPResponse(mode As %String, client As %SOAP.WebClient, action As %String, oneWay As %Boolean, method As %String, requestStream As %BinaryStream, responseStream As %BinaryStream, sc As %Status)
{
}

/// This method is a callback which will be invoked after all processing of the web client call
/// has been completed.  This method may be override by the user's web client class.<br><br>
///
/// The mode argument specifies the type of SOAP request "SOAP" or "binary".<br>
/// The client argument is the oref of the web client class.<br>
/// The method argument is the name of the WebMethod that is being invoked<br>
/// The sc argument is the %Status for this method.  sc will be be $$$OK unless an error has been detected.
Method %OnSOAPFinished(mode As %String, client As %SOAP.WebClient, method As %String, sc As %Status)
{
}

}
