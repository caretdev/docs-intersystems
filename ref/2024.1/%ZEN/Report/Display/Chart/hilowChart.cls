/// Renders a hilo chart.<br>
/// Note: the <property>plotToEdge</property> is always
/// treated as false for hilo charts.
Class %ZEN.Report.Display.Chart.hilowChart Extends chart [ Deprecated, System = 4 ]
{

/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 0;

/// If true, pivot this chart: display categories vertically
/// and values horizontally.
Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Draw data series for this chart.
Method renderSeries(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
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
