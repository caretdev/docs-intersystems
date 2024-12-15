/// This dialog displays an analysis of the selected cell(s) within a pivot table.
/// This class is a wrapper that lets the user select one of the available
/// options.
Class %DeepSee.UI.Dialog.PivotAnalysis Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

Property queryKey As %ZEN.Datatype.string(ZENURL = "KEY");

Property selectedRange As %ZEN.Datatype.string(ZENURL = "RANGE");

Property sortColumn As %ZEN.Datatype.integer(ZENURL = "SORTCOL") [ InitialExpression = 0 ];

Property sortDir As %ZEN.Datatype.string(ZENURL = "SORTDIR") [ InitialExpression = "ASC" ];

/// Class name of current analysis.
Property analysisType As %ZEN.Datatype.string(ZENURL = "TYPE");

/// Measure to use for analysis.
Property measureName As %ZEN.Datatype.string(ZENURL = "MEASURE");

/// WITH clause for query
Property withClause As %ZEN.Datatype.string(ZENURL = "WITH");

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Add elements to the analysis menu.
Method CreateAnalysisMenu(pMenu As %ZEN.Component.lookoutMenu) As %Status
{
}

/// Draw an icon box.
/// <var>pInfo</var> is type^name^title^icon
Method DrawAnalysisIcon(pInfo As %String) As %Status
{
}

/// Apply changes to page.
Method %OnAfterCreatePage() As %Status
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

/// Click on a new analysis type.
ClientMethod selectAnalysisType(type) [ Language = javascript ]
{
}

/// Return an array of all available analysis types
/// pInfo(n) = $LB(class,caption,tooltip,icon)
ClassMethod %GetAnalysisClasses(Output pInfo As %String) As %Status
{
}

}
