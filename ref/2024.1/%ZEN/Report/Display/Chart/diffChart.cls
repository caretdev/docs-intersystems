/// Renders a diff chart.
Class %ZEN.Report.Display.Chart.diffChart Extends chart [ Deprecated, System = 4 ]
{

/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 1;

/// If true, this is a <i>stacked</i> line chart. That is,
/// data series are plotted above one another.<br>
/// Note that negative values are ignored in stacked charts.
Property chartStacked As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, pivot this chart: display categories vertically
/// and values horizontally.
Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property refLineStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "stroke-dasharray: 1,1;" ];

Method renderSeries(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

Method renderSeries1(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, seriestemplatename As %String, mode As %String, ByRef datatemplatename, seriesNumber As %Integer)
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
