Class %ZEN.Report.Display.COSChart.cdiffChart Extends cchart [ Deprecated, System = 4 ]
{

/// This is an SVG <class>chart</class> component that displays a difference chart.<br>
/// This is a specialized type of line chart that
/// displays the difference between a reference data series
/// (the first data series) and an actual data series
/// (the second data series).
/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 1;

/// Optional: default style applied to the reference line elements used for plotting
/// data by this chart.
Property refLineStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "stroke-dasharray: 1,1;" ];

Property seriesYAxes As %ZEN.Datatype.csv(XMLPROJECTION = "none");

XData SVGStyle
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
Method renderSeries(group)
{
}

/// This method returns true if data series should be summed
/// when calculating data range for the chart.
Method useSumForRange()
{
}

}