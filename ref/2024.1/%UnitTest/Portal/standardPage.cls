Class %UnitTest.Portal.standardPage Extends %ZEN.Portal.standardPage [ System = 4 ]
{

/// URL of home page (used in links).
Parameter HOMEPAGE = "%25CSP.Portal.Home.zen";

Parameter RESOURCE As STRING = "%Development";

Property IndexId As %ZEN.Datatype.integer(ZENURL = "Index");

XData Style
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Name of this page.
Parameter PAGENAME = "UnitTest Report Page";

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// return value 0 = failed, 1 = passed, 2 = skipped
ClassMethod GetTestStatus(index, suite, case, method, action) As %Integer
{
}

ClassMethod GetTestState(level) As %String
{
}

ClassMethod GetTestColor(level) As %String
{
}

ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
