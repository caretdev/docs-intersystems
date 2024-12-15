/// Zen page for System Management Portal - Configure MagTapes
Class %CSP.UI.Portal.Config.MagTapes Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav, %CSP.UI.Portal.Config.AdvancedList) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Config.MagTapes.zen";

Parameter HELPADDRESS = "Home,Configuration,Device Settings,MagTapes";

/// Displayed name of this page.
Parameter PAGENAME = "Magnetic Tape Devices";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property EditPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.Config.MagTape.zen")} ];

Property Subject As %String [ InitialExpression = "MagTapes" ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Subclass can override.
Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}