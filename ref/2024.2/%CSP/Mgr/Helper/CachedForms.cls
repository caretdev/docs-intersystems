/// </br >This object is part of the <class>%CSP.Mgr.GatewaySystemStatus</class> object.
Class %CSP.Mgr.Helper.CachedForms Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLIGNOREINVALIDTAG As BOOLEAN = 1;

Parameter XMLIGNORENULL As STRING = 1;

/// Number of CSP forms cached by the Gateway
Property FormsInCache As %Integer;

/// Amount (in bytes) of cached form dat held in the Gateway.
Property CachedData As %Integer;

/// Number of hits for forms held in the Gateway cache.
Property CacheActivity As %Integer;

/// Information about individual forms in the Gateway cache.
Property Form As array Of %CSP.Mgr.Helper.Form(XMLKEYNAME = "id", XMLPROJECTION = "ELEMENT");

}
