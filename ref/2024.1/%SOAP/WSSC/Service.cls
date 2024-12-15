/// Web Service to use for responding to Issue and Cancel WS-SecureConversation requests
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %SOAP.WSSC.Service Extends %SOAP.WebService [ System = 4 ]
{

/// Name of the WebService.
Parameter SERVICENAME = "WSSecureConversation";

/// SOAP Namespace for the WebService
Parameter NAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-trust/200512";

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Parameter ARGUMENTSTYLE = "message";

Parameter OUTPUTTYPEATTRIBUTE = 0;

/// RequestSecurityToken
Method RequestSecurityToken(RequestSecurityToken As %SOAP.WST.RequestSecurityToken) As %SOAP.WST.RequestSecurityTokenResponseCollection(XMLNAME="RequestSecurityTokenResponseCollection") [ Final, WebMethod ]
{
}

}
