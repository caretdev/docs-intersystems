/// Management Portal - Create or edit/manage a Reports Print Server.
Class %CSP.UI.Portal.ReportsPrintServer Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

/// Displayed name of this page.
Parameter PAGENAME = "Reports Print Server";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ReportsPrintServer.zen";

Parameter HELPADDRESS = "Home,Configuration,Reports Print Servers,New Reports Print Server";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.ReportsPrintServers.zen";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter JSINCLUDES = "zenCSLM.js";

Parameter RECENT = 0;

/// Indicates a Print Server
Parameter TYPE = 2;

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = 0 ];

/// Is the current print server running
Property IsRunning As %Boolean [ InitialExpression = 0 ];

Property msgConfirmRunning As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("This Reports Print Server is currently running! In order to edit, you must stop it first.")} ];

Property hintForFoxit As %String;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked one of the Browse buttons.
/// Save the name of the textfield so that when you return you know which textfield to update.
ClientMethod browseSelect(name, wildcard) [ Language = javascript ]
{
}

/// User changed the selected Print Engine.
ClientMethod changeEngine() [ Language = javascript ]
{
}

/// User changed the log level. Hide log options if no logging was selected.
ClientMethod changeLogLevel() [ Language = javascript ]
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

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetTitle() As %String
{
}

/// Validation handler for form.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

/// Check if print server is running.
ClientMethod checkIsRunning() [ Language = javascript ]
{
}

/// Load values into fields.
Method LoadData(PID As %String) As %String
{
}

/// Get user input and send to server to save settings.
ClientMethod doSave() [ Language = javascript ]
{
}

/// Save Reports Print Server definition.
ClassMethod SaveData(PID, Name, Server, Port, PingPort, NumThreads, NumPingThreads, PrintEngine, LogLevel, LogFile, MaxLogFileSize, LogRotationCount, InitializationTimeout, ConnectionTimeout, JavaHome, JVMArgs, Key) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Delete print server definition and return to the list of print servers.
ClientMethod deleteServer() [ Language = javascript ]
{
}

/// Delete Reports Print Server definition.
ClassMethod DeletePrintServer(PID As %String) As %String [ ZenMethod ]
{
}

/// Start the Print Server.
ClientMethod startServer() [ Language = javascript ]
{
}

/// Stop the Print Server.
ClientMethod stopServer() [ Language = javascript ]
{
}

ClientMethod verify() [ Language = javascript ]
{
}

ClientMethod showStats() [ Language = javascript ]
{
}

ClientMethod showLog() [ Language = javascript ]
{
}

/// Provide additional information below the settings form, according to the button pressed.
Method DrawInfo(pSeed As %String) As %Status
{
}

ClassMethod GetLogFileHelp() As %String [ Internal ]
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

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
