/// System Management Portal - System Configuration - ECP
Class %CSP.UI.Portal.ECP Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "ECP Settings";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ECP.zen";

Parameter HELPADDRESS = "Home,Configuration,ECP Settings";

Parameter EMSSERVICE = "Namespace";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Property ConfigIsManaged As %Boolean [ InitialExpression = {##class(%SYS.EMS).IsReadOnly("Config.config")} ];
Property ConfigIsManaged As %Boolean [ InitialExpression = 0 ];

Property DialogLink As %String [ InitialExpression = {..Link("/csp/sys/sec/%CSP.UI.Portal.Dialog.Service.zen",,1)} ];

Property SSLLinkCli As %ZEN.Datatype.string;

Property SSLLinkSvr As %ZEN.Datatype.string;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod doAppServers() [ Language = javascript ]
{
}

ClientMethod doDataServers() [ Language = javascript ]
{
}

ClientMethod doService() [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod SSLChanged(newvalue) [ Language = javascript ]
{
}

ClientMethod openSSL(isClient) [ Language = javascript ]
{
}

/// Set Locator bar and determine whether to show change password option.
Method %OnAfterCreatePage() As %Status
{
}

Method DrawServiceStatus() As %Status [ ZenMethod ]
{
}

Method DrawSSLStatus() As %Status [ ZenMethod ]
{
}

///  Save general association data to server.<br/>
///  Returns proxy.ok = 1 (save successful) or 0 (error occurred)<br/>
///  proxy.ErrorMessage (save failed and display this error message).
///  If proxy.ok is 1 and no messages returned then we return to SMP home.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Get the (localized) name of the page.
///  This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Return -1: not exist, 0: disabled, 1: exist and enabled.
ClassMethod CheckECPSSL() As %Integer [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
