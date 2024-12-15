/// Zen page for System Management Portal - Configure Devices
Class %CSP.UI.Portal.Config.MagTape Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Config.AdvancedEdit) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Config.MagTape.zen";

Parameter HELPADDRESS = "Home,Configuration,Device Settings,MagTapes,MagTape";

/// Displayed name of this page.
Parameter PAGENAME = "Magnetic Tape Device";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.Config.MagTapes.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

/// ID for edit. Null if adding new device.
Property PID As %String(ZENURL = "PID");

Property Subject As %String [ InitialExpression = "MagTape" ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

ClientMethod getProxy() [ Language = javascript ]
{
}

ClassMethod GetPropertyArray(pProxy As %ZEN.proxyObject, Output Properties) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
