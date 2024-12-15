/// Zen page for System Management Portal
Class %CSP.UI.Portal.Instance Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Create Instances";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Instance.zen";

Parameter HELPADDRESS = "Home,Provider,Instances";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.Instances.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];

/// ID for edit. Null if adding new credentials.
Property PID As %String(ZENURL = "PID");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod doModified() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method PopulateInstanceDropdown(Output displayList As %String, Output valueList As %String) As %Status
{
}

Method PopulateFields(ByRef Properties As %String) As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
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

/// Get user selection and send to server to save settings.
ClientMethod doInstall() [ Language = javascript ]
{
}

ClientMethod doCancel() [ Language = javascript ]
{
}

/// Save general association data to server
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

}
