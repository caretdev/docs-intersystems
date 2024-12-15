/// Zen page for System Management Portal Routine Compare
Class %CSP.UI.Portal.RoutineCompare Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Compare Routines";

Parameter RESOURCE = "%Development:USE";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.RoutineCompare.zen";

Parameter HELPADDRESS = "Home,Routines,Compare";

Parameter PARENTPAGE = "/csp/sys/exp/%CSP.UI.Portal.RoutineList.zen";

Parameter RECENT = 0;

Property Namespace1 As %String(ZENURL = "$NAMESPACE");

Property Namespace2 As %String(ZENURL = "$NAMESPACE");

Property Routine1 As %String(ZENURL = "Routine1");

Property Routine2 As %String(ZENURL = "Routine2");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doCompare() [ Language = javascript ]
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// When page is loaded, put focus on Routine 1
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// User clicked one of the Browse buttons.
/// Save the flag so that when you return you know which text box to update.
ClientMethod browseSelect(flag) [ Language = javascript ]
{
}

/// Load page specific data
Method %OnAfterCreatePage() As %Status
{
}

/// Draw HTML for Compare Results
Method DrawHTML(p As %String) As %Status
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

}
