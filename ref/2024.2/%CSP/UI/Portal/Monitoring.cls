Class %CSP.UI.Portal.Monitoring Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Monitor Settings";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Monitoring.zen";

Parameter HELPADDRESS = "Home,Configuration,Monitor Settings";

Parameter EMSSERVICE = "Config";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property DialogLink As %String [ InitialExpression = {..Link("/csp/sys/sec/%CSP.UI.Portal.Dialog.Service.zen",,1)} ];

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod doService() [ Language = javascript ]
{
}

/// Save current item.
ClientMethod doSave() [ Language = javascript ]
{
}

ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) name of the page.
///  This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

Method DrawServiceStatus() As %Status [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
