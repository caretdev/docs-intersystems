Class %WebStress.Portal.WebServers Extends %WebStress.Portal.standardPage [ System = 4 ]
{

///
/// Set this to the appropriate application class.
Parameter APPLICATION = "%WebStress.Portal.Application";

///
/// Set this to the correct domain.
Parameter DOMAIN = "%WebStress";

///
/// Name of this page.
Parameter PAGENAME = "Webstress Portal";

XData Style
{
}

XData detailPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method GetFinderArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

ClientMethod renderGrid() [ Language = javascript ]
{
}

ClientMethod addResult() [ Language = javascript ]
{
}

ClientMethod saveResults() [ Language = javascript ]
{
}

Method SubmitTest(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, Output pResponseObject As %RegisteredObject) As %Status
{
}

ClientMethod removeResult(id) [ Language = javascript ]
{
}

///
/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

///
/// Return the array of links to show in the locator bar.<br/>
///
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

///
/// This class method callback is called just before the server-side page
///
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

///
/// Get the (localized) title string for the page.
///
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

}
