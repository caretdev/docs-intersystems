/// This dialog displays various regression analysis of the values behind a cell within a pivot.
Class %DeepSee.UI.Analysis.Regression Extends %DeepSee.UI.Analysis.AbstractAnalysis [ CompileAfter = (%ZEN.Generator, %ZEN.SVGComponent.xyFitChart), System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Measure to use for analysis.
Property measureNameX As %ZEN.Datatype.string(ZENURL = "MEASURE");

/// Measure to use for analysis.
Property measureNameY As %ZEN.Datatype.string(ZENURL = "MEASURE");

/// Array of X values to plot.
Property valuesX As list Of %ZEN.Datatype.float;

/// Array of Y values to plot.
Property valuesY As list Of %ZEN.Datatype.float;

Property XMin As %ZEN.Datatype.float;

Property XMax As %ZEN.Datatype.float;

Property YMin As %ZEN.Datatype.float;

Property YMax As %ZEN.Datatype.float;

/// Regression values
Property R As %ZEN.Datatype.float;

Property Slope As %ZEN.Datatype.float;

Property SlopeErr As %ZEN.Datatype.float;

Property Intercept As %ZEN.Datatype.float;

Property InterceptErr As %ZEN.Datatype.float;

Property Fit As %ZEN.Datatype.string;

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClassMethod %GetAnalysisInfo(Output pInfo) As %Status
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

/// Change in measureX value.
ClientMethod measureChange() [ Language = javascript ]
{
}

ClientMethod fitChange() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Update value of controls.
Method %UpdateControls(pCount As %Integer, pNullCount As %Integer, pMinValue As %Double, pMaxValue As %Double)
{
}

Method UpdateConfidence() As %Status [ ZenMethod ]
{
}

Method %UpdateEquation() As %Status
{
}

/// Compute chart valuesX.
Method %ComputeChartValues()
{
}

/// Recompute chart values.
Method UpdateValues() As %String [ ZenMethod ]
{
}

/// Execute query and get raw list of valuesX in temp global.
Method %ComputeValues(Output pCount As %Integer, Output pNullCount As %Integer, Output pMinValue As %Double, Output pMaxValue As %Double) As %Status
{
}

ClientMethod confidenceChange() [ Language = javascript ]
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

ClientMethod getLineData() [ Language = javascript ]
{
}

/// Callback to provide x label for the chart.
ClientMethod getXLabel(val) [ Language = javascript ]
{
}

/// Update state of the measureX select control
ClientMethod updateMeasureSelect() [ Language = javascript ]
{
}

Method %ComputeRegression() As %Status
{
}

Method %GetPair(i As %Integer, Output x As %Float, Output y As %Float) As %Status
{
}

ClassMethod %Round(x As %Float) As %Float
{
}

}
