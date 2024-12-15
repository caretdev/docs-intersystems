/// The System Status displays the status of all active CSP connections.
/// This object is returned by the <class>%CSP.Mgr.GatewayMgr</class>.GetSystemStatus()
/// method.
Class %CSP.Mgr.GatewaySystemStatus Extends (%RegisteredObject, %XML.Adaptor)
{

Parameter XMLIGNOREINVALIDTAG As BOOLEAN = 1;

/// <i>Connections</i> has information on the connections to the InterSystems IRIS server.
/// The Connection Number is the number the CSP Gateway assigns to the connection.
Property Connections As array Of %CSP.Mgr.Helper.Connection(XMLKEYNAME = "Number");

/// Displays information on InterSystems IRIS servers.
Property CacheServers As array Of %CSP.Mgr.Helper.CacheServer(XMLKEYNAME = "Number");

Property ApplicationPaths As array Of %CSP.Mgr.Helper.ApplicationPath(XMLKEYNAME = "Number");

/// <i>CachedForms</i> displays internal NSD information. This only appears for NSD installations
/// or for installations the use the Gateway's response caching facility.
Property CachedForms As %CSP.Mgr.Helper.CachedForms;

ClassMethod ParseIt()
{
}

}
