/// This utility class supplies the methods needed to control a chart using a navigator component.
Class %ZEN.Auxiliary.ChartContent [ Abstract, Deprecated, System = 3 ]
{

/// Implementation of the getContentForLevel method for charts.
ClientMethod chartGetContentForLevel(navigator, chart, level, key, value) [ Language = javascript ]
{
}

/// Implementation of the dataArrange method for charts.
ClientMethod chartDataArrange(navigator, chart, key, swap, final) [ Language = javascript ]
{
}

/// Implementation of the dataChange method for charts.
ClientMethod chartDataChange(navigator, svg, chart, key, value, final) [ Language = javascript ]
{
}

/// Parse a "css" length into value and units.
ClientMethod chartParseLength(length, info) [ Language = javascript ]
{
}

/// Take a value and units (auto,%,px) and return a css length.
ClientMethod chartCreateLength(value, units) [ Language = javascript ]
{
}

/// Split apart a list of color values.
ClientMethod chartParseColorList(colors) [ Language = javascript ]
{
}

/// Set the type of the displayed chart.
ClientMethod chartSetChartType(svg, chart, type) [ Language = javascript ]
{
}

/// Button clicked in navigator header.
ClientMethod chartHeaderButtonClick(navigator, chart, key) [ Language = javascript ]
{
}

/// Button clicked in navigator close button.
ClientMethod chartCloseButtonClick(navigator, chart, key) [ Language = javascript ]
{
}

}
