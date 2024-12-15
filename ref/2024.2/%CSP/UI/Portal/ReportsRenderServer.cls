///
/// Management Portal - Create or edit/manage a Reports Render Server.
Class %CSP.UI.Portal.ReportsRenderServer Extends %CSP.UI.Portal.Template [ System = 4 ]
{

///
/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

///
/// Displayed name of this page.
Parameter PAGENAME = "Reports Render Server";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.ReportsRenderServer.zen";

Parameter HELPADDRESS = "Home,Configuration,Reports Render Servers,New Reports Render Server";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.ReportsRenderServers.zen";

///
/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

///
/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter RECENT = 0;

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = 0 ];

///
/// Is the current render server running
Property IsRunning As %Boolean [ InitialExpression = 0 ];

Property msgConfirmRunning As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("This Reports Render Server is currently running! In order to edit, you must stop it first.")} ];

Property XEPHOMEValue As %ZEN.Datatype.string [ InitialExpression = {..GetXEPHOMEValue()} ];

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

/// User changed the selected Renderer.
ClientMethod changeRenderer() [ Language = javascript ]
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

ClassMethod DefaultConfigFile(pEngine As %String = "FOP") As %String [ ZenMethod ]
{
}

/// Validation handler for form.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

/// Check if render server is running.
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

/// Save Reports Render Server definition.
ClassMethod SaveData(PID, Name, Server, Port, PingPort, NumThreads, NumPingThreads, Renderer, ConfigFile, LogLevel, LogFile, MaxLogFileSize, LogRotationCount, InitializationTimeout, ConnectionTimeout, InitQueueSize, MemoryThreshold, ThresholdPollingPeriod, JavaHome, JVMArgs) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Delete render server definition and return to the list of render servers.
ClientMethod deleteServer() [ Language = javascript ]
{
}

/// Delete Reports Render Server definition.
ClassMethod DeleteRenderServer(PID As %String) As %String [ ZenMethod ]
{
}

/// Start the Render Server.
ClientMethod startServer() [ Language = javascript ]
{
}

/// Stop the Render Server.
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

ClassMethod GetXEPHOMEValue() As %String [ Internal ]
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
