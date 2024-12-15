/// This dialog lets the user change the properties of a DeepSee chart.
Class %DeepSee.UI.Dialog.ChartOptions Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 1;

/// Current selected chart type.
Property chartType As %ZEN.Datatype.string(ZENURL = "TYPE");

/// Current selected grid line type.
Property gridLineType As %ZEN.Datatype.string(ZENURL = "GRID");

/// Current selected text size.
Property textSize As %ZEN.Datatype.string(ZENURL = "TEXTSIZE");

/// Chart title.
Property chartTitle As %ZEN.Datatype.string(ZENURL = "TITLE");

/// Minimum axis value.
Property minValue As %ZEN.Datatype.float(ZENURL = "MIN");

/// Maximum axis value.
Property maxValue As %ZEN.Datatype.float(ZENURL = "MAX");

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Draw contents of chart icon box.
Method DrawIcons(pSeed As %String) As %Status
{
}

/// Draw contents of grid line icon box.
Method DrawGridLines(pSeed As %String) As %Status
{
}

/// Draw contents of text size box.
Method DrawTextSize(pSeed As %String) As %Status
{
}

/// Zen page notification of an HTTP request.
ClassMethod %OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]
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

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Click on a new chart type.
ClientMethod selectChartType(type) [ Language = javascript ]
{
}

/// Click on a new grid line type.
ClientMethod selectGridLineType(type) [ Language = javascript ]
{
}

/// Click on a new text size.
ClientMethod selectTextSize(size) [ Language = javascript ]
{
}

}
