/// Super class for generated classes that represent WebMethods.
/// Subclass %SOAP.MsgDescriptor is the super class for all Service WebMethods.
/// Subclass %SOAP.ProxyDescriptor is the super class for all Client proxy WebMethods.
/// <br>
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %SOAP.Descriptor Extends (%RegisteredObject, %XML.Adaptor) [ Abstract, Inheritance = right, System = 3 ]
{

/// NAMESPACE - specifies the XML namespace to be used for the XMLExport of the SOAP body's
///  request and response messages.  This parameter directly controls namespace usage by XMLExport.
Parameter NAMESPACE [ Internal ];

/// SOAPBODYUSE - specifies SoapBodyUse keyword for this web method.
Parameter SOAPBODYUSE [ Internal ];

/// SOAPBINDINGSTYLE - specifies SoapBindingStyle keyword for this web method.
Parameter SOAPBINDINGSTYLE [ Internal ];

/// TYPENAMESPACE specifies the XML namespace for the types used for
/// the method arguments and return types in this web client or web service
/// when importing a SOAP message.
Parameter TYPENAMESPACE [ Internal ];

/// XMLIMPORTNAMESPACE specifies the XML namespace for the method definition
/// in the WSDL for the web service when importing a SOAP message.
Parameter XMLIMPORTNAMESPACE [ Internal ];

/// Specifies if part elements of messages in the WSDL use type or element attribute.
/// XMLELEMENT defaults to 1 for "literal" WSDL and to 0 for "encoded" WSDL.
Parameter XMLELEMENT As BOOLEAN [ Internal ];

/// Name of result property
Parameter XMLRESULTNAME [ Internal ];

/// If = 1, then this is a one-way SOAP operation.
Parameter SOAPONEWAY [ Internal ];

/// Make the class parameters available a run time.
ClassMethod GetSoapParameters(ByRef bindingStyle As %String, ByRef bodyUse As %String, ByRef namespace As %String, ByRef xmlimportnamespace As %String, ByRef typeNamespace As %String, ByRef oneWay As %Boolean, ByRef xmlelement As %Boolean, ByRef bare As %Boolean) [ Internal ]
{
}

/// Determine if the result element in a web client response needs to be adjusted to always match.
ClassMethod NeedsAdjustment(ByRef ResultName As %String) As %Boolean [ CodeMode = generator, Internal, Private ]
{
}

/// Import the SOAP message -- request if a service and response if a client.
Method ImportSOAPMessage(messageName As %String, ResultName As %String, handler, message, messageChildlist, mimeAttachments As %Net.MIMEPart, checkRequired As %Boolean) As %Status [ Internal ]
{
}

}
