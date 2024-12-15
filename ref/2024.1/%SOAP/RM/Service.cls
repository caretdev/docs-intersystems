/// Web Service to use for responding to CreateSequence, CloseSequence and TerminateSequence WS-ReliableMessaging requests
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %SOAP.RM.Service Extends %SOAP.WebService [ System = 4 ]
{

/// Name of the WebService.
Parameter SERVICENAME = "WSReliableMessaging";

/// SOAP Namespace for the WebService
Parameter NAMESPACE = "http://docs.oasis-open.org/ws-rx/wsrm/200702";

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Parameter ARGUMENTSTYLE = "message";

Parameter OUTPUTTYPEATTRIBUTE = 0;

/// CreateSequence
Method CreateSequence(CreateSequence As %SOAP.RM.CreateSequence) As %SOAP.RM.CreateSequenceResponse [ Final, SoapAction = "http://docs.oasis-open.org/ws-rx/wsrm/200702/CreateSequence", WebMethod ]
{
}

/// CloseSequence
Method CloseSequence(CloseSequence As %SOAP.RM.CloseSequence) As %SOAP.RM.CloseSequenceResponse [ Final, SoapAction = "http://docs.oasis-open.org/ws-rx/wsrm/200702/CloseSequence", WebMethod ]
{
}

/// TerminateSequence
Method TerminateSequence(TerminateSequence As %SOAP.RM.TerminateSequence) As %SOAP.RM.TerminateSequenceResponse [ Final, SoapAction = "http://docs.oasis-open.org/ws-rx/wsrm/200702/TerminateSequence", WebMethod ]
{
}

}
