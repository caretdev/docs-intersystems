Class %ZEN.SVGComponent.xyFitChart Extends %ZEN.SVGComponent.xyChart [ Deprecated, System = 3 ]
{

Property hasFit As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property X0Min As %ZEN.Datatype.float;

Property X0Max As %ZEN.Datatype.float;

/// Return the number of data series for this chart.
ClientMethod getSeriesCount() [ Language = javascript ]
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
ClientMethod renderSeries(group) [ Language = javascript ]
{
}

ClientMethod renderPoints(group) [ Language = javascript ]
{
}

ClientMethod renderLine(group) [ Language = javascript ]
{
}

}
