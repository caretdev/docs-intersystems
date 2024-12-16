Class %ZEN.Report.Display.COSChart.clineChart Extends cchart [ Deprecated, System = 4 ]
{

/// This is an SVG <class>chart</class> component that displays a line chart.<br>
/// This chart displays one or more data series as a set of lines.<br>
/// If there are multiple data series, the lines are either superimposed or
/// or stacked atop one another, as specified by the <property>chartStacked</property> property.<br>
/// You can use the <property>chartFilled</property> property to specify that
/// the area under the lines should be filled, turning this into an area chart.<br>
/// You can view pivot the chart using the <property>chartPivot</property> property.<br>
/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 1;

/// Specifies whether the area under the line is filled (as
/// in an area chart) or not filled (as in a line chart).
Property chartFilled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, this is a <i>stacked</i> line chart. That is,
/// data series are plotted above one another.<br>
/// Note that negative values are ignored in stacked charts.
Property chartStacked As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, pivot this chart: display categories vertically
/// and values horizontally.
Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

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

/// Test if a time-based x axis should be used.
/// This is overridden in subclasses.
Method isTimeBased()
{
}

/// Return default style for a line element.
Method getChartElementStyle(series, item)
{
}

/// Indicates that this chart supports "show multiples" mode.
Method hasMultiples()
{
}

}