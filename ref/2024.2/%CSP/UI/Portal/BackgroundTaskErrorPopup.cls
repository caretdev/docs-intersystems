/// System Management Portal - System Operations - Background Tasks - Error Log (version w/o header)
Class %CSP.UI.Portal.BackgroundTaskErrorPopup Extends %CSP.UI.Portal.BackgroundTaskError [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/%CSP.UI.Portal.BackgroundTaskErrorPopup.zen";

/// Contents block with header removed
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}
