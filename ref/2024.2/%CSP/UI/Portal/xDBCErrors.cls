/// System Management Portal - System Operations - xDBC Error Namespaces
Class %CSP.UI.Portal.xDBCErrors Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 1;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.xDBCErrors.zen";

Parameter HELPADDRESS = "Home,System Logs,View xDBC Error Log";

Parameter PARENTPAGE = "/csp/sys/op/%CSP.UI.Portal.xDBCErrorNamespaces.zen";

/// Displayed name of this page.
Parameter PAGENAME = "xDBC Errors";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property AllowSelectRow As %ZEN.Datatype.boolean [ InitialExpression = "0" ];

Property NAMSPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");

Property CurrentColumn As %ZEN.Datatype.string [ InitialExpression = "DATE_TIME" ];

Property DetailsPage As %String [ InitialExpression = {$P(..Link("%25CSP.UI.Portal.xDBCErrors.zen"),"$NAMESPACE=",1)} ];

Property msgConfirm As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to delete the selected errors from this namespace?")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod allowSelectRow(flag) [ Language = javascript ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

ClientMethod doSelectRow(processId) [ Language = javascript ]
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

/// show details of a particular error
ClientMethod doView(processId) [ Language = javascript ]
{
}

/// Update table.
ClientMethod updateView() [ Language = javascript ]
{
}

ClientMethod doDelete() [ Language = javascript ]
{
}

/// Delete selected errors now.
ClassMethod Delete(selectedRows) As %String [ ZenMethod ]
{
}

ClassMethod DrawDetails(pProcess) As %Status
{
}

}
