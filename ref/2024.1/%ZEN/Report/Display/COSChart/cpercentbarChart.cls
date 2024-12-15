Class %ZEN.Report.Display.COSChart.cpercentbarChart Extends cchart [ Deprecated, System = 4 ]
{

/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 0;

/// Default appearance of this component.
Parameter DEFAULTAPPEARANCE = "3D";

/// If true, pivot this chart: display categories vertically
/// and values horizontally.
Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property %edgeArray As list Of node(XMLPROJECTION = "none");

Property %lastValueLabel As list Of node(XMLPROJECTION = "none");

XData SVGStyle
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
/// This includes the logic for display combo charts as it is shared with
/// its subclass.
Method renderSeries(group)
{
}

/// Return default style for a bar element.
Method getChartElementStyle(series, item)
{
}

/// Return the type of x axis (category or value) used by
/// this chart.
Method getXAxisType()
{
}

/// Return the type of y axis (category or value) used by
/// this chart.
Method getYAxisType()
{
}

/// This method returns true if data series should be summed
/// when calculating data range for the chart.
Method useSumForRange()
{
}

/// This method returns true if data series is from a percentage bar chart
/// when calculating data range for the chart.
Method usePercentForRange()
{
}

/// Return the type (how a series should be displayed) for the given data series (0-based).
/// Overridden in combo chart.
Method getSeriesType(series)
{
}

}
