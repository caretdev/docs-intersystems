/// Super class for all classes that are to be projected as a Web Service.
/// <br>
///
/// The only supported use of this class is as the super class for a WebService.
/// Parameters, properties and methods may be used by the application.
Class %SOAP.WebService Extends (%CSP.Page, %SOAP.WebBase) [ Abstract, Inheritance = right, System = 3 ]
{

/// LOCATION - the URL not including the web service class name which is the location of the web service.
/// If LOCATION is specified, the location for the WSDL is formed by appended <classnme>.cls to the LOCATION value.
/// LOCATION defaults to the location of this class as used to display the WSDL.
/// It will need to be overridden only in very unusual circumstances.
Parameter LOCATION As STRING;

/// The SOAPVERSION parameter specifies the version of SOAP which is supported.
/// The SOAPVERSION parameter effects only the WSDL that is created for this service.
/// The version for which requests are accepted is specified by REQUESTVERSON.
/// Possible values for the version are 1.1 and 1.2. The value "" specifies
/// that both SOAP 1.1 and SOAP 1.2 are supported.  The default is "1.1"
Parameter SOAPVERSION As STRING [ Constraint = ",1.1,1.2", Flags = ENUM ] = 1.1;

/// The REQUESTVERSION parameter specifies the version(s) of SOAP which are
/// supported for a SOAP request.
/// Possible values for the version are 1.1 and 1.2. The value "" specifies
/// that both SOAP 1.1 and SOAP 1.2 are supported.  The default is ""
Parameter REQUESTVERSION As STRING [ Constraint = ",1.1,1.2", Flags = ENUM ];

/// The SOAP 1.1 binding name in the WSDL.  Default is the service name with "Soap" appended.
Parameter SOAPBINDING As STRING;

/// The SOAP 1.2 binding name in the WSDL.  Default is SOAP 1.1 binding with "12" appended.
Parameter SOAP12BINDING As STRING;

/// The SoapVersion property is either "1.1" or "1.2" and indicates the SOAP
/// version for the current invocation.<br><br>
///
/// For a SOAP web service, a request using either SOAP version 1.1 or 1.2 is supported
/// if SOAPVERSION="".  Otherwise, the version specified in SOAPVERSION is supported.
/// The default is support for SOAP 1.1 only.
/// A Misunderstood fault is returned if the request version is not supported.
/// SoapVersion is set to the actual version of request and will be the version of the response.
Property SoapVersion As %String;

/// Defines the content type of the http SOAP request.
/// Should not be overridden.
Parameter CONTENTTYPE As STRING [ Internal ] = "text/xml";

/// Response is always encoded in UTF-8.
/// Should not be overridden.
Parameter CHARSET As STRING [ Internal ] = "UTF-8";

/// If INCLUDEDOCUMENTATION is true, then include s:documentation in the WSDL schema
/// based on class and property comments.
Parameter INCLUDEDOCUMENTATION As BOOLEAN = 0;

/// The ALLOWREDUNDANTARRAYNAME parameter of a web service class allows the old form of array name in the
/// XML schemas in the web service's WSDL.  If true, then the schemas in the WSDL an array name that is used
/// for an ObjectScript list or a pair type name that is used for an ObjectScript array will be allowed to have a
/// type name = to the item name.  i.e. the old longer format is kept.
Parameter ALLOWREDUNDANTARRAYNAME As BOOLEAN;

/// When SOAPSESSION = 1, then the returned response will have a session header added to allow
/// the web client to continue the session.
/// Subsequent requests by the client could then contain the session header to maintain the session.
Parameter SOAPSESSION As BOOLEAN = 0;

/// When USECLASSNAMESPACES = 1, then the WSDL of the Web service reflects the namespaces
/// defined for the referenced classes by the NAMESPACE parameters of those classes.
/// The default, for compatibility with previous versions, is that
/// the NAMESPACE parameters of the referenced classes are ignored when creating the WSDL.
/// If USECLASSNAMESPACES has no value, then the default value from ^ISCSOAP("USECLASSNAMESPACES") is used.
Parameter USECLASSNAMESPACES As BOOLEAN;

/// If the SOAPMETHODINHERITANCE parameter is true (1), then WebMethods are inherited from
/// any super class.
/// The default for the SOAPMETHODINHERITANCE parameter is false (0) which means no WebMethods
/// are inherited from a super class.
Parameter SOAPMETHODINHERITANCE As BOOLEAN;

/// If SOAPINTERNALWSDL parameter is true (1), then the WSDL produced for the service
/// will include WebMethods which are marked as Internal.  Otherwise, only non-internal
/// WebMethods will be included in the WSDL.
/// The default for SOAPINTERNALWSDL is true (1).
Parameter SOAPINTERNALWSDL As BOOLEAN = 1;

/// If SOAPDISABLEWSDL parameter is true (1), then no WSDL will be returned when the service
/// is invoked with ?wsdl query parameter.
/// The FileWSDL method will still produce the WSDL, since all information is available anyway
/// if the web service class can be call directly from COS.
/// The default is false which will produce a WSDL for the wsdl query parameter.
Parameter SOAPDISABLEWSDL As BOOLEAN;

/// The WS-ReliableMessaging inactivity timeout in seconds.  Default is 10 minutes.
Parameter RMINACTIVITYTIMEOUT As INTEGER = 600;

/// The WS-ReliableMessaging InOrder parameter
Parameter RMINORDER As BOOLEAN;

/// The WS-ReliableMessaging Delivery Assurance parameter
Parameter RMDELIVERYASSURANCE As STRING;

/// Any web service may add instances of any %SOAP.Header subclass to this array.
/// The index is the element name of the header.  The corresponding headers are then added to the
/// any SOAP fault message.
Property FaultHeaders As array Of %SOAP.Header [ Transient ];

/// WS-Addressing properties to be used if a fault is returned.
/// SOAP headers will be constructed from these properties.
Property FaultAddressing As %SOAP.Addressing.Properties [ Transient ];

/// When the web method is called, this property contains the %SOAP.MsgDescriptor
/// class for the web method.
Property MsgClass As %SOAP.MsgDescriptor [ Transient ];

/// Can be set at the beginning of the web method that is being executed in which case this changes the amount of time the
/// CSP gateway will wait for a response from the server in seconds before it reports the 'Server is not
/// responding' error message. This is useful if you know that this web method is doing an expensive operation
/// that will take a couple of minutes and you want to set the server response timeout on
/// the CSP gateway to a minute and yet wait three minutes for this method to complete. It will just
/// change the server response timeout for this method invocation only. If not set the the CSP gateway uses its
/// default timeout value specified in the CSP gateway configuration.<br><br>
/// The Timeout property is only meaningful if the default CSP transport is being used.
/// If a user defined transport is used, setting the Timeout is ignored.
Property Timeout As %Integer;

/// Set method for Timeout property
Method TimeoutSet(val As %Integer) As %Status [ Internal ]
{
}

/// Save the TCP device
Property saveIO As %String [ Internal, Private, Transient ];

/// Return the SOAP fault in %SOAP.Fault as the result of this
/// web method call.
/// The ReturnFault method should only be called from the implementation of the WebMethod.
/// This method will not return to its caller.
/// It will act as a Quit from the Web Method with the %SOAP.Fault as
/// the return value.<p>
/// You can generate a SOAP fault from a web method as in the following example:
/// <example>
/// Set fault=##class(%SOAP.Fault).%New()
/// Set fault.faultcode=$$$FAULTServer
/// Set fault.faultstring="Processing Error"
/// Set fault.detail="<e:myError xmlns:e=""some-URI"">app didn't work</e:myError>"
/// Do ..ReturnFault(fault) ; will not return
/// </example>
ClassMethod ReturnFault(fault As %SOAP.Fault) [ ServerOnly = 1 ]
{
}

/// The OnInternalFault method may be overridden by the user to change the default SOAP
///  fault returned by InterSystems IRIS for internal errors.
/// OnInternalFault is passed the fault which may be modified to suit the applications needs.
/// After OnInternalFault returns this fault will be sent to the SOAP client.
/// The %Status that represents the error is also passed.
ClassMethod OnInternalFault(fault As %SOAP.Fault, status As %Status) [ Private, ServerOnly = 1 ]
{
}

/// Return a SOAP fault based on a %Status value.
/// This method is meant for internal use only not use by the web method.
ClassMethod ReturnInternalStatusFault(pStatus As %Status, soap12 As %Boolean = 0) [ Internal, ServerOnly = 1 ]
{
}

/// Create a SOAP fault based on a %Status value.
ClassMethod MakeStatusFault(pFaultCode As %String, pFaultString As %String, pStatus As %Status = "", pFaultActor As %String = "") As %SOAP.Fault [ ServerOnly = 1 ]
{
}

/// Create a SOAP security fault.
/// The namespace for this security fault is found in SecurityNamespace property.
/// Valid values for FaultCode are "FailedAuthentication", "FailedCheck",
///   "InvalidSecurity", "InvalidSecurityToken", "SecurityTokenUnavailable",
///   "UnsupportedAlgorithm" and "UnsupportedSecurityToken".
ClassMethod MakeSecurityFault(pFaultCode As %String, securityNamespace As %String) As %SOAP.Fault [ ServerOnly = 1 ]
{
}

/// Create a SOAP fault.  Usually returned by ReturnFault method.
ClassMethod MakeFault(pFaultCode As %String, pFaultString As %String, pDetail As %String = "", pFaultActor As %String = "") As %SOAP.Fault [ ServerOnly = 1 ]
{
}

/// Create a SOAP 1.2 fault.
ClassMethod MakeFault12(pFaultCode As %String, pFaultString As %String, pDetail As %String = "", pFaultActor As %String = "") As %SOAP.Fault [ ServerOnly = 1 ]
{
}

/// Create a SOAP 1.2 fault code field.
ClassMethod MakeFault12Code(code As %String) As %SOAP.Fault12.Code [ Internal, ServerOnly = 1 ]
{
}

/// Create a SOAP 1.2 fault text field.
ClassMethod MakeFault12Text(text As %String, language As %String) As %SOAP.Fault12.Code [ Internal, ServerOnly = 1 ]
{
}

/// Write a SOAP fault to the current device.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
ClassMethod Fault(fault As %SOAP.Fault, forceHeaders As %Boolean = 0, forceXML As %Boolean = 0, soap12 As %Boolean = 0, callPostWebMethod As %Boolean = 0) [ Internal, ServerOnly = 1 ]
{
}

/// Write the headers for the fault
Method WriteFaultHeaders(namespaces As %XML.Namespaces) [ Internal, ServerOnly = 1 ]
{
}

/// Write a WSDL to a file
ClassMethod FileWSDL(fileName As %String, includeInternalMethods As %Boolean = 1) As %Status [ ServerOnly = 1 ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
ClassMethod OnPage() As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Callback when a SOAP request message has been received.
/// The OnRequestMessage callback is called after security processing has taken place.
/// This callback will not be called in the case of a security error.<br><br>
///
/// The mode argument specifies the type of SOAP request "SOAP" or "binary".<br>
/// The action argument contains the value of SOAPAction header.<br>
/// The request argument contains the SOAP request message in a stream.<br><br>
/// The CSP %request object is available at the time of the call.
/// The %request.Content property will contain the raw request message.
/// For a MIME SOAP request, the individual MIME parts may be retrieved using the %request.NextMimeData method.<br>
/// Various properties of the web service class that are set during initiaization may be useful:
/// ImportHandler - DOM for parsed SOAP request message.<br>
/// SecurityIn - Security header<br>
/// SecurityNamespace - Namespace for Security header<br>
/// SoapFault - set if SOAP faut has been generated.<br><br>
///
/// If the SoapFault property is set by the OnRequestMessage callback, then a SOAP fault will be
/// written instead of calling the web method.  The ReturnFaut method should not be called from OnRequestMessage.
Method OnRequestMessage(mode As %String, action As %String, request As %Stream.Object) [ ServerOnly = 1 ]
{
}

/// The %OnCreateRMSession web service callback is invoked at the start of WS-ReliableMessaging session
/// before the %SOAP.RM.CreateSequenceResponse is returned.
/// The response argument has been completely created and not yet returned at this point.
/// The reason for this callback is to allow the web service to add any required Security header elements.
/// If WS-Policy is used, then WS-Policy support does this automatically.
Method %OnCreateRMSession(response As %SOAP.RM.CreateSequenceResponse) [ ServerOnly = 1 ]
{
}

/// Callback before a SOAP request.  This callback meant to be used by Interoperability
/// and should thus never be specified for a subclass of Enslib.SOAP.Service<br><br>
///
/// The mode argument specifies the type of SOAP request "SOAP", "binary" or "test".<br>
/// The pAction argument contains the value of SOAPAction header.<br>
/// The request argument contains the SOAP request.  For a normal SOAP request, the request
/// argument will be a stream containing the request.  For a MIME SOAP request,
/// the request argument will be a multidimensional array of %CSP.Streams that is subscripted
/// by the position in the original multipart message.  request(1) is the SOAP message.<br><br>
///
/// If the SoapFault property has been set, then a SOAP fault will be
/// written instead of calling the web method.  This callback may also set the
/// SoapFault property in order to return a SOAP fault.
Method OnPreSOAP(mode As %String, action As %String, request) [ Internal, ServerOnly = 1 ]
{
}

/// Callback after a SOAP request.  This callback meant to be used by Interoperability
/// and should thus never be specified for a subclass of Enslib.SOAP.Service.
Method OnPostSOAP() [ Internal, ServerOnly = 1 ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
ClassMethod OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Use OnHTTPHeader to delay writing of HTTP headers until output is to begin
/// for the SOAP case to allow Content-Type to be changed for SOAP with Attachments response..
ClassMethod OnHTTPHeader(ByRef OutputBody As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
Method ProcessHTTP() [ Internal, ServerOnly = 1 ]
{
}

/// Process a SOAP request from a transport class.<br><br>
/// Arguments:
/// <ul>
///    <li>action -- specifies the WebMethod to invoke as pkg.classname.methodname</li>
///    <li>request -- contains the SOAP request.  For a normal SOAP request, the request
///        argument will be a stream containing the request.  For a SOAP with Attachments format request,
///        the request argument will be a multidimensional array of %CSP.Streams that is subscripted
///        by the position in the original multipart message.  request(1) is the SOAP message.</li>
///    <li>responseStream -- the stream to which the response SOAP message is to be written.
///         If responseStream is not specified a new %FileBinaryStream is created for the response.</li>
/// </ul>
/// The <method>Reset</method> method must be called before calling the OnSOAPRequest method again from this %SOAP.WebService instance.
Method OnSOAPRequest(action As %String, ByRef request, ByRef responseStream As %BinaryStream) [ ServerOnly = 1 ]
{
}

/// Process a request to start a WS-SecureConversation context that is represented by
/// the RequestSecurityToken body in the RST argument.
/// If successful a RequestSecurityTokenResponseCollection is returned which will act as the %SOAP.MsgDescriptor for this request.<br>
/// If a fault is to be returned, the %SOAP.fault instance should be assigned to the SoapFault property and "" returned.<br><br>
///
/// The default behavior of this method is return a RequestSecurityTokenResponseCollection element based
/// on the WS-Policy associated with this web service.  If no policy alternative is found which can
/// return a RequestSecurityTokenResponseCollection, then SoapFault is set to a wst:BadRequest fault.
Method OnStartSecureConversation(RST As %SOAP.WST.RequestSecurityToken) As %SOAP.WST.RequestSecurityTokenResponseCollection [ ServerOnly = 1 ]
{
}

/// Process a request to cancel a WS-SecureConversation context that is represented by
/// the RequestSecurityToken body in the RST argument.
/// If successful a RequestSecurityTokenResponseCollection is returned which will act as the %SOAP.MsgDescriptor for this request.<br>
/// If a fault is to be returned, the %SOAP.fault instance should be assigned to the SoapFault property and "" returned.<br><br>
Method OnCancelSecureConversation(RST As %SOAP.WST.RequestSecurityToken) As %SOAP.WST.RequestSecurityTokenResponseCollection [ ServerOnly = 1 ]
{
}

/// Initialize a SOAP request.
/// The Initialize method must be called before the Process method to parse the
/// SOAP message and process the security header.<br>
/// The request argument contains the SOAP request.  For a normal SOAP request, the request
/// argument will be a stream containing the request.  For a SOAP with Attachments format request,
/// the request argument will be a multidimensional array of %CSP.Streams that is subscripted
/// by the position in the original multipart message.  request(1) is the SOAP message.<br>
///
/// If the Initialize method wishes to return an error, it will set the SoapFault property
/// to the appropriate fault to call.  The caller should immediately call the Process method
/// to actually return the SOAP fault.<br>
///
/// The properties Username and Password may be set based on the security header.
/// The property SessionCookie may be set based on the session header.<br>
///
/// This method is meant to be used by SOAP transport classes.
ClassMethod Initialize(pAction As %String, requestStream, ByRef importHandler As %XML.Document, ByRef username As %String, ByRef password As %String, ByRef securityNamespace As %String, ByRef fault As %SOAP.Fault, securityIn As %String = "ignore", soapClassname As %String) [ Final, ServerOnly = 1 ]
{
}

/// Process a SOAP request.  Initialize must be called first.<br>
/// The pAction argument contains the value of SOAPAction header.<br>
/// The request argument contains the SOAP request.  For a normal SOAP request, the request
/// argument will be a stream containing the request.  For a SOAP with Attachments format request,
/// the request argument will be a multidimensional array of %CSP.Streams that is subscripted
/// by the position in the original multipart message.  request(1) is the SOAP message.<br>
/// The needHeaders argument specifies if HTTP headers need to be output before the SOAP message.
/// Normally the transport class will be responsible for any transport such as HTTP headers.<br>
///
/// If the SoapFault property is set up before calling Process, then a SOAP fault is
/// written instead of calling the web method.<br>
/// The SessionCookie property may be set before calling Process to force value of SessionCookie.
///
/// This method is meant to be used by SOAP transport classes.
Method Process(pAction As %String, ByRef request, needHeaders As %Boolean = 1) [ ServerOnly = 1 ]
{
}

/// Process a SOAP request using the InterSystems IRIS proprietary binary SOAP protocol.
/// The pAction argument contains the value of ISCSOAP header.<br>
/// The request argument contains the SOAP request as a stream containing serialized message class.
///
/// If the SoapFault property is set up call of Process, then a SOAP fault is
///   written instead of calling the web method.
/// The SessionCookie property may be set before calling Process to force value of SessionCookie.
///
/// This method is meant to be used by SOAP transport classes.
Method ProcessBinary(action As %String, request) [ ServerOnly = 1 ]
{
}

/// Get class name for a message descriptor class for this web method based on the SOAPAction
Method GetMsgClass(action As %String, messageChildlist As %Integer, Output methodName As %String, bodyStream As %GlobalCharacterStream = "") As %String [ Internal, ServerOnly = 1 ]
{
}

/// Extract the top level request element name from the SOAP body
Method %GetElementFromBody(messageChildlist As %Integer, bodyStream As %GlobalCharacterStream = "") As %String [ Internal, ServerOnly = 1 ]
{
}

/// Save the TCP device at time of web service invocation
Method %SaveTCPDevice() [ Internal, ServerOnly = 1 ]
{
}

/// Restore the TCP device from time of invocation
Method %RestoreTCPDevice() [ Internal, ServerOnly = 1 ]
{
}

/// Invoke web method based on the message class
Method InvokeMsgClass(msgClass As %SOAP.MsgDescriptor, service As %SOAP.WebService) As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Internal handling of exception
Method HandleException(ex As %Exception.AbstractException, Output faultAlreadyReturned) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Add WS-Security 1.1 SignatureConfirmation elements to response message.
/// This method will add a SignatureConfirmation element to the SecurityOut for each Signature in the SecurityIn.
/// If no Signature element exists in SecurityIn, then a SignatureConfirmation element will be added with
/// no Value attribute as required by WS-Security 1.1.<br>
/// coveringSignature should be the main signature of the Security header which will be used to sign the
/// SignatureConfirmation elements.<br>
Method WSAddSignatureConfirmation(coveringSignature As %XML.Security.Signature = "", encryptedKey As %XML.Security.EncryptedKey = "", symmetricReference As %Integer = "", derivedKey As %SOAP.WSSC.DerivedKeyToken = "") [ ServerOnly = 1 ]
{
}

/// Calling ReturnOneWay() will dynamically change the return of
/// the web service to act as if the return type of the WebMethod was %SOAP.OneWay.
/// ReturnOneWay may be called from a WebMethod or ProcessBody or ProcessBodyNode.
/// The WebMethod, ProcessBody or ProcessBodyNode will still need to quit normally.
Method ReturnOneWay() [ ServerOnly = 1 ]
{
}

/// The OnPreWebMethod method will be called before any web method in a web service.
/// OnPreWebMethod cannot return a value and thus cannot change the execution of the
/// web service except by returning a SOAP fault in the same way that a web method
/// would return a SOAP fault. OnPreWebMethod can look at %request, %session and
/// the web service properties to control its behavior.
/// MsgClass is a web service property which is the message descriptor class which
/// contains the web method arguments.
Method OnPreWebMethod() [ Abstract, ServerOnly = 1 ]
{
}

/// The OnPostWebMethod method will be called after any web method in a web service.
/// OnPostWebMethod cannot return a value and thus cannot change the execution or
/// return of the web method. OnPostWebMethod is primarily to do any cleanup required
/// of structures created by OnPreWebMethod.
Method OnPostWebMethod() [ Abstract, ServerOnly = 1 ]
{
}

/// The ProcessBody method of %SOAP.WebService will be passed the request message body
/// as a character stream and will return the response message body in another
/// character stream.<br>
///
/// The return value is 1 (true) if the body was processed and a response
/// stream produced. If 0 is returned the %SOAP.MsgDescriptor class will be
/// invoked as usual. If an error occurs during the processing of the request,
/// then a fault should be returned in the usual way using the ReturnFault method.<br>
///
/// The arguments to this method are:<br>
///  action is the SOAPAction for the SOAP request.<br>
///  requestBody is the body of the SOAP request.<br>
///  responseBody is a character stream to which the body of the SOAP response will be written.<br>
/// <br>
Method ProcessBody(action As %String, requestBody As %CharacterStream, ByRef responseBody As %CharacterStream) As %Boolean [ Abstract, CodeMode = expression, ServerOnly = 1 ]
{
}

/// The ProcessBodyNode method of %SOAP.WebService will be passed an %XML.Node
/// instance which is positioned at the child of the Body element of the SOAP
/// which has the contents of the request body.
/// ProcessBodyNode will return the response message body in another character stream.<br>
///
/// The return value is 1 (true) if the body was processed and a response
/// stream produced. If 0 is returned the %SOAP.MsgDescriptor class will be
/// invoked as usual. If an error occurs during the processing of the request,
/// then a fault should be returned in the usual way using the ReturnFault method.<br>
///
/// The arguments to this method are:<br>
///  action is the SOAPAction for the SOAP request.<br>
///  body is an %XML.Node instance for the contents of the SOAP request body.<br>
///  responseBody is a character stream to which the body of the SOAP response will be written.<br>
/// <br>
Method ProcessBodyNode(action As %String, body As %XML.Node, ByRef responseBody As %CharacterStream) As %Boolean [ Abstract, CodeMode = expression, ServerOnly = 1 ]
{
}

/// Reset this %SOAP.WebService instance to state as newly created
///
/// This method is meant to be used by SOAP transport classes.
Method Reset() [ ServerOnly = 1 ]
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
ClassMethod LogOutputHTTPHeaders() [ Internal, ServerOnly = 1 ]
{
}

}
