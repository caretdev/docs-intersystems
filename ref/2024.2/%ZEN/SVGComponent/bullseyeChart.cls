/// This is an SVG <class>chart</class> component that displays a "bullseye" chart.<br>
/// A bullseye chart displays a series of values as a set of concentric circles. The area of
/// each circle is proportional to its value. Negative values are ignored.
/// Values are plotted in decreasing order. The size of the outer circle is fixed and
/// represents the largest value.
Class %ZEN.SVGComponent.bullseyeChart Extends chart [ Deprecated, System = 3 ]
{

/// Scaling factor used to compute size of the main circle within the chart.<br/>
/// The default scaling value is 1.0. A value larger than 1.0 makes the circle
/// bigger relative to the chart's plot area; a value smaller than 1.0 makes the
/// circle smaller.
Property pieScale As %ZEN.Datatype.float [ InitialExpression = 1.0 ];

/// Indicates if the labels should include a value, and if so, which value to display.
Property labelValue As %ZEN.Datatype.string(VALUELIST = ",none,value,pctOfTotal,pctOfMax") [ InitialExpression = "pctOfMax" ];

XData SVGStyle
{
}

/// Indicates that this chart has no axes and associated grids
ClientMethod hasAxes() [ Language = javascript ]
{
}

/// Do not show 3-D plot area.
ClientMethod is3D() [ Language = javascript ]
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
ClientMethod renderSeries(group) [ Language = javascript ]
{
}

/// Indicates that this chart supports "show multiples" mode.
ClientMethod hasMultiples() [ Language = javascript ]
{
}

/// Return default style for slice element.
ClientMethod getChartElementStyle(series, item) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Return an array of related svg objects for a specified data element (if any).
/// (such as the edges of a 3d rendering).
ClientMethod getChartRelatedElements(series, item) [ Language = javascript ]
{
}

ClientMethod getLegendRectStyle(item) [ Language = javascript ]
{
}

ClientMethod getRelatedElementStyle(series, item) [ Language = javascript ]
{
}

ClientMethod getLegendsCount(legends) [ Language = javascript ]
{
}

ClientMethod getSeriesNamesSize() [ Language = javascript ]
{
}

}
