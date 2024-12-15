/// System Management Portal - Security Management - Doc DB Applications
Class %CSP.UI.Portal.Applications.DocDBList Extends %CSP.UI.Portal.Audit.EventsTemplate [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Applications.DocDBList.zen";

Parameter HELPADDRESS = "System Administration,Security,Applications,Configure Doc DB Applications";

Parameter EMSSERVICE = "Security";

/// Displayed name of this page.
Parameter PAGENAME = "Doc DB Applications";

Property msgConfirm As %String [ InitialExpression = {$$$TextJS("Are you sure you want to delete Doc DB application '%1'?")} ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value, tableID) [ Language = javascript ]
{
}

ClientMethod doEdit(Name, Namespace) [ Language = javascript ]
{
}

ClientMethod doDelete(Name, Namespace) [ Language = javascript ]
{
}

ClassMethod Delete(Name As %String, Namespace As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
/// Subclasses with extra layers of locator links or other than "Configuration" please override.
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

}
