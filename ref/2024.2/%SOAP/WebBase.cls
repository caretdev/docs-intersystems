/// Super class for SOAP Web Client and Web Server Base class and super class for Web Service classes.
/// <br>
///
/// The only supported use of this class is as the super class for
/// %SOAP.WebService and %SOAP.WebClient in order to define common properties and parameters.
/// Parameters and properties may be used by the application.<br><br>
///
/// In addition to parameters, an XData block may be used to supply additional information about
/// the web service or web client.
/// The XData member may contain descriptions of the expected request and response headers.  However, only one configuration
/// The format of the parameters element is as follows:<br>
/// <pre>
/// &lt;parameters xmlns="http://www.intersystems.com/configuration"&gt;
///    &lt;request&gt;
///       &lt;header ... &lt;/header&gt; *
///    &lt;/request&gt; ?
///    &lt;response&gt;
///       &lt;header ... &lt;/header&gt; *
///    &lt;/response&gt; ?
///    &lt;method name="xs:NCNAME"&gt;
///       &lt;request&gt;
///          &lt;header ... &lt;/header&gt; *
///       &lt;/request&gt; ?
///       &lt;response&gt;
///          &lt;header ... &lt;/header&gt; *
///       &lt;/response&gt; ?
///    &lt;/method&gt; *
/// &lt;/parameters&gt;
///
/// Cardinality is indicated by ? (0 or 1), * (0 or more) and + (1 or more) after the ending element.
///
/// The following describes the elements and attributes:
/// /parameters
///     Identifies parameters root
/// /parameters/request
///     The parameters for the request message corresponding to all methods for this web service or client.
///     These parameters are merged with the parameters for the individual method.
/// /parameters/request/header
///     The specification of a SOAP header which may be associated with this request message.
///     The format of the header element is described below.
/// /parameters/response
///     The parameters for the response message corresponding to all methods for this web service or client.
///     These parameters are merged with the parameters for the individual method.
/// /parameters/response/header
///     The specification of a SOAP header which may be associated with this response message.
///     The format of the header element is described below.
///
/// /parameters/method
///     The parameters for this method for this web service or client.
/// /parameters/method/@name
///     The name of the method
/// /parameters/method/request
///     The parameters for the request message corresponding to this method for this web service or client.
/// /parameters/method/request/header
///     The specification of a SOAP header which may be associated with this request message.
///     The format of the header element is described below.
/// /parameters/method/response
///     The parameters for the response message corresponding to this method for this web service or client.
/// /parameters/method/response/header
///     The specification of a SOAP header which may be associated with this response message.
///     The format of the header element is described below.
///
/// The definition of the header element is as follows:
/// &lt;header name="s:string"
///            namespace="s:string"
///            class="s:string"
///            alias="s:string"?
/// /&gt;
///
/// .../header/@name
///     The required element name of the header.
/// .../header/@namespace
///     The required namespace of the header.
/// .../header/@class
///     The required name of the class that corresponds to the header.
/// .../header/@alias
///     The optional alias to be used for this header in the HeadersIn array.
///     The default is the element name specified in the name attribute.
/// </pre>
Class %SOAP.WebBase Extends %RegisteredObject [ Abstract, System = 3 ]
{

/// LOCATION - Should be the URL for invoking the web service for which this is a proxy.
/// Override this parameter in the subclass.
/// Also, can be overridden by setting the Location property of the client at runtime.
/// Parameter LOCATION = "http://localhost/csp/MyNameSpace/client.cls";
/// This parameter is normally only used with Web service clients (subclasses of %SOAP.WebClient) &mdash;
/// not Web services themselves (subclasses of %SOAP.WebService).
Parameter LOCATION;

/// The ARGUMENTSTYLE parameter may be used to specify a message format in which
/// each request message part (not the elements of the part's type) is an argument
/// and each response message part is a return value or output argument.
/// The use of the message or wrapped format is specified by the ARGUMENTSTYLE parameter
/// of the web service or web client class.
/// The default value for ARGUMENTSTYLE is "wrapped" or "".
/// Message style arguments are indicated by a value of "message".
/// The ARGUMENTSTYLE parameter will be ignored if the SoapBindingStyle is not document.
Parameter ARGUMENTSTYLE As STRING [ Constraint = ",message,wrapped", Flags = ENUM ];

/// NAMESPACE - Should be an unique URI
/// Override this parameter in the subclass with the unique namespace URI
/// of your organization.
/// Override this parameter in the subclass.
Parameter NAMESPACE = "http://tempuri.org";

/// The RESPONSENAMESPACE parameter for SOAP client and SOAP service classes allows
/// the SOAP request and SOAP response messages when SoapBindingStyle="rpc"
/// to each be in a different namespace. The RESPONSENAMESPACE parameter specifies
/// the namespace for the SOAP response message descriptor class.
/// If RESPONSENAMESPACE is not specified the default is the NAMESPACE parameter.
///
/// The RESPONSENAMESPACE parameter applies to all methods in the class and is not
/// overridden by the SoapNameSpace method keyword.
Parameter RESPONSENAMESPACE;

/// ELEMENTQUALIFIED controls the format of the SOAP body.
/// The ELEMENTQUALIFIED specification reflects the elementFormDefault attribute of the
/// schema element for the TYPENAMESPACE in the WSDL defining the SOAP service.
/// To maintain compatibility, ELEMENTQUALIFIED will default to 1 (true) for SoapBodyUse="literal"
/// and will default to 0 (false) for SoapBodyUse="encoded".
/// These were the values always previously assumed for the elementFormDefault attribute.
Parameter ELEMENTQUALIFIED As BOOLEAN;

/// ATTRIBUTEQUALIFIED controls the format of the SOAP body.
/// The ATTRIBUTEQUALIFIED specification reflects the attributeFormDefault attribute of the
/// schema element for the TYPENAMESPACE in the WSDL defining the SOAP service.
/// ATTRIBUTEQUALIFIED defaults ot 0 if not specified.
Parameter ATTRIBUTEQUALIFIED As BOOLEAN;

/// TYPENAMESPACE specifies the XML namespace for the types used for
/// the method arguments and return types in this web client or
/// web service.  If TYPENAMESPACE is not specified or is "",
/// then the default namespace used for the types is from
/// the NAMESPACE parameter.
/// Override this parameter in the subclass.
Parameter TYPENAMESPACE;

/// The RESPONSETYPENAMESPACE parameter for SOAP client and SOAP service classes allows
/// the SOAP request and SOAP response message parts when SoapBindingStyle="document"
/// to each be in a different namespace. The RESPONSETYPENAMESPACE parameter specifies
/// the namespace for the SOAP response message descriptor class.
/// If RESPONSETYPENAMESPACE is not specified the default is the TYPENAMESPACE parameter.
///
/// The RESPONSETYPENAMESPACE parameter applies to all methods in the class and is not
/// overridden by the SoapTypeNameSpace method keyword.
Parameter RESPONSETYPENAMESPACE;

/// Specifies if part elements of messages in the WSDL use type or element attribute.
/// XMLELEMENT defaults to 1 for "literal" WSDL and to 0 for "encoded" WSDL.
Parameter XMLELEMENT As BOOLEAN;

/// XMLIGNORENULL allows the programmer to override the default XML handling
/// of empty strings for web method arguments of type %String.  By default (XMLIGNORENULL = 0),
/// empty strings in the XML input are stored as $c(0) and $c(0) is written to XML
/// as an empty tag. A missing tag in the XML input is always stored as "" and
/// "" is always output to XML as no tag.<br>
///
/// If XMLIGNORENULL is set = 1, then both missing tags in the XML and empty
/// strings are input as "", and both "" and $c(0) are output as empty tags
/// (i.e. &lt;tag /&gt;).<br>
///
/// If XMLIGNORENULL is set = "inputonly", then both missing tags in the XML and empty
/// strings are input as "".  Output of "" and $c(0) are for XMLIGNORENULL = 0:
/// $c(0) is output as an empty tag (i.e. &lt;tag /&gt;) and "" is output as no tag.<br>
///
/// XMLIGNORENULL specified in the web client or service class specifies
/// XMLIGNORENULL for the SOAP messages used for each web method.
Parameter XMLIGNORENULL As STRING [ Constraint = ",0,1,inputonly", Flags = ENUM ];

/// The SOAPVERSION parameter specified the version of SOAP which is supported.
/// Possible values for the version are 1.1 and 1.2. The value "" specifies
/// that both SOAP 1.1 and SOAP 1.2 are supported.
Parameter SOAPVERSION As STRING [ Constraint = ",1.1,1.2", Flags = ENUM ];

/// If USEPPGHANDLER is true (1), then force SOAP request or response parsing to use PPG memory.<br>
/// If USEPPGHANDLER is false (0), then force SOAP request or response parsing to use local array memory.<br>
/// If USEPPGHANDLER is not set ( or = ""), then use default memory -- usually local array memory.<br>
/// The %SOAP.WebClient UsePPGHandler property may be used to override this parameter for each invocation.
Parameter USEPPGHANDLER As BOOLEAN;

/// The XMLIGNOREINVALIDTAG parameter allows the programmer to control handling of unexpected
/// elements in the XML input.
/// By default (XMLIGNOREINVALIDTAG = 0), will treat an unexpected element as an error.
/// If XMLIGNOREINVALIDTAG is set = 1, then unexpected elements will be ignored.
Parameter XMLIGNOREINVALIDTAG As BOOLEAN [ Internal ] = 0;

/// The SoapVersion property is either "1.1" or "1.2" and indicates the SOAP
/// version for the current invocation.<br><br>
Property SoapVersion As %String;

/// Action for this web service call
Property Action As %String [ Internal, Transient ];

/// SOAPBINARY - If = 1, then binary SOAP messages will be supported.<br/>
/// For requests directed to subclass of %SOAP.WebService but not EnsLib.SOAP.Service
Parameter SOAPBINARY As BOOLEAN;

/// SERVICENAME - Should be the name of the service for which this is a proxy.
/// Override this parameter in the subclass.
Parameter SERVICENAME;

/// SOAPPREFIX allows override of the default SOAP prefix.  Default is SOAP-ENV.
/// The prefix must be specified without the trailing ":".
Parameter SOAPPREFIX As STRING = "SOAP-ENV";

/// Checking the existence of REQUIRED properties and arguments is off by default.
/// To turn on REQUIRED checking. set the SOAPCHECKREQUIRED parameter to 1 (default is 0).
Parameter SOAPCHECKREQUIRED As BOOLEAN = 0;

Property OutputTypeAttribute As %Boolean [ InitialExpression = 0 ];

/// OUTPUTTYPEATTRIBUTE allows the programmer to force the xsi:type attribute to be included
/// in all elements of a SOAP message which is a web client request or web service response.
Parameter OUTPUTTYPEATTRIBUTE As BOOLEAN = 0;

/// If <property>ReferencesInline</property> is true (1), then encoded objects are exported inline.
/// By default, SOAP encoded XMLExport of a class uses idref's for class instances referenced by
/// a class that is being exported.  This change allows the referenced class instances to be exported
/// inline as for "literal" format.
Property ReferencesInline As %Boolean [ Transient ];

/// If REFERENCESINLINE is true (1), then encoded objects are exported inline.
/// By default, SOAP encoded XMLExport of a class uses idref's for class instances referenced by
/// a class that is being exported.  This change allows the referenced class instances to be exported
/// inline as for "literal" format.
/// If the ReferencesInline property is specified, then it will override the REFERENCESINLINE parameter.
Parameter REFERENCESINLINE As BOOLEAN = 0;

/// If <property>Base64LineBreaks</property> is true (1), then include line breaks
/// in base64 encoded XML output for all properties of type %Binary or %xsd.base64Binary.
/// The default is 0 which excludes line breaks.
/// If this property is specified, then it will override the BASE64LINEBREAKS parameter.
Property Base64LineBreaks As %Boolean [ Transient ];

/// If BASE64LINEBREAKS is true (1), then include line breaks
/// in base64 encoded XML output for all properties of type %Binary or %xsd.base64Binary.
/// The default is 0 which excludes line breaks.
/// If the Base64LineBreaks property is specified, then it will override the BASE64LINEBREAKS parameter.
Parameter BASE64LINEBREAKS As BOOLEAN = 0;

/// The Transport property may be set to an instance of a transport class which will
/// provide a DoSoapRequest method that will take a request and obtain the response
/// using its transport.
Property Transport As %RegisteredObject [ Transient ];

/// Location property.  Initialized to LOCATION parameter.
Property Location As %String [ InitialExpression = {..#LOCATION}, Transient ];

/// Timeout property.  Controls timeout waiting, in seconds, for response.
Property Timeout As %Integer [ Transient ];

/// For a web service, this is the SOAP Fault to return.
///     The SoapFault property may be set before calling Process to return a SOAP fault.
/// For a web client, when the response message is a SOAP fault, then ZTRAP is throw and
///   SoapFault is the corresponding %SOAP.Fault instance.
Property SoapFault As %SOAP.Fault [ Transient ];

/// SAXFlags property.  The flags passed to the SAX parser.
Property SAXFlags As %Integer [ InitialExpression = {$$$SAXFULLDEFAULT-$$$SAXVALIDATIONSCHEMA}, Transient ];

/// The name of method that is called.
/// The method name is used to determine which WS-Policy applies and which headers are expected to be received.
Property MethodName As %String [ Internal, Transient ];

/// A list of supported SOAP headers is specified as a comma separated list of input header
/// specifications.  Each specification is of the form "headerName:headerClass" where
/// headerName is the element name of the supported header and
/// headerClass is the %SOAP.Header subclass that corresponds to that header.
/// This list defines all headers supported in the SOAP request.
Parameter SOAPHEADERS;

/// List of headers to be input
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property SoapHeaders As %String [ Private, Transient ];

/// Any SOAP header in the SOAP request that is found in the SOAPHEADERS list or header element
/// of parameters XData is imported as a %SOAP.Header subclass and added to the HeadersIn array.
/// The web method may then act on these headers as appropriate.
Property HeadersIn As array Of %SOAP.Header [ Transient ];

/// Any web service or web client method may add instances of any %SOAP.Header subclass to this array.
/// The index is arbitrary but is usually the element name of the header.
/// The corresponding headers are then added to the SOAP response message.
/// This collection of headers is cleared after each method call.
Property HeadersOut As array Of %SOAP.Header [ Transient ];

/// WSADDRESSING parameter controls automatic generation of WS-Addressing headers.
Parameter WSADDRESSING As STRING [ Constraint = ",OFF,AUTO", Flags = ENUM ] = "OFF";

/// WS-Addressing properties of the input message.
/// AddressingIn will be = "", unless some WS-Addressing headers are
/// encountered in the SOAP headers.
Property AddressingIn As %SOAP.Addressing.Properties;

/// WS-Addressing properties for the output message.
/// SOAP headers will be constructed from these properties.
Property AddressingOut As %SOAP.Addressing.Properties;

/// Namespaces for message to be output.
Property NamespacesOut As %XML.Namespaces [ Internal, Transient ];

/// The XML namespace used for the security header.
/// SecurityNamespace is set based on WS-Security namespace used for an input message
/// or may be set to control the WS-Security namespace used for an output message.
Property SecurityNamespace As %String [ Transient ];

/// The wsu:Id attribute to be added to the Body element when writing a SOAP message.
Property BodyId As %String(MAXLEN = "") [ Transient ];

/// The xml:id attribute to be added to the Body element when writing a SOAP message.
/// Usually wsu:Id will be used, but in certain cases xml:id is needed.
Property BodyXmlId As %String(MAXLEN = "") [ Transient ];

/// OneWay is true if no body is to be sent.
Property OneWay As %Boolean [ Internal, Transient ];

/// Return the value of the BodyId property.
/// Populate the BodyId property if it is not yet set.
Method GetBodyId() As %String
{
}

/// The SECURITYIN parameter controls the treatment of a WS-Security header
/// in the input SOAP message.
/// The possible values of SECURITYIN are ALLOW, NOHEADER, IGNORE, IGNOREALL and REQUIRE.<br>
/// - The default value of IGNORE will ignore any WS-Security headers in the input
/// except for the UsernameToken which can always be used to login the user.<br>
/// - The value of ALLOW will cause the WS-Security header to be verified on input.<br>
/// - The value of REQUIRE will require the presence of the WS-Security header and
/// verify the header on input.<br>
/// - The value of IGNOREALL will ignore any WS-Security headers in the input
/// including the UsernameToken.<br><br>
/// - The value of NOHEADER will REALLY ignore any WS-Security headers in the input
/// including the UsernameToken.<br><br>
///
/// Note that if validation of the Security header is enabled (ALLOW or REQUIRE),
/// then a CA file, named iris.cer, containing the trusted root X509 certificates
/// should be put in the InterSystems IRIS manager directory if signature verification or decryption
/// is to be performed.  An optional Certificate Revocation List (iris.crl) may
/// also be put in the InterSystems IRIS manager directory.
Parameter SECURITYIN As STRING [ Constraint = "ALLOW,NOHEADER,IGNORE,IGNOREALL,REQUIRE", Flags = ENUM ] = "IGNORE";

/// The WS-Security header associated with the received SOAP message.
/// SecurityIn will = "" unless a Security heaader is present in the message.
Property SecurityIn As %SOAP.Security.Header [ Transient ];

/// The WS-Security header to be output with this SOAP message.
/// Note that SecurityOut is not automatically reset to "" between calls to the
/// web service or client.  Therefore, the same security headers will also
/// be used for any following calls.<br><br>
///
/// Any combination of Timestamp, UsernameToken and Signature elements may be included
/// in the Security header.<br>
/// To add a Timestamp element:<br>
///     <i>do ..SecurityOut.AddSecurityElement(##class(%SOAP.Security.Timestamp).Create(interval))</i><br>
///     The interval argument is the time in seconds between Created and Expires times.
///     If interval is not specified, then the default is 300 seconds.<br><br>
///
/// To add a UsernameToken element:<br>
///     <i>do ..SecurityOut.AddSecurityElement(##class(%SOAP.Security.UsernameToken).Create(username,password))</i><br>
///     The UsernameToken added using the above call will be used for all subsequent calls.
///     The WSSecurityLogin method should be used to add the UsernameToken just for the next call.<br><br>
///
/// To add a Signature element:<br>
///     <i>set x509=##class(%SYS.X509Credentials).GetByAlias(x509Alias)</i><br>
///     <i>set cert=##class(%SOAP.Security.BinarySecurityToken).CreateX509Token(x509)</i><br>
///     <i>do ..SecurityOut.AddSecurityElement(cert)</i><br>
///     <i>do ..SecurityOut.AddSecurityElement(##class(%XML.Security.Signature).CreateX509(cert))</i><br>
///     The configName argument is the name of a SSL/TLS Configuration, specified using the System Management Portal,
///     that contains the certificate file and private key file/password used for signing.
///     The private key password may be included with the configuration name as
///     "name|password" instead of in the configuration.
///     For initial release the configuration name is that of an SSL/TLS Configuration.
///     BEWARE that this is subject to change in future releases.
Property SecurityOut As %SOAP.Security.Header [ Transient ];

Method SecurityOutGet() As %SOAP.Security.Header [ Internal ]
{
}

Method SecurityOutSet(s As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Return SecurityOut if defined, else "".
Method GetSecurityOut() As %SOAP.Security.Header [ Internal ]
{
}

/// The SecurityContextToken that is to be used for this WS-SecureConversation context.<br><br>
///
/// For a web client this is the SecurityContextToken that was obtained by the call to the StartSecureConversation
/// call that started the session.  This call will save the SecureConversation token from the
/// RequestSecurityTokenResponse in this property.<br><br>
///
/// For a web service this is the SecurityContextToken that was used to secure the request message.
/// <br><br>
/// Future request or response messages may use this token if needed for the WS-Policy or
/// by explicitly adding to SecurityOut by calling AddSecurityElement.
Property SecurityContextToken As %SOAP.WSSC.SecurityContextToken [ Transient ];

/// The WS-ReliableMessaging sequence for this client or service.<br><br>
///
/// For a web client this is the sequence that was created by the call to the %StartRMSession
/// method that started the sequence.  This call will save the $SYS.RMSession object from the
/// CreateSequenceResponse in this property.<br><br>
///
/// For a web service this is the $SYS.RMSession that was used for the request message.
Property RMSession As %SYS.RMSession [ Transient ];

/// The Attachments property of %SOAP.WebService will contain any attachments as
/// %Net.MIMEPart instances when a multipart/related SOAP request is received.
/// The SOAP message itself will be executed as for any SOAP message.
///
/// If any %Net.MIMEPart instances are in the Attachments property list collection in
/// %SOAP.WebClient, then the SOAP request will be sent as a multpart/related MIME message
/// per the SOAP with Attachments specification.
Property Attachments As list Of %Net.MIMEPart [ Transient ];

/// The Content-Id of the SOAP part of the SOAP with Attachments package for SOAP requests.
/// ContentId is used only in conjunction with the Attachments property.
/// Set to the received Content-Id by the web service.
/// Set before calling a web client method to set the Content-Id.
Property ContentId As %String [ Transient ];

/// The Content-Location of the SOAP part of the SOAP with Attachments package for SOAP requests.
/// ContentLocation is used only in conjunction with the Attachments property.
/// Set to the received Content-Location by the web service.
/// Set before calling a web client method to set the Content-Location.
Property ContentLocation As %String [ Transient ];

/// If any %Net.MIMEPart instances are in the ResponseAttachments property list collection in
/// %SOAP.WebService, then the SOAP response will be sent as a multpart/related MIME message
/// per the SOAP with Attachments specification.
///
/// The ResponseAttachments property of %SOAP.WebClient will contain any attachments as
/// %Net.MIMEPart instances when a multipart/related SOAP response is received.
/// The SOAP message itself will be executed as for any SOAP message.
Property ResponseAttachments As list Of %Net.MIMEPart [ Transient ];

/// The Content-Id of the SOAP part of the SOAP with Attachments package for SOAP responses.
/// ResponseContentId is used only in conjunction with the ResponseAttachments property.
/// Set to the received Content-Id by the web client.
/// Set during the web service method to set the Content-Id.
Property ResponseContentId As %String [ Transient ];

/// The Content-Location of the SOAP part of the SOAP with Attachments package for SOAP responses.
/// ResponseContentLocation is used only in conjunction with the ResponseAttachments property.
/// Set to the received Content-Location by the web client.
/// Set during the web service method to set the Content-Location.
Property ResponseContentLocation As %String [ Transient ];

/// MTOMREQUIRED is the default value for the <property>MTOMRequired</property> which controls use
/// of MTOM optimization.
Parameter MTOMREQUIRED As BOOLEAN = 0;

/// MTOMRequired controls use of MTOM optimization.
/// If MTOMRequired is true, then SOAP messages will be sent as an MTOM package.<br>
/// For a web client, MTOMRequired=1 means that the SOAP request will be a MTOM package.
/// A web client will always be able to process a response as an MTOM package independent of the value of MTOMRequired.<br>
/// For a web service, MTOMRequired=1 means that the SOAP response will always be an
/// MTOM package even if the request was not MTOM.  MTOMRequired may be set in the
/// web method being called or in the OnPreWebMethod callback.  A web service will always respond with
/// an MTOM package if the request was an MTOM package independent of the value of MTOMRequired.<br>
/// The default for the MTOMRequired property is the value of the
/// <parameter>MTOMREQUIRED</parameter> parameter.
Property MTOMRequired As %Boolean [ InitialExpression = {..#MTOMREQUIRED}, Transient ];

/// IsMTOM is set to true if an MTOM package was received.
Property IsMTOM As %Boolean;

/// This property contains the session cookie to be included in the InterSystems IRIS proprietary
/// SOAP session header to maintain the SOAP session.
/// SessionCookie will be set from the SOAP session header received in the SOAP request.
Property SessionCookie As %String [ Transient ];

/// Clear client HTTP cookies when setting SessionCookie from user code
Method SessionCookieSet(value As %String) As %Status [ Internal ]
{
}

/// Set SessionCookie directly for internal use
Method SessionCookieSetInternal(value As %String) [ Internal ]
{
}

/// The username that is associated with this SOAP request.<br>
/// Note that InterSystems IRIS security login is based on the UsernameToken element of the Security header.<br>
/// For a web client, if Username is set then a UsernameToken will be included
/// in the Security header based on the Username and Password properties.<br>
/// For a web service, Username is set based on the username contained in the
/// UsernameToken in the Security header of the message.
/// For a request message Username is based on the WS-Security SOAP header in the request.
Property Username As %Library.Username [ Transient ];

/// The password that is associated with this SOAP request.<br>
/// Note that InterSystems IRIS security login is based on the UsernameToken element of the Security header.<br>
/// For a web client, if Username is set then a UsernameToken will be included
/// in the Security header based on the Username and Password properties.<br>
/// For a web service, Password is set based on the password contained in the
/// UsernameToken in the Security header of the message.
Property Password As %String [ Transient ];

/// If the GZIPOUTPUT parameter is set to true (1), then output (request for client,
/// response for service) will be compressed using GZIP.
/// For a web client, this may be overridden by setting the GzipOutput
/// property of the web client class.
Parameter GZIPOUTPUT As BOOLEAN;

/// Specify the name of the method to call to write the SOAP body by putting the method
/// name into the WriteSOAPBodyMethod property of the web service or web client class.  For example<br>
/// <pre>
///   Method test(..... [WebMethod] ; for a client
///   {
///      Set ..WriteSOAPBodyMethod="override"
///      Do ..WebMethod("test").Invoke(.....
///      Set ..WriteSOAPBodyMethod=""
///   }
/// </pre>
///
///  or
///
/// <pre>
///   Method test(..... [WebMethod] ; for a service
///   {
///      Set ..WriteSOAPBodyMethod="override"
///      ; service method follows
///      .....
///   }
/// </pre>
/// The signature of the override method is<br>
/// <pre>
///   Method override(proxy As %SOAP.ProxyDescriptor, tag As %String)
/// </pre>
/// The override method uses the Write command to output the body.
Property WriteSOAPBodyMethod As %String [ Transient ];

/// Control use of BOM for request message.
/// Comma separated list of message start parts:
/// BOM to include BOM, DCL to include XML declaration.
Property RequestMessageStart As %String [ InitialExpression = "DCL", Transient ];

/// Policy alternative for client output of request and service input of request.
/// First alternative checked for response.
Property policyAlternative As %String [ Internal, MultiDimensional, Transient ];

/// After the %SOAP.WebService Initialize method is called, this property contains the %XML.Document
/// instance for the parsed SOAP request.
/// After the %SOAP.Webclient parses the response, this property contains the %XML.Document
/// instance for the parsed SOAP response.
Property ImportHandler As %XML.Document [ Transient ];

/// Log a message
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod LogText(text As %String, outputRaw As %Boolean = 0) [ Internal, ServerOnly = 1 ]
{
}

/// Log the contents of a global
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod LogGlobal(var As %String) [ Internal, ServerOnly = 1 ]
{
}

/// Log the input message
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod LogInput(isService As %Boolean, action As %String, inputStream, status As %Status) [ Internal, ServerOnly = 1 ]
{
}

/// Log the output message
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod LogOutput(isService As %Boolean, action As %String, outputStream, description As %String) [ Internal, ServerOnly = 1 ]
{
}

/// Log only the beginning of the SOAP message up to the end of the SOAP headers.
/// Return true if Headers found and output/
ClassMethod LogHeaders(stream) As %Boolean [ Internal, Private, ServerOnly = 1 ]
{
}

/// Given an expected list of lines, read through the current SOAP log trying to match
/// a region of expected sequential lines in the SOAP Log.
/// <br/>
/// <ul>
/// <li>logName - Path to specific SOAP log for analysis.
/// If empty, defaults to the LogFile setting (^ISCSOAP("LogFile")) for current namespace<li/>
/// <li>lines - One or more lines composing a sequence of text to match in SOAP log file
/// </li>
/// <li>namespace - Namespace for corresponding SOAP Log file to read</li>
/// <li>lineOffset - Updated lineOffset when method is called. Start with "0" for beginning of file. Helps resume read in next SOAPLogContains match from last read position. ie: does not parse the file from beginning. Helpful to defrentiate repeating seqences of logging in a log file.</li>
/// <li>trim - Ignore any leading and trailing whitespace for comparison</li>
/// <li>maskdate - Convert date DD/MM/CCYY HH:mm:SS.nnnnnnn to ##/##/## ##:##:##.#######</li>
/// <li>maxReadLines - Maximum expected number of subsequent lines to parse before assumping sequence not found.</li>
/// <li>stopAtEmptyLine - Keep reading lines of input until an empty line is encountered.</li>
/// <li>caseInsensitive - Case insensitive search for sequence comparison</li>
/// <li>maskNumeric - Convert a numeric sequence into tokens "#". For example "123" becomes "###"</li>
/// <li>shortenMask - Used in  conjuntion with maskNumeric. Shortens one or more sequental "#" characters to a single "#". For example "###" becomes "#"</li>
/// <li>
/// </ul>
/// <example>
/// Kill lines
/// set expect= [ Some condition evaluating to 1 ( Sequential Lines expected ) or 0 ( Sequential Lines NOT expected )  ]
/// set lineOffset=0
/// set lines($I(lines))="##/##/#### ##:##:##.####### *********************"
/// Set lines($I(lines))="Binary Input to Web client with SOAP action = http://tempuri.org/WSDL.SoapLog.WebService.Concatenate"
/// Do $$$AssertEquals(expect,##class(%SOAP.WebBase).SOAPLogContains(,.lines,,.lineOffset,,1),"Log Input to Web client")
/// </example>
ClassMethod SOAPLogContains(logName As %String = "", ByRef lines, namespace = {$NAMESPACE}, ByRef lineOffset = 0, trim As %Boolean = 0, maskdate As %Boolean = 0, maxReadLines = 0, stopAtEmptyLine = 0, caseInsensitive = 0, maskNumeric = 0, shortenMask = 0) As %Boolean [ ServerOnly = 1 ]
{
}

/// For comparing SOAP Log content
/// Dates in SOAP Log output cause differences in expected output.
/// This method replaces one or more dates in a given line of text with a mask.
/// For example sequence "DD/MM/CCYY HH:mm:SS.nnnnnnn" is replaced
/// with the literal "##/##/#### ##:##:##.#######"
/// or Sequence "DD/MM/CCYY HH:mm:SS" is replaced with "##/##/#### ##:##:##"
ClassMethod MaskSOAPLogDate(line) As %String [ Internal, ServerOnly = 1 ]
{
}

/// Get namespace parameter in order to avoid otherwise unnecessary generator methods.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod Namespace() [ CodeMode = expression, Final, Internal, ServerOnly = 1 ]
{
}

/// Write the entire HTTP content for a SOAP request or response.
/// If a web client, then always write the HTTP content to a stream.
/// If a web service, then write the HTTP content to the current TCP device.
Method WriteHTTPContent(body As %SOAP.Descriptor, tag As %String, isService As %Boolean, wsRequired As %Boolean, bodyStream As %CharacterStream, response As %CSP.Response, ByRef stream As %FileBinaryStream) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Output the start of the first MIME block for attachments
Method WriteStartAttachments(boundary As %String, soaptype As %String, isService As %Boolean, contentid As %String, contentLocation As %String) [ Internal, ServerOnly = 1 ]
{
}

/// Execute the Web Method represented by the descriptor class on
/// the server.  If an error is detected, a ztrap "SOAP" will be issued with
/// %objlasterror containing the error %Status.  If is the responsibilty of the
/// caller of the proxy method to set an error trap and test for $ZE["&lt;ZSOAP&gt;".
/// Note that if a SOAP fault is received, then the error is $$$SOAPFaultReceived.
/// Write the SOAP message that corresponds to the specified class.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method WriteSOAPMessage(body As %SOAP.Descriptor, tag As %String, isService As %Boolean, mimeAttachments As %Net.MIMEPart, bodyStream As %CharacterStream) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Add a namespace definition to the SOAP Envelope element of the message to
/// be output, i.e. reply message for service, request message for client.
/// To add a namespace to a web service reply message, %AddEnvelopeNamespace
/// must be called from the web method.
/// To add a namespace to a web client request message, %AddEnvelopeNamespace
/// must be called before the web client method is invoked.<br><br>
///
/// <var>prefix</var> is the optional preferred prefix for this namespace.
/// If no prefix is specified, a unique prefix will be computed.<br><br>
///
/// A <var>schemaLocation</var> attribute value for the first definition
/// of this namespace may also specified.<br><br>
///
/// If <var>allowMultiplePrefixes</var> is true then multiple prefixes may be defined for the same namespace.
/// The default is false which will override the previously defined prefix for the same namespace.
Method %AddEnvelopeNamespace(namespace As %String, prefix As %String, schemaLocation As %String, allowMultiplePrefixes As %Boolean) As %Status
{
}

/// Output the beginning of the SOAP envelope.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method BeginSOAPEnvelope(bindingStyle As %String, bodyUse As %String, namespace As %String, typeNamespace As %String, forcePrefix As %Boolean, ByRef namespaces As %XML.Namespaces) [ Internal, ServerOnly = 1 ]
{
}

/// Output the close of the SOAP envelope
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod EndSOAPEnvelope() [ Internal, ServerOnly = 1 ]
{
}

/// Output the SOAP headers
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method WriteSOAPHeaders(bodyUse As %String, namespaces As %XML.Namespaces, mimeAttachments As %Net.MIMEPart) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Determine if any security processing is required and initialize.
Method InitializeSecurity(Output sc As %Status) As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Reset any security headers
Method ResetSecurity() [ Internal, ServerOnly = 1 ]
{
}

/// Error check the SOAP envelope and find the message element.
/// If all is OK, status of $$$OK is returned and message is set to the index of message node.
Method CheckSOAPEnvelope(ByRef handler As %XML.Document, oneWay As %Boolean, Output soapenv As %Integer, Output message As %String, Output messageChildlist As %String, ByRef versionMismatch As %Boolean) As %Status [ Final, Internal, ServerOnly = 1 ]
{
}

/// Process the SOAP envelope.
Method ProcessSOAPEnvelope(ByRef handler As %XML.Document, soapenv As %Integer, ByRef message As %String, ByRef messageChildlist As %String, attachments As %Net.MIMEPart) As %Status [ Final, Internal, ServerOnly = 1 ]
{
}

/// Process the SOAP header elements.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessHeaders(format, ByRef handler As %XML.Document, node As %String, childlist As %String, soapenv As %Integer, mimeAttachments As %Net.MIMEPart) As %Status [ Final, Internal, Private, ServerOnly = 1 ]
{
}

/// See if node in XML document soap encoding attribute
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GetEncodedAttribute(tree As %Integer, node As %String, childlist As %String, soapenv As %Integer, ByRef attrs, ByRef status As %Status) As %Boolean [ Final, Internal, Private, ServerOnly = 1 ]
{
}

/// Create required descriptor classes.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod OnCompile() [ CodeMode = objectgenerator, Internal, ServerOnly = 1 ]
{
}

/// Create an instance of the %SOAP.Descriptor subclass.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod WebMethod(Operation As %String, RequestTag As %String) As %SOAP.Descriptor [ Internal, ServerOnly = 1 ]
{
}

/// Normalize name to comply with ObjectScript naming constraints
ClassMethod NormalizeName(pName, pMaxLen, isMethod As %Boolean) As %String [ ServerOnly = 1 ]
{
}

Method GetBinaryWriter(msgClass As %SOAP.Descriptor, isRequest As %Boolean, asUTF8 As %Boolean, sessionFlag As %Boolean) As %SOAP.Binary [ Internal, ServerOnly = 1 ]
{
}

Method ReadBinaryMessage(msgClass As %SOAP.Descriptor, ByRef asUTF8 As %Boolean, ByRef sessionFlag As %Boolean, messageStream) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
