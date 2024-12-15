Class %CSP.UI.Portal.Archive Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Edit Archive Target";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As %Boolean = 0;

Parameter EMSSERVICE = "Namespace";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Archive.zen";

Parameter HELPADDRESS = "System Administration, Configuration, System Configuration, Archive Target Settings, Add Archive Target";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.Archives.zen";

Parameter RECENT = 0;

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %String(ZENURL = "isNew") [ InitialExpression = "0" ];

/// Archive for edit. Null if adding new archive.
Property PID As %String(ZENURL = "PID");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod changeType(newvalue) [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Save current item. Subclass to override.
ClientMethod doSave() [ Language = javascript ]
{
}

ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Subclass can override.
Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Overriden to add PID to the page name to distinguish the specific page.
ClientMethod navPageSizeChanged(value) [ Language = javascript ]
{
}

/// Overriden to add PID to the page name to distinguish the specific page.
ClientMethod navMaxRowsChanged(value) [ Language = javascript ]
{
}

/// Used to Save tableNavBar values, add PID to the page name to distinguish the type for the page.
ClassMethod UpdateTableNavState(pFilter As %String, pPageSize As %Integer, pMaxRows As %Integer, pPID As %String) [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
