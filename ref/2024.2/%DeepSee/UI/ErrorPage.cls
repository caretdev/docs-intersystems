/// DeepSee Management Portal Error page.
///
Class %DeepSee.UI.ErrorPage Extends %DeepSee.UI.standardPage [ System = 4 ]
{

Parameter PAGENAME = "Error Page";

Parameter DOCBOOKID = "D2GS_ch_intro";

Property errorName As %String(ZENURL = "ERROR");

/// No resource is needed to view the error page.
/// JMD1415
Parameter RESOURCE;

XData Style
{
}

/// This XML defines the contents of the contents pane for this page.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the page.
Method %OnGetTitle() As %String
{
}

/// Get the name for the page.
Method %OnGetPageName() As %String
{
}

/// Get the product name for the page.
Method %OnGetProductName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Draw contents of error html component.
Method DrawError(pSeed As %String) As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

}
