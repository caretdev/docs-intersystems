/// This is an SVG <class>chart</class> component that displays a tree map.<br>
/// A tree map displays a series of values as a set of rectangles. The area of
/// each rectangle is proportional to its value. Negative values are ignored.
Class %ZEN.Report.Display.COSChart.ctreeMapChart Extends cchart [ Deprecated, System = 4 ]
{

/// If true, percentage values (rounded to 2 decimal places integer) are displayed as
/// part of the label for each box.
Property showPercentage As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property %totalValue As %Double(XMLPROJECTION = "none");

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

/// Plot map items onto the chart.
Method plotItems(group, dataItems, width, height, x, y, qCount)
{
}

/// Render one item in the chart.
Method plotOneBox(group, seriesNo, itemNo, x, y, width, height, value)
{
}

/// Indicates that this chart supports "show multiples" mode.
Method hasMultiples()
{
}

/// Return an array of labels to display within the Legend box.<br>
/// Override to get appropriate labels for TreeMap Chart.
Method getLegendLabels()
{
}

}
