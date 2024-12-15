/// Renders a line chart.
Class %ZEN.Report.Display.Chart.lineChart Extends chart [ Deprecated, System = 4 ]
{

/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 1;

/// Specifies whether the area under the line is filled (as
/// in an area chart) or not filled (as in a line chart).
Property chartFilled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, this is a <i>stacked</i> line chart. That is,
/// data series are plotted above one another.<br>
/// Note that negative values are ignored in stacked charts.
Property chartStacked As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, pivot this chart: display categories vertically
/// and values horizontally.
Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Method renderSeries(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

Method renderSeriesLine(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, pDataFields As %String, i As %Integer) As %Status
{
}

Method renderMarkers(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, pDataFields As %String, pI As %Integer)
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
