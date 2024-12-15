/// System Management Portal - System Operations - Background Tasks (version w/o header)
Class %CSP.UI.Portal.BackgroundTaskListPopup Extends %CSP.UI.Portal.BackgroundTaskList [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/%CSP.UI.Portal.BackgroundTaskListPopup.zen";

Property ErrorPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.BackgroundTaskErrorPopup.zen",,1)} ];

/// Contents block with header removed
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}
