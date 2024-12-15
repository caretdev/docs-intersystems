Class %WebStress.Portal.RunHistory Extends %WebStress.Portal.standardPage [ DependsOn = %ZEN.Component.tableNavigator, System = 4 ]
{

/// Set this to the appropriate application class.
Parameter APPLICATION = "%WebStress.Portal.Application";

/// Set this to the correct domain.
Parameter DOMAIN = "%WebStress";

/// Name of this page.
Parameter PAGENAME = "Webstress Run History";

XData Style
{
}

XData detailPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
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

Method Color(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

}