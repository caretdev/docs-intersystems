/// System Management Portal - System Administration - Configuration - Source Control
Class %CSP.UI.Portal.SourceControl Extends %CSP.UI.Template.List
{

/// Allow to change namespaces for this page.
Parameter AUTONS As BOOLEAN = 1;

/// Displayed name of this page.
Parameter PAGENAME = "Source Control Settings";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.SourceControl.zen";

Parameter HELPADDRESS = "Home,Configuration,Source Control Settings";

Property FILETYPE As %String [ InitialExpression = "SourceControl" ];

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property NSSelected As %String;

Property TotalNamespaces As %Integer;

Property TitleMsg As %String [ InitialExpression = {$$$Text("The source control for namespace %1 is defined below.")} ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData searchPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData resultPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnGetPageName() As %String
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method OnDrawRibbon() As %Status
{
}

/// Draw the contents of the Table Header (the region between the diagram and the table).
Method DrawTableHeader(pSeed As %String) As %Status
{
}

/// Draw Namespaces list in the search pane. If pSeed is not null, then show only those that match it.
Method DrawMenu(pSeed) As %Status
{
}

/// Draw html content for source control for current or selected namespace.
Method DrawSCContent(pNamespace) As %Status
{
}

/// User wants to filter namespaces list.
ClientMethod doFilter() [ Language = javascript ]
{
}

/// Get user input and send to server to save settings.
ClientMethod doSave() [ Language = javascript ]
{
}

/// User clicked on a new namespace. Check if user has unsaved changes. If yes, then prompt to save.
ClientMethod doNamespace(menuIndex, namespace) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

ClientMethod adjustSizes() [ Language = javascript ]
{
}

ClientMethod scChanged(scValue) [ Language = javascript ]
{
}

/// Given the newly seleted namespace, update the source control content
ClientMethod updateSCContent(namespace) [ Language = javascript ]
{
}

ClassMethod SaveData(namespace, value) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
