Class %ZEN.Report.Display.COSChart.cbarChart Extends cchart [ Deprecated, LegacyInstanceContext, System = 4 ]
{

/// This is an SVG <class>chart</class> component that displays a bar chart.<br>
/// This chart displays one or more data series as rectangular bars whose
/// size is proportional to the data value.<br>
/// If there are multiple data series, the bars are plotted either side-by-side
/// or stacked, as specified by the <property>chartStacked</property> property.<br>
/// You can view data as a set of horizontal columns by setting the <property>chartPivot</property> property.<br>
/// Note: the <property>plotToEdge</property> property is always
/// treated as false for bar charts.
/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 0;

/// Default appearance of this component.
Parameter DEFAULTAPPEARANCE = "2D";

/// If true, this is a <i>stacked</i> bar chart. That is,
/// data series are plotted on top of one another.<br>
/// If false, then data series are plotted side-by-side.<br>
Property chartStacked As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

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

/// Return the type (how a series should be displayed) for the given data series (0-based).
/// Overridden in combo chart.
Method getSeriesType(series)
{
}

/// Indicates that this chart supports "show multiples" mode.
Method hasMultiples()
{
}

/// Plot a set of target lines based on the given data series.
Method plotTargetForSeries(group, sno, data)
{
}

}
