/// Class for Telnet Settings
Class %CSP.UI.Portal.Config.Telnet Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Config.Advanced) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Config.Telnet.zen";

Parameter HELPADDRESS = "Home,Configuration,Device Settings,Telnet Settings";

Parameter EMSSERVICE = "Config";

/// Displayed name of this page.
Parameter PAGENAME = "Telnet Settings";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

/// Subject name for the setting page.
Property Subject As %String [ InitialExpression = "Telnet" ];

Property isWINDOWS As %Boolean [ InitialExpression = {$$$isWINDOWS} ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// If any required field failed, the hint for the field will be turned to red.
/// The first one failed should have focus.
ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Subclass can override.
Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
