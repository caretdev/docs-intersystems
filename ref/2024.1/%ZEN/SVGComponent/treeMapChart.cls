/// This is an SVG <class>chart</class> component that displays a tree map.<br>
/// A tree map displays a series of values as a set of rectangles. The area of
/// each rectangle is proportional to its value. Negative values are ignored.
Class %ZEN.SVGComponent.treeMapChart Extends chart [ Deprecated, System = 3 ]
{

/// If true, percentage values (rounded to 2 decimal places integer) are displayed as
/// part of the label for each box.
Property showPercentage As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// ongetColorScaleData event handler:
/// This event handler, if defined, is called by the chart to compute the color scale
/// for a given data item. It should match the format of <method>ongetData</method>,
/// returning corresponding color scale values for each data point returned by
/// <method>ongetData</method>. For example, to scale the colors of each data point
/// according to the "value" of that data point itself, set this property to the
/// same event handler as <method>ongetData</method>.
/// The scaled colors will be using the first color defined in
/// <property>seriesColorScheme</property>, optionally overridden by
/// <property>seriesColors</property>.
Property ongetColorScaleData As %ZEN.Datatype.eventHandler;

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

/// Plot map items onto the chart.
ClientMethod plotItems(group, dataItems, width, height, x, y, qCount, seriesNumber) [ Language = javascript ]
{
}

/// Render one item in the chart.
ClientMethod plotOneBox(group, seriesNo, itemNo, x, y, width, height, value) [ Language = javascript ]
{
}

/// Indicates that this chart supports "show multiples" mode.
ClientMethod hasMultiples() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Return an array of labels to display within the Legend box.<br>
/// Override to get appropriate labels for TreeMap Chart.
ClientMethod getLegendLabels() [ Language = javascript ]
{
}

/// Return default style for slice element.
ClientMethod getChartElementStyle(series, item) [ Language = javascript ]
{
}

ClientMethod acquireData() [ Internal, Language = javascript ]
{
}

/// Return the CSS color that should be used for the given series.
ClientMethod getSeriesColor(index, series, itemNo) [ Language = javascript ]
{
}

/// Returns a 3-element array containing the RGB values for the string input.
/// Supporte inputs:
/// 		- RGB format: fe 'rgb(123,45,67)' => { 123, 45, 67 }
/// 		- HEX format, with or without leading #: fe '#ff0000' => { 255, 0, 0 }
/// 		- predefined CSS colors: fe 'white' => { 255, 255, 255 }
/// Throws a simple string error message if unsupported input is being supplied (such as "url(#glow-red)")
ClientMethod convertToRGB(string) [ Language = javascript ]
{
}

/// Based on the supplied background color, return an appropriately contrasting foreground
/// color (for text labels). Currently, returns either black or white based on background
/// brightness
ClientMethod getFGColor(background) [ Language = javascript ]
{
}

ClientMethod getToolTipInfo(series, item, captions, values) [ Internal, Language = javascript ]
{
}

}
