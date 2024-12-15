/// A list of alternative InterSystems IRIS servers may be defined for an application (path).
/// </br >This object is part of the <class>%CSP.Mgr.GatewaySystemStatus</class> object.
Class %CSP.Mgr.Helper.ApplicationPath Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLIGNOREINVALIDTAG As BOOLEAN = 1;

Parameter XMLIGNORENULL As STRING = 1;

/// Path for which alternative servers are begin specified.
Property Path As %String;

/// Number denotes the server number.
Property AlternativeServer As array Of %CSP.Mgr.Helper.AlternativeServer(XMLKEYNAME = "Number", XMLPROJECTION = "ELEMENT");

}
