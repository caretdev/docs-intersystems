/// System Management Portal - System Operations - Background Tasks - Error Log
Class %CSP.UI.Portal.BackgroundTaskError Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/%CSP.UI.Portal.BackgroundTaskError.zen";

Parameter HELPADDRESS = "Home,Background Tasks";

/// Displayed name of this page.
Parameter PAGENAME = "Background Task Error Log";

Parameter PARENTPAGE = "/csp/sys/%CSP.UI.Portal.BackgroundTaskList.zen";

Parameter RECENT = 0;

/// Column the table is sorted by. Default is the "Process ID" column. User may change and the value is saved and reloaded for this page.
Property CurrentColumn As %ZEN.Datatype.string [ InitialExpression = "Pid" ];

/// Page size value user entered into the "Page size" field in the table navigator. This value is saved and reloaded for this page.
Property TablePageSize As %Integer [ InitialExpression = "0" ];

/// Max rows value user entered into the "Max rows" field in the table navigator. This value is saved and reloaded for this page.
Property TableMaxRows As %Integer [ InitialExpression = "1000" ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
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

/// Add to the contents of the tool ribbon.
Method OnDrawRibbon() As %Status
{
}

}
