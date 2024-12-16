/// This is an SVG <class>chart</class> component that displays a hi-low-close chart.<br>
/// This chart displays three data series as a set of rectangles: the top of each rectangle
/// represents the high value; the bottom, the low value; a marker is drawn for
/// the closing value.<br>
/// The three data series are interpreted as:
/// <ul>
/// <li>First series: set of high values.</li>
/// <li>Second series: set of low values. Each low value is assumed to be smaller than
/// its corresponding high value.</li>
/// <li>Third series: set of optional closing values. Each closing value is assumed to between
/// its corresponding high and low values.</li>
/// </ul>
/// You can view pivot the chart using the <property>chartPivot</property> property.<br>
Class %ZEN.SVGComponent.hilowChart Extends chart [ Deprecated, System = 3 ]
{

/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 0;

/// If true, pivot this chart: display categories vertically
/// and values horizontally.
Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional: style used for bars where the high value is less than the low value.
Property invertedBarStyle As %ZEN.Datatype.svgStyle;

XData SVGStyle
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
ClientMethod renderSeries(group) [ Language = javascript ]
{
}

/// Return an array of labels to display within the Legend box.<br>
/// A hilow chart only displays one logical data series, so only one
/// item is displayed in the legend box.
ClientMethod getLegendLabels() [ Language = javascript ]
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

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}