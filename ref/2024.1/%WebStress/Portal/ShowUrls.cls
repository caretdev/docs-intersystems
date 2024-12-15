Class %WebStress.Portal.ShowUrls Extends %ZEN.Component.page [ DependsOn = %ZEN.Component.tableNavigator, System = 4 ]
{

Parameter APPLICATION = "%WebStress.Portal.Application";

Parameter DOMAIN = "%WebStress";

Parameter RESOURCE As STRING = "%Development";

/// Name of this page.
Parameter PAGENAME = "Webstress Portal";

Property Script As %String(ZENURL = "Script");

Property Row As %String(ZENURL = "Row");

XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod triggerAction(url) [ Language = javascript ]
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

}
