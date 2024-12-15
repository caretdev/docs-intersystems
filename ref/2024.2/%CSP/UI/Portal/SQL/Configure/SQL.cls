/// General SQL Settings
Class %CSP.UI.Portal.SQL.Configure.SQL Extends %CSP.UI.Portal.Template [ System = 4 ]
{

Parameter AUTONS = 0;

/// Displayed name of this page.
Parameter PAGENAME = "General SQL Settings";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.SQL.Configure.SQL.zen";

Parameter HELPADDRESS = "System,Configuration,General SQL Settings";

Parameter EMSSERVICE = "Config";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData SVGStyle
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod setDisplayOptions() [ Language = javascript ]
{
}

ClientMethod setExecuteMode() [ Language = javascript ]
{
}

ClientMethod setColAlign() [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

/// User clicked Save. Save and return to parent page.
ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Save file into global.
ClassMethod SaveData(proxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
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
