/// %SOAP.WebRequest is class to use XML document for SOAP request.
Class %SOAP.WebRequest Extends %SOAP.WebClient [ System = 3 ]
{

/// The SendSOAPBody() method of <class>%SOAP.WebClient</class> will send an XML document as the body of a SOAP request
/// and return the response body as an XML document.
/// The arguments to this method are:<br>
/// <ul>
/// <li><var>Action</var> is the SOAPAction for the SOAP request.</li>
/// <li><var>OneWay</var>, which specifies whether a response is expected. If OneWay is 1 (true) then no response is expected.</li>
/// <li><var>Request</var> is the body of the SOAP request in the character set of the current locale.</li>
/// <li><var>Response</var>, which is returned by reference, will be set to the body of the SOAP response message either as a stream or %XML.Node.
///    If <var>Response</var> is a character stream, the body of the SOAP response will be written
///    in the character set of the current locale.<br>
///    If <var>Response</var> is "", then a new character stream will be created and assigned to <var>Response</var>.
///    If <var>Response</var> is an <class>%XML.Node</class>, then the %XML.Node will be set to point to the body DOM.</li>
/// <li><var>methodName</var> is an optional name of the method being called which is used to select the WS-Policy.</li>
/// </ul>
/// <p>The Location property of %WebClient must be set to the endpoint of the web service before SendSOAPBody is called.</p>
/// <p>Properties of %SOAP.WebClient such as HeadersIn, HeadersOut, Timeout, etc. may be used with the SendSOAPBody call.</p>
Method SendSOAPBody(Action As %String, OneWay As %Boolean = 0, Request As %CharacterStream, ByRef Response, methodName As %String) As %Status
{
}

/// Callback from %SOAP.WebClient to return the response body.
Method ReturnResponse(document As %XML.Document, messageId As %String) As %Status [ Internal ]
{
}

/// Dummy service name when used to just send XML body
Parameter SERVICENAME = "XMLBody";

/// Request stream
Property Request As %RegisteredObject [ Internal ];

/// Response stream
Property Response As %RegisteredObject [ Internal ];

/// Dummy %RequestName
Property %RequestName As %String [ Internal ];

/// Return document/literal parameters for sending an XML body
ClassMethod GetSoapParameters(ByRef bindingStyle As %String, ByRef bodyUse As %String, ByRef namespace As %String, ByRef xmlimportnamespace As %String, ByRef typeNamespace As %String, ByRef oneWay As %Boolean, ByRef xmlelement As %Boolean, ByRef bare As %Boolean) [ Internal, ServerOnly = 1 ]
{
}

/// WriteBody method is used internally as the callback to create the SOAP body
Method WriteBody(proxy, tag) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
