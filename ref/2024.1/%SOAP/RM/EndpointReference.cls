/// SOAP Addressing endpoint reference to be used with %SOAP.RM package.
/// This is a hack to allow output to multiple namespaces.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %SOAP.RM.EndpointReference Extends %SOAP.Addressing.EndpointReference [ System = 4 ]
{

Property %Namespace As %String(XMLPROJECTION = "none") [ Internal ];

Property content As %XML.String(XMLPROJECTION = "CONTENT");

/// Internal method to set content for output
Method contentGet() As %XML.String [ Internal ]
{
}

}
