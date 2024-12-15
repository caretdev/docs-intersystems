Class %ZEN.SVGComponent.percentbarChart Extends chart [ Deprecated, System = 3 ]
{

/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 0;

/// Default appearance of this component.
Parameter DEFAULTAPPEARANCE = "3D";

/// If true, pivot this chart: display categories vertically
/// and values horizontally.
Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

XData SVGStyle
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
/// This includes the logic for display combo charts as it is shared with
/// its subclass.
ClientMethod renderSeries(group) [ Language = javascript ]
{
}

/// Return default style for a bar element.
ClientMethod getChartElementStyle(series, item) [ Language = javascript ]
{
}

/// Return the type of x axis (category or value) used by
/// this chart.
ClientMethod getXAxisType() [ Language = javascript ]
{
}

/// Return the type of y axis (category or value) used by
/// this chart.
ClientMethod getYAxisType() [ Language = javascript ]
{
}

/// This method returns true if data series should be summed
/// when calculating data range for the chart.
ClientMethod useSumForRange() [ Language = javascript ]
{
}

/// This method returns true if data series is from a percentage bar chart
/// when calculating data range for the chart.
ClientMethod usePercentForRange() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Return the type (how a series should be displayed) for the given data series (0-based).
/// Overridden in combo chart.
ClientMethod getSeriesType(series) [ Language = javascript ]
{
}

}
