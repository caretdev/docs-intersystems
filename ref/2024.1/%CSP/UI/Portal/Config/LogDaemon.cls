/// Class for Log Daemon Settings
Class %CSP.UI.Portal.Config.LogDaemon Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Config.Advanced) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Config.LogDaemon.zen";

Parameter HELPADDRESS = "Home,Configuration,Log Daemon Settings";

Parameter EMSSERVICE = "Config";

/// Displayed name of this page.
Parameter PAGENAME = "Log Daemon";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

/// Subject name for the setting page.
Property Subject As %String [ InitialExpression = "Logging" ];

Property Status As %Boolean;

Property StatusTimestamp As %TimeStamp;

Property DaemonPID As %Integer;

Method DaemonPIDGet() As %Integer
{
}

Method StatusGet() As %Boolean
{
}

Method StatusTimestampGet() As %TimeStamp
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This method can be called by the doSave() function to handle what the ZenMethod of server Save returned.
/// The method expects a proxy object to be passed.
/// result.ok = 1 indicates save is successful. result.Message is a message (not an error message) that should be displayed.
/// result.ok = 0 indicates save has failed. result.ErrorMessage should be displayed.
/// If result.ok = 1 and result.Message is null then the edit form is closed and the ParentURL is displayed.
/// Although this method is inherited from <class>%CSP.UI.Portal.Template</class>
/// we override it to prevent returning to the home page after click save for better UX
ClientMethod afterSave(result As %ZEN.proxyObject) [ Language = javascript ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

Method DrawStatusComponent(arg) As %Status
{
}

ClassMethod RenderStatusBadge(status As %Boolean, timestamp As %TimeStamp, otherInfo As %String = "") As %String
{
}

ClassMethod RenderTimestampText(status, timestamp) As %String
{
}

ClientMethod pollStatus() [ Language = javascript ]
{
}

Method RenderStatusBadgeZEN() As %String [ ZenMethod ]
{
}

Method RenderTimestampTextZEN() As %String [ ZenMethod ]
{
}

/// If any required field failed, the hint for the field will be turned to red.
/// The first one failed should have focus.
ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Subclass can override.
Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

XData Style
{
}

}
