/// Renders a bar chart.<br>
/// Note: the <property>plotToEdge</property> is always
/// treated as false for bar charts.
Class %ZEN.Report.Display.Chart.barChart Extends chart [ Deprecated, System = 4 ]
{

/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 0;

/// If true, this is a <i>stacked</i> bar chart. That is,
/// data series are plotted on top of one another.<br>
/// If false, then data series are plotted side-by-side.<br>
/// Note that negative values are ignored in stacked charts.<br>
/// <span style='font-weight:bold'>NOT CURRENTLY IMPLEMENTED</span>
Property chartStacked As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, pivot this chart: display categories vertically
/// and values horizontally.
Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Draw data series for this chart.
Method renderSeries(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

Method renderSeriesGroupBarChart(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

Method renderDataGroupBarChart(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
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
