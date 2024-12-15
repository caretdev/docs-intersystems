/// Zen page for System Management Portal - Show a System monitor log
Class %CSP.UI.Portal.ViewLog Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "View Log";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.ViewLog.zen";

Parameter HELPADDRESS = "Home,System Logs,View System Monitor Log";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property showAll As %String(ZENURL = "showAll");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Check if user hit [Enter].
ClientMethod keyUp(zenEvent, flag) [ Language = javascript ]
{
}

ClientMethod doSearch() [ Language = javascript ]
{
}

ClientMethod highlightSearchTerms(searchText, treatAsPhrase, warnOnFailure, highlightStartTag, highlightEndTag) [ Language = javascript ]
{
}

ClientMethod doHighlight(bodyText, searchTerm, highlightStartTag, highlightEndTag) [ Language = javascript ]
{
}

/// User clicked the View button. Load file content.
ClientMethod doView() [ Language = javascript ]
{
}

/// User clicked one of the Browse buttons.
ClientMethod browseSelect() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// This method draws content to html. No style is applied. Display content as is.
Method DrawLogContent(tmp) As %Status
{
}

Method DrawDownImage(pSeed) As %Status
{
}

}
