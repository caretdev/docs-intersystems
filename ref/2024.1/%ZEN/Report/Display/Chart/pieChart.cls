Class %ZEN.Report.Display.Chart.pieChart Extends chart [ Deprecated, System = 4 ]
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

Method renderSeries(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
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

}
