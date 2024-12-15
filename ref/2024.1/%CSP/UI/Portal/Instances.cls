/// Zen page for System Management Portal
Class %CSP.UI.Portal.Instances Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Instances.zen";

Parameter HELPADDRESS = "Home,Provider,Instances";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Instances";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Used to draw title for this page. pHalpAddress is need to build the link for Help for this page.
ClassMethod DrawTitle1(pSeed As %String) As %Status
{
}

/// User clicked the "Edit" link which is there for clearity and consistency. No need to do anything here as onselectrow is going to kick in.
ClientMethod doNew() [ Language = javascript ]
{
}

/// User clicked the "Edit" link which is there for clearity and consistency. No need to do anything here as onselectrow is going to kick in.
ClientMethod doUpdate() [ Language = javascript ]
{
}

ClientMethod deleteSetting(MachineName, InstanceName) [ Language = javascript ]
{
}

ClientMethod removeSetting(MachineName, InstanceName) [ Language = javascript ]
{
}

/// Call server Remove method.
ClassMethod RemoveItem(MachineName, InstanceName) As %String [ ZenMethod ]
{
}

/// Call server delete method.
ClassMethod DeleteItem(MachineName, InstanceName) As %String [ ZenMethod ]
{
}

}
