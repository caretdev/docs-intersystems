/// System Management Portal - Security Management - Audit Events Template
Class %CSP.UI.Portal.Audit.EventsTemplate Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ Abstract, System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter EMSSERVICE = "Security";

/// Displayed name of this page.
Parameter PAGENAME = "System Audit Events";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

XData Style
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
{
}

ClientMethod doReset(event) [ Language = javascript ]
{
}

ClientMethod doChangeStatus(event) [ Language = javascript ]
{
}

ClientMethod doGetStatus(event) [ Language = javascript ]
{
}

ClassMethod Reset(event As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod ChangeStatus(event As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod GetStatus(event As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

}
