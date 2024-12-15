Class %WebStress.Portal.RecordStatus Extends %WebStress.Portal.standardPage [ LegacyInstanceContext, System = 4 ]
{

///
/// Set this to the appropriate application class.
Parameter APPLICATION = "%ZEN.Portal.Application";

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

ClientMethod renderGrid() [ Language = javascript ]
{
}

ClassMethod GetStatus() As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod Status() As %String
{
}

ClassMethod Recorded(max As %Integer = 20) As %String
{
}

ClassMethod StopRecord() [ ZenMethod ]
{
}

ClientMethod checkTimer() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}