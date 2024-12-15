/// This is an SVG <class>chart</class> component that displays a "bullseye" chart.<br>
/// A bullseye chart displays a series of values as a set of concentric circles. The area of
/// each circle is proportional to its value. Negative values are ignored.
/// Values are plotted in decreasing order. The size of the outer circle is fixed and
/// represents the largest value.
Class %ZEN.Report.Display.COSChart.cbullseyeChart Extends %ZEN.Report.Display.COSChart.cchart [ Deprecated ]
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
Method hasAxes()
{
}

/// Do not show 3-D plot area.
Method is3D()
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
Method renderSeries(group)
{
}

/// Indicates that this chart supports "show multiples" mode.
Method hasMultiples()
{
}

/// Return default style for slice element.
Method getChartElementStyle(series, item)
{
}

/// Return an array of related svg objects for a specified data element (if any).
/// (such as the edges of a 3d rendering).
ClientMethod getChartRelatedElements(series, item) [ Language = javascript ]
{
}

Method getLegendRectStyle(item)
{
}

Method getLegendsCount(legends)
{
}

Method getSeriesNamesSize()
{
}

}
