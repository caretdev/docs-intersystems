/// System Management Portal - System Operations - xDBC Error Namespaces
Class %CSP.UI.Portal.xDBCErrorNamespaces Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.xDBCErrorNamespaces.zen";

Parameter HELPADDRESS = "Home,System Logs,View xDBC Error Log";

/// Displayed name of this page.
Parameter PAGENAME = "xDBC Error Namespaces";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property CurrentColumn As %ZEN.Datatype.string [ InitialExpression = "NAMESPACE" ];

Property ErrorPage As %String [ InitialExpression = {$P(..Link("%25CSP.UI.Portal.xDBCErrors.zen"),"$NAMESPACE=",1)} ];

Property msgConfirm As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to delete all errors from the the selected namespaces?")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Add to the contents of the tool ribbon.
Method OnDrawRibbon() As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// show errors for selected namespace
ClientMethod doView(namespace) [ Language = javascript ]
{
}

/// Update table.
ClientMethod updateView() [ Language = javascript ]
{
}

ClientMethod doDelete() [ Language = javascript ]
{
}

/// Delete selected namespaces now.
ClassMethod Delete(selectedRows) As %String [ ZenMethod ]
{
}

}
