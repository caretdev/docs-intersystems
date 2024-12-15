/// This is an SVG <class>chart</class> component that displays a combination of
/// line and bar chart information.<br/>
/// This chart displays one or more data series each of which can be presented as lines
/// or bars.<br/>
/// Pivotted combo charts are not supported.
Class %ZEN.SVGComponent.comboChart Extends %ZEN.SVGComponent.barChart [ Deprecated, System = 3 ]
{

/// Default appearance of this component.
Parameter DEFAULTAPPEARANCE = "2D";

/// Comma-delimited list of types indicating how each series within the chart should be displayed.
/// Possible types are "line", "area", "target", and "bar". If a type is not supplied, the type is "bar".
/// "target" draws a target bar across any bars series.
Property seriesTypes As %ZEN.Datatype.csv;

/// Return the type (how a series should be displayed) for the given data series (0-based).
ClientMethod getSeriesType(series) [ Language = javascript ]
{
}

/// For line/bar charts with stacked bars, indicate which "group" should
/// be used for computing axis ranges.
ClientMethod getRangeGroupForSeries(series) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Test if this is a combo chart.
ClientMethod isCombo() [ Language = javascript ]
{
}

/// Test if a time-based x axis should be used.
/// This is overridden in subclasses.
ClientMethod isTimeBased() [ Language = javascript ]
{
}

}
