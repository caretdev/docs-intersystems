/// This dialog displays various breakdowns of the values behind a cell within a pivot.
Class %DeepSee.UI.Dialog.PivotBreakdown Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

Property queryKey As %ZEN.Datatype.string(ZENURL = "KEY");

Property selectedRange As %ZEN.Datatype.string(ZENURL = "RANGE");

/// Measure to use for analysis.
Property measureName As %ZEN.Datatype.string(ZENURL = "MEASURE");

/// WITH clause for query
Property withClause As %ZEN.Datatype.string(ZENURL = "WITH");

/// Array of values to plot.
Property values As list Of %ZEN.Datatype.float;

/// Array of x axis labels.
Property xLabels As list Of %ZEN.Datatype.string;

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
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

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// Change in measure value.
ClientMethod measureChange() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Update value of controls.
Method %UpdateControls(pCount As %Integer, pNullCount As %Integer, pMinValue As %Double, pMaxValue As %Double, pSum As %Double)
{
}

/// Compute chart values.
Method %ComputeChartValues(pMinValue As %Double, pMaxValue As %Double)
{
}

/// Recompute chart values.
Method UpdateValues() As %String [ ZenMethod ]
{
}

/// Execute query and get raw list of values in temp global.
Method %ComputeValues(Output pCount As %Integer, Output pNullCount As %Integer, Output pMinValue As %Double, Output pMaxValue As %Double, Output pSum As %Double) As %Status
{
}

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Callback to provide data for the chart.
ClientMethod getChartData(series) [ Language = javascript ]
{
}

/// Callback to provide x label for the chart.
ClientMethod getXLabel(val) [ Language = javascript ]
{
}

/// Update state of the measure select control
ClientMethod updateMeasureSelect() [ Language = javascript ]
{
}

}
