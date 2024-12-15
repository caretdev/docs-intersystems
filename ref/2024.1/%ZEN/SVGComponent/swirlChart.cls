Class %ZEN.SVGComponent.swirlChart Extends %ZEN.SVGComponent.chart [ Deprecated, System = 3 ]
{

/// Whether or not to 'invert' the swirl. In an inverted swirl, the labels are on the outside
/// and the slices are lines rather than real surfaces.
/// <br>Note, that the invert property is only active when labels are visible (labelsVisible=true)
Property invert As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property separateSeriesScale As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// space between first slice and last slice in degrees
Property gap As %ZEN.Datatype.integer(MAXVAL = 135, MINVAL = 0) [ InitialExpression = 30 ];

/// when drawing start, draw slices and labels in an animation or just show finished product
Property animate As %ZEN.Datatype.string(VALUELIST = ",none,auto,manual") [ InitialExpression = "auto" ];

/// Overriding default value: now FALSE
Property legendVisible As %ZEN.Datatype.string(VALUELIST = ",auto,false,true") [ InitialExpression = "false" ];

/// plotBy - items - this is default, it results in slices that are colored by items and a legend that is organized by labels on the slices
/// <br>plotBy - series - it results in slices where slices of the same series are the same color, and legend shows labels for each series (not labels on the slices)
Property plotBy As %ZEN.Datatype.string(VALUELIST = ",items,series") [ InitialExpression = "items" ];

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

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Indicates that this chart supports "show multiples" mode.
ClientMethod hasMultiples() [ Language = javascript ]
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
ClientMethod renderSeries(group) [ Language = javascript ]
{
}

ClientMethod getChartElementStyle(series, item) [ Language = javascript ]
{
}

ClientMethod getYLabelText(val, yAxisNo, base) [ Language = javascript ]
{
}

ClientMethod setAnimation(label, steps, from, to, center) [ Language = javascript ]
{
}

ClientMethod getLegendsCount(legends) [ Language = javascript ]
{
}

ClientMethod getSeriesNamesSize() [ Language = javascript ]
{
}

/// Return an array of labels to display within the Legend box.<br/>
/// Default implementation is to return a list of series names.
ClientMethod getLegendLabels() [ Language = javascript ]
{
}

}
