/// Informix SQL Settings
Class %CSP.UI.Portal.SQL.Configure.ISQL Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Informix SQL Settings";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.SQL.Configure.ISQL.zen";

Parameter HELPADDRESS = "Home,Configuration,ISQL Compatibility Settings";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked Save. Save and return to parent page.
ClientMethod doSave() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Save file into global.
ClassMethod SaveData(DELIMIDENT, TRACE, FUNCTIONRETURNSSET, RESERVEDWORDPREFIX) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) name of the page.
///  This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
