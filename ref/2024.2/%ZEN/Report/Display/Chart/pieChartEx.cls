Class %ZEN.Report.Display.Chart.pieChartEx Extends chart [ Deprecated, System = 4 ]
{

/// Optional: comma-delimited list of label values of each slice.
/// If left blank, the series number is used.
Property labelValues As %ZEN.Datatype.csv;

/// On slice output percentage
Property outputPercentage As %ZEN.Datatype.boolean;

/// Optional formatting string for a percentage output.<br>
/// Number formats are specified in the
/// format required for the XPath format-number function.
Property formatPercentage As %ZEN.Datatype.string;

/// Only output percentage on slice, requires outputPrecentage to be set
Property onlyPercentage As %ZEN.Datatype.boolean;

/// Specifies how the pie chart will plot its data.
/// <ul>
/// <li>"items" - plot a slice for every item within this chart's data. If
/// there are multiple data series, each slice represents the total of each item
/// summed across the data series.<br>
/// The labels for the slices are derived as they are for pieChart.
/// </li>
/// <li>"series" - plot a slice for every data series within this chart's data.
/// Each slice represents the total value of all items within each series.<br>
/// The labels for the slices are specified by the <property>labelValues</property> property.</li>
/// <li>"both" - plot a slice for each item within each data series (that is, there
/// will be seriesCount * seriesSize slices).<br>
/// The slices are labeled as items; the chart legend will display the series names.
/// </li>
/// </ul>
Property plotBy As %ZEN.Datatype.string(VALUELIST = ",items,series,both") [ InitialExpression = "items" ];

Method renderSeries(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

Method renderSeriesByItems(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

Method renderSeriesBySeries(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

Method hasAxes()
{
}

Method renderGetLabelText(ByRef context As %String, XSL As %GlobalCharacterStream)
{
}

Method renderTrigFunctions(ByRef context As %String, XSL As %GlobalCharacterStream)
{
}

Method renderSeriesLabels(context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

Method renderSeriesLabelsByItems(context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

Method renderSeriesLabelsBySeries(context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

Method calcUnion(prefix As %String)
{
}

}
