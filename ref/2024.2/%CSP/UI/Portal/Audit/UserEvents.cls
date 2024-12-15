/// System Management Portal - Security Management - User Audit Events
Class %CSP.UI.Portal.Audit.UserEvents Extends %CSP.UI.Portal.Audit.EventsTemplate [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Audit.UserEvents.zen";

Parameter HELPADDRESS = "System Administration,Security,Auditing,Configure User Events";

Parameter EMSSERVICE = "Security";

/// Displayed name of this page.
Parameter PAGENAME = "User-Defined Audit Events";

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doEdit(event) [ Language = javascript ]
{
}

ClientMethod doDelete(event) [ Language = javascript ]
{
}

ClassMethod Delete(event As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

}
