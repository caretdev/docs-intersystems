Class %WebStress.Portal.Record Extends %WebStress.Portal.standardPage [ LegacyInstanceContext, System = 4 ]
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

ClientMethod recordStart() [ Language = javascript ]
{
}

ClassMethod RecordLaunch(script As %String, port As %String, rtnName) As %String [ ZenMethod ]
{
}

ClassMethod SetAppEncrypt(flag As %Boolean) As %String [ ZenMethod ]
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

///
/// Zen page notification of an HTTP request. This method can be overwritten
///
/// by subclasses.<br/>
///
/// This is called <em>before</em> the standard Zen pre-HTTP processing occurs.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
