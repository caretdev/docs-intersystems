/// The <CLASS>%CSP.Request</CLASS> class encapsulates an incoming URL and its parameters.
/// <P>When a csp request is received, the CSP Server creates an instance of the
/// <CLASS>%CSP.Request</CLASS> class.
/// This is accessible via the <VAR>%request</VAR> variable.
Class %CSP.Request Extends %RegisteredObject [ ServerOnly = 1, System = 3 ]
{

/// A string containing the URL up to and including the page name
/// and extension, but not including the query string.
Property URL As %String;

/// Used to keep track of old values
Property store As %String [ Internal, MultiDimensional, Private ];

/// A string containing the name of the CSP page being processed.
Property PageName As %String;

/// If the url contains the configuration name of the server as the first piece
/// then this is defined to be the correct prefix to prepend to urls so they
/// include this config name
Property URLPrefix As %String;

/// A string indicating the type of browser from which the request
/// originated, as determined from the HTTP_USER_AGENT header.
Property UserAgent As %String;

/// The Gatewway Request Id
Property RequestId As %String;

/// If set to true then do not reset the session timeout for this request.
/// Useful if this request is checking some state on the session but does not want
/// to reset the timeout and cause the session to last longer. This property is set
/// automatically if you pass in query parameter 'CSPNoResetTimeout'.
Property NoResetTimeout As %Boolean [ InitialExpression = 0 ];

Method UserAgentSet(val As %String) As %Status [ Internal, Private ]
{
}

/// A string indicating the MIME Content-Type of the request.
Property ContentType As %String;

Method ContentTypeSet(val As %String) As %Status [ Internal, Private ]
{
}

/// Character set this request was send in, if not specified in the HTTP headers
/// it defaults to the character set of the page it is being submitted to.
Property CharSet As %String;

Method CharSetSet(val As %String) As %Status [ Internal, Private ]
{
}

/// Internal character set to use to convert the input, will be the <property>CharSet</property> if
/// specified in the HTTP headers, else we determine this from the page this is being dispatched to.
Property ConvertCharSet As %String [ Internal, Private ];

/// A <class>%CSP.Stream</class> containing the content submitted
/// with this request.
Property Content As %CSP.Stream;

/// A string indicating HTTP method used for this request. Normally one
/// of 'GET', 'POST', or 'HEAD'.
Property Method As %String;

/// HTTP protocol version of the browser request. Normally either
/// 'HTTP/1.0' for older browsers and 'HTTP/1.1' for newer browsers.
Property Protocol As %String [ InitialExpression = "HTTP/1.1" ];

Method ProtocolSet(val As %String) As %Status [ Internal, Private ]
{
}

/// True if the communication between the browser and the web server was using
/// the secure https protocol. False for a normal http connection.
Property Secure As %Boolean [ InitialExpression = 0 ];

Method SecureSet(val As %String) As %Status [ Internal, Private ]
{
}

/// The section of the Url that the CSP Gateway on the web server matched
/// against to determine which InterSystems IRIS server to send the request to.
/// If the Url was '/csp/samples/menu.csp' and the CSP Gateway is setup to
/// match all requests to '/csp' then this parameter would be '/csp'.
Property GatewayApplication As %String;

Method GatewayApplicationSet(val As %String) As %Status [ Internal, Private ]
{
}

/// The name of the connection in the CSP Gateway that this request was sent to.
Property GatewayConnectionName As %String;

Method GatewayConnectionNameSet(val As %String) As %Status [ Internal, Private ]
{
}

/// How the gateway obtained the sessionId information.<ul>
/// <li>0 - Field not defined</li>
/// <li>1 - New session generated by Gateway</li>
/// <li>2 - CSPCHD in url/form</li>
/// <li>3 - Browser cookie</li>
/// <li>4 - SOAP payload</li></ul>
Property GatewaySessionIdSource As %Integer [ Internal ];

Method GatewaySessionIdSourceSet(val As %String) As %Status [ Internal, Private ]
{
}

/// True if the sessionId is newly assigned by the Gateway, and false if it is provided by the browser
Property GatewayNewId As %Boolean [ InitialExpression = 0 ];

/// The internal build version of the CSP Gateway talking to the server
Property GatewayBuild As %String;

Method GatewayBuildSet(val As %String) As %Status [ Internal, Private ]
{
}

/// Internal information on CSP Gateway functions
Property GatewayFunctions As %String [ Internal ];

Method GatewayFunctionsSet(val As %String) As %Status [ Internal, Private ]
{
}

/// The session cookie that the Gateway picked as the sessionId
Property GatewaySessionCookie As %String;

Method GatewaySessionCookieSet(val As %String) As %Status [ Internal, Private ]
{
}

/// The instance host name of the Gateway that is communicating with this process
Property GatewayInstanceName As %String;

/// The status of Registry Methods [1:Enabled; 0:Disabled]
Property RegistryMethods As %Integer [ InitialExpression = 1 ];

Method GatewayInstanceNameSet(val As %String) As %Status [ Internal, Private ]
{
}

/// Internal property to hold CSP Gateway originated error codes
Property GatewayError As %Status [ Internal ];

/// The section of the Url that has been matched against a CSP application name.
Property Application As %String;

Method ApplicationSet(val As %String) As %Status [ Internal, Private ]
{
}

/// True if the request came the CSP Gateway, and false if it was from the
/// command line or the built in web server.
Property CSPGatewayRequest As %Boolean [ InitialExpression = 0 ];

Method CSPGatewayRequestSet(val As %String) As %Status [ Internal, Private ]
{
}

/// The value of the Server Response Timeout in the Gateway configuration.
Property GatewayTimeout As %Integer [ InitialExpression = 60 ];

/// An array of strings containing any parameter name/value pairs associated with this request.
/// The format of this array is:<br><ul>
/// <li>%request.Data(&lt;NAME&gt;,&lt;INDEX&gt;)=&lt;VALUE&gt;</li>
/// <li>%request.Data(&lt;NAME&gt;,&lt;INDEX&gt;,"encrypt")=&lt;Encrypted state&gt;</li>
/// <li>%request.Data(&lt;NAME&gt;,&lt;INDEX&gt;,"O")=&lt;Order number item was added&gt;</li>
/// </ul>
/// Where &lt;NAME&gt; is the name of the parameter, &lt;INDEX&gt; is an index number starting at 1 as
/// you may have multiple parameters with the same name so subsequent ones will be added with
/// a higher index number. &lt;VALUE&gt; is the value of this parameter. &lt;Encrypted state&gt; is
/// 1 if the value of this parameter was encrpyted and 0 otherwise.<br>
/// Note that it is faster to access this multidimensional property directly rather than going through
/// the accessor methods. For example:
/// <example>
/// ; Set the index number one 'Name' to 'Value'
/// Set %request.Data("Name",1)="Value"
/// ; Output the value of parameter 'Name' for index number one (the default)
/// Write %request.Data("Name",1)
/// ; Insert a new value for parameter 'Name' to 'Value'
/// Set %request.Data("Name",$Order(%request.Data("Name",""),-1)+1)="Value"
/// ; Test if parameter 'Name' at index 2 is encrypted
/// If $Data(%request.Data("Name",2,"encrypt"))
/// </example>
/// <p>If InterSystems IRIS receives a value that is longer than the string length limit,
/// it automatically creates a stream, writes the value to that stream, and places the stream
/// OREF into the Data property in place of the actual value. This means that in any case where
/// you might receive a very long string, your code should examine the value to see if it is an
/// OREF, and then handle it accordingly:
/// </p>
/// <example>
///  Set value=%request.Data("fieldname",1)
///  If $isobject(value) {
///    ; Treat this as a stream
///  } Else {
///    ; Treat this as a regular string
///  }
/// </example>
Property Data As %String [ MultiDimensional ];

/// An array of strings containing any cookie values associated with this request.
/// The format of this array is:<br><ul>
/// <li>request.Cookies(&lt;NAME&gt;,&lt;INDEX&gt;)=&lt;VALUE&gt;</li>
/// </ul>
/// Where &lt;NAME&gt; is the name of the cookie, &lt;INDEX&gt; is an index number starting at 1 as
/// you may have multiple cookies with the same name so subsequent ones will be added with
/// a higher index number. &lt;VALUE&gt; is the value of this cookie.<br>
/// <br>
/// It is suggested that you use the accessor methods rather than set/get the value of this
/// multidimentional property directly.
Property Cookies As %String [ MultiDimensional ];

/// An array of streams containing any multipart/mime data associated with this request.
/// The format of this array is:<br><ul>
/// <li>request.MimeData(&lt;NAME&gt;,&lt;INDEX&gt;)=&lt;VALUE&gt;</li>
/// </ul>
/// Where &lt;NAME&gt; is the name of the mime data stream, &lt;INDEX&gt; is an index number starting at
/// 1 as you may have multiple mime streams with the same name so subsequent ones will be added with
/// a higher index number. &lt;VALUE&gt; is the Oref of the stream associated with this mime data.<br>
/// <br>
/// It is suggested that you use the accessor methods rather than set/get the value of this
/// multidimentional property directly.
Property MimeData As %RawString [ MultiDimensional ];

/// An array of strings containing any environment values associated with this request.
/// The format of this array is:<br><ul>
/// <li>request.CgiEnvs(&lt;NAME&gt;)=&lt;VALUE&gt;</li>
/// </ul>
/// Where &lt;NAME&gt; is the name of the Cgi environment variable and &lt;VALUE&gt; is the
/// value of this environment variable.<br>
/// <br>
/// It is suggested that you use the accessor methods rather than set/get the value of this
/// multidimentional property directly.
Property CgiEnvs As %String [ MultiDimensional ];

/// Store some CSP application specific internal data for this request
Property AppData As %String [ Internal ];

Method AppDataSet(data As %String) As %Status [ Internal, Private ]
{
}

/// Portion of the url which we matched on to determine the web application settings to use
Property AppMatch As %String;

Method AppMatchSet(data As %String) As %Status [ Internal, Private ]
{
}

/// Classname we are going to call
Property Class As %String [ Internal ];

Method ClassSet(val As %String) As %Status [ Private ]
{
}

/// Type of request we have
Property Service As %String [ InitialExpression = "CSP", Internal ];

Method ServiceSet(val As %String) As %Status [ Private ]
{
}

Method UpdateURL(url As %String, servername As %String = "", response As %CSP.Response, update As %Boolean = 0) As %Status [ Internal ]
{
}

/// Returns the value of name-value pair <VAR>name</VAR>.
/// <P>If more than one value is associated with <VAR>name</VAR>, then the values
/// are subscripted using <VAR>index</VAR> starting with 1. Note that any encrypted
/// parameters will have lower index values than any unencrypted parameters, and so
/// will come first when you loop through them.
/// <P>If the name-value pair is not defined, returns the value of <VAR>default</VAR>.
/// <P>It is recommended to access the <property>Data</property> property directly
/// because it is faster. For example, this call is equivalent to:
/// <example>
/// Set return=$Get(%request.Data(name,index),default)
/// </example>
Method Get(name As %String, default As %String = "", index As %Integer = 1) As %String [ CodeMode = expression, Final ]
{
}

/// Set the name-value par <var>name</var> to <var>value</var>. As more than one value
/// can be associated with <var>name</var> you can specify an <var>index</var> which
/// is an integer subscript starting at 1 (the default). <P>It is recommended to access the
/// <property>Data</property> property directly because it is faster. For example, this call
/// is equivalent to:
/// <example>
/// Set %request.Data(name,index)=value
/// </example>
Method Set(name As %String, value As %String, index As %Integer = 1) [ Final, Internal ]
{
}

/// Insert the value of name-value pair <VAR>name</VAR> to <VAR>value</VAR>.
/// <P>If more than one value is associated with <VAR>name</VAR>, then the values
/// are subscripted using <VAR>index</VAR> starting with 1. <P>It is recommended to access the
/// <property>Data</property> property directly because it is faster. For example, this call
/// is equivalent to:
/// <example>
/// Set %request.Data(name,$Order(%request.Data(name,""),-1)+1)=value
/// </example>
Method Insert(name As %String, value As %String) [ Final ]
{
}

/// Tests if a name-value pair <VAR>name</VAR> is defined. <P>It is recommended to access the
/// <property>Data</property> property directly because it is faster. For example, this call
/// is equivalent to:
/// <example>
/// Set return=$Data(%request.Data(name,index))
/// </example>
Method IsDefined(name As %String, index As %Integer = 1) As %Boolean [ CodeMode = expression, Final ]
{
}

/// Returns the number of values associated with the name-value pair <VAR>name</VAR>.
Method Count(name As %String) As %Integer [ Final ]
{
}

/// Returns the index of the name-value pair for <VAR>name</VAR>
/// with <VAR>value</VAR>.  If not found, return "".
Method Find(name As %String, value As %String) As %Integer [ Final ]
{
}

/// Pass the <var>index</var> by reference and it updates it with the next index number for
/// the name-value pair <var>name</var>. The method returns the value at the new index number.
/// This is useful for looping through the index values. <P>It is recommended to access the
/// <property>Data</property> property directly because it is faster. For example, this call
/// is equivalent to:
/// <example>
/// Set index=$Order(%request.Data(name,index),1,return)
/// </example>
Method NextIndex(name As %String, ByRef index As %Integer = "") As %String [ Final ]
{
}

/// Return true if the name-value pair <var>name</var> at <var>index</var> is encrypted in the
/// url and false if it is not. This is useful to check that a parameter value that should
/// not be altered and so is generated and encrypted on the server has not been replaced by
/// the user by a 'http://machine/url.csp?PARAM=TEST' rather than the encrypted string produced
/// by the server. <P>It is recommended to access the <property>Data</property> property directly
/// because it is faster. For example, this call is equivalent to:
/// <example>
/// Set return=$Get(%request.Data(name,index,"encrypt"),0)
/// </example>
Method IsEncrypted(name As %String, index As %Integer = 1) As %Boolean [ CodeMode = expression, Final ]
{
}

/// Given an encrypted <var>string</var> that is a series of name-value pairs and a <var>key</var>
/// to decrypt it with this will insert them into the request and set the encrypted flag.
Method Decrypt(data As %String, key As %String) As %Status [ Final ]
{
}

/// Internal utility function for decryption.
Method realDecrypt(data As %String, key As %String) As %Status [ Final, Internal, Private ]
{
}

/// Returns the next key in sequence. <P>It is recommended to access the
/// <property>Data</property> property directly because it is faster.
/// For example, this call is equivalent to:
/// <example>
/// Set return=$Order(%request.Data(name))
/// </example>
Method Next(name As %String) As %String [ CodeMode = expression, Final ]
{
}

/// Removes this key from the collection, returns true if the valued existed
/// and false if it never existed. <P>It is recommended to access the
/// <property>Data</property> property directly because it is faster.
/// For example, this call is equivalent to:
/// <example>
/// ; If index=""
/// Kill %request.Data(name)
/// ; If index'=""
/// Kill %request.Data(name,index)
/// </example>
Method Delete(name As %String, index As %Integer = "") As %Boolean [ Final, Internal ]
{
}

/// Retrieves the named cookie
Method GetCookie(name As %String, default As %String = "", index As %Integer = 1) As %String [ CodeMode = expression, Final ]
{
}

/// Inserts a cookie name/value pair.
Method InsertCookie(name As %String, value As %String) [ Final, Internal ]
{
}

/// Returns true if the named cookie exists in the cookie collection, false otherwise.
Method IsDefinedCookie(name As %String, index As %Integer = 1) As %Boolean [ CodeMode = expression, Final ]
{
}

/// Returns the count of cookies with this name.
Method CountCookie(name As %String) As %Integer [ Final ]
{
}

/// Retrieves the next cookie name in the sequence
Method NextCookie(name As %String) As %String [ CodeMode = expression, Final ]
{
}

/// Removes this cookie from the collection, returns true if the cookie existed and
/// false if it never existed.
Method DeleteCookie(name As %String, index As %Integer = "") As %Boolean [ Final, Internal ]
{
}

/// Retrieves the named multipart MIME stream.
Method GetMimeData(name As %String, default As %Stream.Object = "", index As %Integer = 1) As %Stream.Object [ CodeMode = expression, Final ]
{
}

/// Inserts a multipart MIME stream by name into the collection.
Method InsertMimeData(name As %String, value As %Stream.Object) [ Final, Internal ]
{
}

/// Returns true if the named multipart MIME stream exists in the collection, false otherwise.
Method IsDefinedMimeData(name As %String, index As %Integer = 1) As %Boolean [ CodeMode = expression, Final ]
{
}

/// Returns the count of multipart MIME streams with this name.
Method CountMimeData(name As %String) As %Integer [ Final ]
{
}

/// Retrieves name of the next multipart MIME stream stored in the request object.
Method NextMimeData(name As %String) As %String [ CodeMode = expression, Final ]
{
}

/// Return the index number of the next multipart MIME stream stored in the request object.
Method NextMimeDataIndex(name As %String, index As %Integer = "") As %String [ CodeMode = expression, Final ]
{
}

/// Removes this multipart MIME stream from the collection. Returns the number
/// of nodes it has removed. If <var>name</var> is not defined then it will
/// remove the entire set of MimeData, if <var>name</var> is defined but <var>index</var>
/// is not then it will remove all items stored under <var>name</var>.
Method DeleteMimeData(name As %String = "", index As %Integer = "") As %Integer [ Final, Internal ]
{
}

/// Retrieves the named CGI environment variable.
Method GetCgiEnv(name As %String, default As %String = "") As %String [ CodeMode = expression, Final ]
{
}

/// Inserts a CGI environment variable by name into the collection.
Method InsertCgiEnv(name As %String, value As %String) [ Final, Internal ]
{
}

/// Returns true if the named CGI environment variable exists in the collection, false otherwise.
Method IsDefinedCgiEnv(name As %String) As %Boolean [ CodeMode = expression, Final ]
{
}

/// Retrieves the next CGI environment variable name in the sequence
Method NextCgiEnv(name As %String) As %String [ CodeMode = expression, Final ]
{
}

/// Removes this CGI environment variable from the collection, returns true if the item
/// was defined and false if it was never defined.
Method DeleteCgiEnv(name As %String) As %Boolean [ Final, Internal ]
{
}

/// Resets this %CSP.Request object to its initial state
Method Reset() [ CodeMode = generator, Final ]
{
}

/// Internal function that resets some of the values in %CSP.Request object to its initial state.
/// Only for use by the CSP engine itself.
Method CSPGatewayReset() [ CodeMode = generator, Final, Internal ]
{
}

Method ProcessRequest(header As %String) [ Internal ]
{
}

Property ProcessedRequestType As %Boolean [ InitialExpression = 0, Internal ];

Property SoapAction As %String [ Internal, MultiDimensional ];

Method DetermineRequestType() [ Internal ]
{
}

}
