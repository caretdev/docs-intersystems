/// SequenceFault SOAP header as defined in WS-ReliableMessaging 1.2.
Class %SOAP.RM.SequenceFault Extends %SOAP.Header [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/ws-rx/wsrm/200702";

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLPREFIX = "wsrm";

Parameter XMLIGNOREINVALIDTAG = 1;

Property FaultCode As %String(MAXLEN = "");

Property Detail As %XML.String(MAXLEN = "");

/// Make the fault for WS-ReliableMessaging
ClassMethod MakeFault(service As %SOAP.WebService, forCreateSequence As %Boolean, faultCode As %String, faultSubCode As %String, identifier As %xsd.anyURI = "") As %SOAP.Fault [ ServerOnly = 1 ]
{
}

/// Get WS-ReliableMessaging fault reason.
ClassMethod GetFaultReason(faultCode As %String) As %String [ ServerOnly = 1 ]
{
}

}
