/// System Management Portal - SQL Performance Tool - Troubleshooting Report Loader
Class %CSP.UI.Portal.SQL.QButtons.ReportLoader Extends (%CSP.UI.Template.Property, %CSP.UI.Portal.SQL.QButtons.Utils) [ System = 4 ]
{

/// Switch namespace $NAMESPACE is present
Parameter AUTONS As BOOLEAN = 1;

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.QButtons.ReportLoader.zen";

Parameter HELPADDRESS = "Home,Import SQL Troubleshooting Report";

/// Displayed name of this page.
Parameter PAGENAME = "SQL.QButtons.ReportLoader";

/// Security requirement
Parameter RESOURCE = "%Development";

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");

Property msgConfirm As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you wish to import customer report into namespace %1?")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked the Browse button.
ClientMethod browseSelect(name, wildcard) [ Language = javascript ]
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

ClientMethod adjustSizes() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod doAction(action) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

///  Return the array of links to show in the locator bar.<br/>
///  pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
