/// Dialog popup for Zen Report Render Server actions.
Class %CSP.UI.Portal.Dialog.ZenReportPrintServerAction Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Dialog.ZenReportPrintServerAction.zen";

/// Displayed name of this page.
Parameter PAGENAME = "Zen Report Print Server";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Parameter APPLYBUTTON = 0;

Parameter TYPE = 2;

Property Action As %ZEN.Datatype.string(ZENURL = "ACTION");

Property PID As %ZEN.Datatype.string(ZENURL = "PID");

Property parm1 As %ZEN.Datatype.string(ZENURL = "P1");

Property parm2 As %ZEN.Datatype.string(ZENURL = "P2");

Property Draw1 As %Boolean [ InitialExpression = 1 ];

Property Draw2 As %Boolean [ InitialExpression = 0 ];

Property Draw3 As %Boolean [ InitialExpression = 0 ];

Property Draw4 As %Boolean [ InitialExpression = 0 ];

Property filename As %String;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

ClassMethod GetLogFileHelp() As %String [ Internal ]
{
}

/// Provide HTML content according to the action.
Method DrawArea1(pSeed As %String) As %Status
{
}

/// Provide HTML content according to the action.
Method DrawArea2(pSeed As %String) As %Status
{
}

/// User clicked one of the Browse buttons.
/// Save the name of the textfield so that when you return you know which textfield to update.
ClientMethod browseSelect(name, wildcard) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod drawLog() [ Language = javascript ]
{
}

ClassMethod GetServerObject() As %ZEN.Report.RenderServer
{
}

ClassMethod ViewLogContent(filename As %String = "")
{
}

ClassMethod Verify(port As %String = "", pingport As %String = "", timeout As %String = "")
{
}

ClassMethod ViewActivity(name As %String = "", port As %String = "")
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// If the user presses the ENTER key, this popup window will close.
ClientMethod onkeydownHandler(evt) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// If user closes the window after starting or stopping a server, simulate that button OK was pressed.
ClientMethod onunloadHandler() [ Language = javascript ]
{
}

}
