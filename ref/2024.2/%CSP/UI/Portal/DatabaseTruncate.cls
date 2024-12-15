/// Zen page for System Management Portal - Databases Truncate
Class %CSP.UI.Portal.DatabaseTruncate Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Cleanup";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.DatabaseTruncate.zen";

Parameter HELPADDRESS = "Home,Databases,Database Info,Truncate";

Parameter PARENTPAGE = "/csp/sys/op/%CSP.UI.Portal.DatabaseDetails.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

/// ID for edit. DBName for this page.
Property DBName As %String(ZENURL = "DBName");

/// DBDirectory passed in.
Property Directory As %String(ZENURL = "Directory");

/// Current size.
Property Size As %String;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return current size since the size may have changed since the table was drawn
ClassMethod GetSize(Directory As %String, Output Size As %Integer) As %String
{
}

/// User clicked "OK" to cleanup. Call server method to job off in the background.
ClientMethod doFinish(isFinish) [ Language = javascript ]
{
}

/// Make sure that the Target size is smaller than that of the current size.
ClientMethod validate(size, target) As %Boolean [ Language = javascript ]
{
}

/// Start background job to cleanup a selected directory
ClassMethod StartCleanup(DBName, Directory, Target) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the (localized) title string for the page.
Method %OnGetTitle() As %String
{
}

Method %OnGetPageName() As %String
{
}

Method DrawAbortError(seed As %String) As %Status
{
}

/// This method resets the modified indicator and return user to the parent page.
ClientMethod doCancel() [ Language = javascript ]
{
}

}
