/// This is an SVG <class>chart</class> component that displays a bubble chart.<br/>
/// This chart expects at least 2 data series, the first supplying x values and the second
/// supplying y values.<br/>
/// Additional series are interpreted as:<br/>
/// Series 2: radius (radius of each bubble).<br/>
/// Series 3: colors (items are grouped into buckets by value).<br/>
/// Series 4: opacity (opacity of items from 0 to 1 -- values are not normalized).<br/>
Class %ZEN.Report.Display.COSChart.cbubbleChart Extends %ZEN.Report.Display.COSChart.cchart [ Deprecated, System = 4 ]
{

/// Default value for plotToEdge property.
Parameter DEFAULTPLOTTOEDGE = 1;

/// Default value for the markersVisible property.
Parameter DEFAULTMARKERSVISIBLE = 0;

/// Default radius (in logical units) for bubbles. If there is a radius series, its
/// values are scaled and multiplied by this value.
Property radius As %ZEN.Datatype.float [ InitialExpression = 3 ];

/// Default opacity (from 0 to 1) for bubbles.  If there is a opacity series, its
/// values are scaled and multiplied by this value.
Property opacity As %ZEN.Datatype.float [ InitialExpression = 0.75 ];

/// Center value along x-axis. Used to draw background "quadrants".
Property xCenterValue As %ZEN.Datatype.float;

/// Center value along y-axis. Used to draw background "quadrants".
Property yCenterValue As %ZEN.Datatype.float;

/// If true, then draw background "quadrants".
Property showQuadrant As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, then draw a computed linear regression line.
Property showRegression As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property %hist As %Float [ MultiDimensional ];

Property %valueLabels As %List [ MultiDimensional ];

Property tag As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "bubbleChart", Internal ];

/// Optional: style applied to the upper right quadrant background.
Property upperRightStyle As %ZEN.Datatype.svgStyle;

/// Optional: style applied to the lower left quadrant background.
Property lowerLeftStyle As %ZEN.Datatype.svgStyle;

XData SVGStyle
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

/// Internal method: return (as an object) the minimum
/// and maximum data values for this chart. This is used
/// for ranges that are automatically calculated.
Method findDataRange()
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
Method renderSeries(group)
{
}

/// Return an array of labels to display within the Legend box.<br>
/// For xy chart we have to skip the first series, as it contains
/// x-values, and not a logical data series.
Method getLegendLabels() As %List
{
}

/// Draw the upper/lower bands for the chart.
/// Override standard "bands" and replace with "quadrant" boxes.
Method renderBands()
{
}

/// Override and use seriesNames only.
Method getSeriesNames() As %List
{
}

/// Return the x axis title.
Method getXAxisTitle()
{
}

/// Return the y axis title.
Method getYAxisTitle()
{
}

}