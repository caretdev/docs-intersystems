/// This is an SVG <class>chart</class> component that displays a combination of
/// line and bar chart information.<br/>
/// This chart displays one or more data series each of which can be presented as lines
/// or bars.<br/>
/// Pivotted combo charts are not supported.
Class %ZEN.Report.Display.COSChart.ccomboChartDualY Extends %ZEN.Report.Display.COSChart.cbarChartDualY [ Deprecated, System = 4 ]
{

/// Default appearance of this component.
Parameter DEFAULTAPPEARANCE = "2D";

/// Comma-delimited list of types indicating how each series within the chart should be displayed.
/// Possible types are "line", "linked"   - line is default
Property seriesTypes As %ZEN.Datatype.csv;

/// Return the type (how a series should be displayed) for the given data series (0-based).
Method getSeriesType(series)
{
}

/// For line/bar charts with stacked bars, indicate which "group" should
/// be used for computing axis ranges.
Method getRangeGroupForSeries(series)
{
}

/// Test if this is a combo chart.
Method isCombo()
{
}

/// Test if a time-based x axis should be used.
/// This is overridden in subclasses.
Method isTimeBased()
{
}

}
