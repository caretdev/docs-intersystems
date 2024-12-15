/// This is an SVG <class>chart</class> component that displays an X-Y chart.<br/>
/// This chart plots two or more series of data as a series
/// of x,y points on the chart. The first data series provides
/// the x values, the second provides the correlated y values.<br/>
/// Additional data series are plotted as y values
/// correlated to the x values provided by the first series.<br/>
/// The first series name is used as the name of the first series containing
/// y-values.<br/>
/// You can supply more than one set of x values using the <property>independentXSeries</property>
/// property.
Class %ZEN.SVGComponent.xyChart Extends chart [ Deprecated, System = 3 ]
{

/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 1;

/// Default value for the markersVisible property.
Parameter DEFAULTMARKERSVISIBLE = 1;

/// Optional: if false (the default) the first data series is used to supply
/// x values for the chart and all other data series provide y values.<br/>
/// If false, then the chart will display multiple x series. In this case, the first
/// data series provides the first set of x values, the second
/// data provides the first set of y values, the third data series provides the second
/// set of x values, and so on.
Property independentXSeries As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, pivot this chart: display categories vertically
/// and values horizontally.
Property chartPivot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property seriesYAxes As %ZEN.Datatype.csv(XMLPROJECTION = "none");

Property tag As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "xyChart", Internal ];

XData SVGStyle
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

/// Internal method: return (as an object) the minimum
/// and maximum data values for this chart. This is used
/// for ranges that are automatically calculated.
ClientMethod findDataRange() [ Language = javascript ]
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
ClientMethod renderSeries(group) [ Language = javascript ]
{
}

/// Return an array of labels to display within the Legend box.<br>
/// For xy chart we have to skip the first series, as it contains
/// x-values, and not a logical data series.
ClientMethod getLegendLabels() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Return an object containing tooltip information for the given element.
ClientMethod getToolTipInfo(series, item, captions, values) [ Internal, Language = javascript ]
{
}

}
