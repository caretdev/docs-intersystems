/// This dialog displays various breakdowns of the values behind a cell within a pivot.
Class %DeepSee.UI.Analysis.Distribution Extends %DeepSee.UI.Analysis.AbstractAnalysis [ System = 4 ]
{

/// Set this to false to prevent this analysis from being listed.
Parameter PUBLISHED As Boolean = 1;

/// Return an array of information about this analysis:<br/>
/// pInfo("caption") - localized caption for this item.<br/>
/// pInfo("tooltip") - localized tooltip for this item.<br/>
/// pInfo("icon") - icon for this item.<br/>
/// pInfo("rank") - optional rank; lower numbers are displayed first.<br/>
ClassMethod %GetAnalysisInfo(Output pInfo) As %Status
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
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
