/// DeepSee Log File Viewer.
/// Display contents of the DeepSee log file for the current namespace.
///
Class %DeepSee.UI.LogViewer Extends %DeepSee.UI.standardPage [ System = 4 ]
{

Parameter PAGENAME = "Log Viewer";

Parameter DOCBOOKID = "D2MODEL_cube_build_errors";

XData Style
{
}

/// This XML defines the contents of the contents pane for this page.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Draw contents of log file pane.
Method DrawLogFile(pSeed As %String) As %Status
{
}

/// Get the (localized) title string for the page.
Method %OnGetTitle() As %String
{
}

/// Get the name for the page.
Method %OnGetPageName() As %String
{
}

/// Get the product name for the page.
Method %OnGetProductName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Adjust sizes of components on the page.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Adjust sizes of components on the page.
ClientMethod adjustSizes() [ Language = javascript ]
{
}

/// This class method callback is called just before the server-side page
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

/// Reload contents of file.
ClientMethod refreshLog() [ Language = javascript ]
{
}

/// Delete the log file.
ClientMethod deleteLog() [ Language = javascript ]
{
}

/// Delete the log file.
Method DeleteLogFile() As %String [ ZenMethod ]
{
}

}
