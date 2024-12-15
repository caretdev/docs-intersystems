Class %WebStress.Portal.Controller Extends %WebStress.Portal.standardPage [ DependsOn = %ZEN.Component.tableNavigator, System = 4 ]
{

/// Set this to the appropriate application class.
Parameter APPLICATION = "%WebStress.Portal.Application";

/// Set this to the correct domain.
Parameter DOMAIN = "%WebStress";

/// Name of this page.
Parameter PAGENAME = "Webstress Controller Detail Page";

XData Style
{
}

XData detailPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method GetControlArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

ClientMethod renderControl() [ Language = javascript ]
{
}

ClientMethod controlTimer() [ Language = javascript ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// This class method callback is called just before the server-side page
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
