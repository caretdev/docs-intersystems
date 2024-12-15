/// Renders a xy chart (scatter plot).
Class %ZEN.Report.Display.Chart.xyChart Extends chart [ Deprecated, System = 4 ]
{

/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 1;

Method renderSeries(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

Method renderMarkers(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

/// Return the type of x axis (category or value) used by
/// this chart.
Method getXAxisType() As %String
{
}

/// Return the type of y axis (category or value) used by
/// this chart.
Method getYAxisType() As %String
{
}

}
