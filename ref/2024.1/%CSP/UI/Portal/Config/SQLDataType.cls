/// Zen page for System Management Portal - Add or Edit a SQL Datatype Mapping
Class %CSP.UI.Portal.Config.SQLDataType Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Config.AdvancedEdit) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Config.SQLDataType.zen";

Parameter HELPADDRESS = "Home,Configuration,User-defined DDL Mappings";

Parameter EMSSERVICE = "Config";

/// Displayed name of this page.
Parameter PAGENAME = "SQLDataType";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.Config.SQLDataTypes.zen";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

/// ID for edit. Null if adding new datatype mapping.
Property PID As %String(ZENURL = "PID");

Property Subject As %String(ZENURL = "Subject");

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

Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
