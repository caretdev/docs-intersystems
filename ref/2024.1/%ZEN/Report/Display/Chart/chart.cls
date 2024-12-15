Class %ZEN.Report.Display.Chart.chart Extends (%ZEN.Report.Display.childrenNode, %ZEN.Report.Display.tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// Default value for the plotToEdge property.
Parameter DEFAULTPLOTTOEDGE As BOOLEAN = 1;

/// Default value for the markersVisible property.
Parameter DEFAULTMARKERSVISIBLE As BOOLEAN = 0;

/// Do not worry about preserving the aspect ratio.
Parameter DEFAULTASPECT = "none";

/// Default viewBoxWidth of this component.
/// This is set to 100 to provide a fixed coordinate system for meters.
Parameter DEFAULTVIEWBOXWIDTH = 100;

/// Default viewBoxHeight of this component.
/// This is set to 100 to provide a fixed coordinate system for meters.
Parameter DEFAULTVIEWBOXHEIGHT = 100;

/// Optional: style used for chart background panel.
Property backgroundStyle As %ZEN.Datatype.style;

/// Optional: style used for chart plot area panel.
Property plotAreaStyle As %ZEN.Datatype.style;

/// Title to display for chart.
Property title As %ZEN.Datatype.caption;

/// Optional: style used for title text.
Property titleStyle As %ZEN.Datatype.style;

/// If this chart has a title, x-position (within the chart coordinate space) of the title.
Property titleX As %ZEN.Datatype.float [ InitialExpression = 50 ];

/// If this chart has a legend, y-position (within the chart coordinate space) of the title.
Property titleY As %ZEN.Datatype.float [ InitialExpression = 5 ];

/// Comma-delimited list of fields to acquire data from. If <property>dataGroup</property>
/// is provided, only the first data field is used.
Property dataFields As %ZEN.Datatype.csv;

/// Number of data series to display on this chart.<br>
/// If "", then this is computed automatically from the chart's data source.
Property seriesCount As %ZEN.Datatype.string;

/// Number of items within each data series to display on this chart.<br>
/// If "", then this is computed automatically from the chart's data source.
Property seriesSize As %ZEN.Datatype.string;

/// Comma-delimited list of CSS color values used for data series. The colors can
/// be acquired dynamically by using the form "!fieldname".
Property seriesColors As %ZEN.Datatype.csv [ InitialExpression = "blue,red,green,yellow,orange,plum,purple" ];

/// Comma-delimited list of names used to label each data series in the legend box.  The
/// series names can be acquired dynamically by beginning them with a "!".  If
/// <property>seriesGroup</property> is provided, only the first series name field is
/// considered.
Property seriesNames As %ZEN.Datatype.csv;

/// Specifies the group the group that corresponds to the list of series for the chart.
Property seriesGroup As %ZEN.Datatype.string;

/// Specifies the group the group that corresponds to the data elements for the chart.
Property dataGroup As %ZEN.Datatype.string;

/// Comma-delimited list of marker shapes used for data series markers.
/// Possible values are 'up','down','square','circle'.<br>
/// This only applies to charts that support markers.
Property markerShapes As %ZEN.Datatype.csv [ InitialExpression = "circle,up,down,square" ];

/// Scaling applied to chart markers:
/// A value of 1.0 (or '') will display markers with their default size.
/// This only applies to charts that support markers.
Property markerScale As %ZEN.Datatype.float [ InitialExpression = 1 ];

/// Optional: default style applied to all grid line elements for this chart.<br>
/// If defined, this style overrides any styles define in the CSS style
/// definition for the page, but is in turn overridden by any styles defined
/// by a specific axis element.
Property gridStyle As %ZEN.Datatype.style;

/// Height of the chart within the report.
Property height As %ZEN.Datatype.length;

/// Optional: default style applied to all grid label elements for this chart.
/// If defined, this style overrides any styles define in the CSS style
/// definition for the page, but is in turn overridden by any styles defined
/// by a specific axis element.
Property labelStyle As %ZEN.Datatype.style;

/// Optional: default style applied to axis titles for this chart.<br/>
/// This is applied <em>in addition</em> to the style supplied by <property>labelStyle</property>.
Property axisTitleStyle As %ZEN.Datatype.svgStyle;

/// If true, auto-position the legend
Property legendAutoPosition As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, display a legend for this chart.
Property legendVisible As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If this chart has a legend, x-position (within the chart coordinate space) of legend box.
Property legendX As %ZEN.Datatype.float [ InitialExpression = 0 ];

/// If this chart has a legend, y-position (within the chart coordinate space) of legend box.
Property legendY As %ZEN.Datatype.float [ InitialExpression = 0 ];

/// If this chart has a legend, width (within the chart coordinate space) of legend box.
/// If not specified a default width will be used.
Property legendWidth As %ZEN.Datatype.float;

/// If this chart has a legend, height (within the chart coordinate space) of legend box.
/// If not specified a default height (based on number of data series) will be used.
Property legendHeight As %ZEN.Datatype.float;

/// Optional: style used for background of the legend box.
Property legendStyle As %ZEN.Datatype.style;

/// Optional: style used for text within the legend box.
Property legendLabelStyle As %ZEN.Datatype.style;

/// Margin (within the chart coordinate space) from top edge of chart to top edge of grid (plot area).
Property marginTop As %ZEN.Datatype.float [ InitialExpression = 6 ];

/// Margin (within the chart coordinate space) from bottom edge of chart to bottom edge of grid (plot area).
Property marginBottom As %ZEN.Datatype.float [ InitialExpression = 10 ];

/// Margin (within the chart coordinate space) from left edge of chart to left edge of grid (plot area).
Property marginLeft As %ZEN.Datatype.float [ InitialExpression = 10 ];

/// Margin (within the chart coordinate space) from right edge of chart to right edge of grid (plot area).
Property marginRight As %ZEN.Datatype.float [ InitialExpression = 2 ];

/// Specifies whether markers should be displayed for the data
/// points within the line chart.<br>
/// This only appies to charts that display markers.
Property markersVisible As %ZEN.Datatype.boolean [ InitialExpression = {..#DEFAULTMARKERSVISIBLE} ];

/// Specifies how values should be plotted along a category axis.
/// If true, plot the first and last values on the edges of the plotArea
/// (as in a line chart). If false, plot values in the centers of each
/// unit (as in a bar chart).<br>
/// This is specified by subclasses.
Property plotToEdge As %ZEN.Datatype.boolean [ InitialExpression = {..#DEFAULTPLOTTOEDGE} ];

/// If defined, then a colored band (specified by <property>bandUpperStyle</property>)
/// is displayed on the plot area covering the range greater than this value;
Property bandUpper As %ZEN.Datatype.float;

/// If defined, then a colored band (specified by <property>bandLowerStyle</property>)
/// is displayed on the plot area covering the range lower than this value;
Property bandLower As %ZEN.Datatype.float;

/// Optional: style used for upper band on plot area.
Property bandUpperStyle As %ZEN.Datatype.style;

/// Optional: style used for upper band on plot area.
Property bandLowerStyle As %ZEN.Datatype.style;

/// ongetLabelX event handler:<br>
/// This event handler, if defined, is called by the chart
/// to get the text for a given label on the x axis.<br>
Property ongetLabelX As %ZEN.Datatype.eventHandler;

/// ongetLabelY event handler:<br>
/// This event handler, if defined, is called by the chart
/// to get the text for a given label on the y axis.<br>
Property ongetLabelY As %ZEN.Datatype.eventHandler;

/// Optional: default style applied to svg elements used for plotting
/// data by this chart (such as the line in a line chart).
Property plotStyle As %ZEN.Datatype.style;

/// Optional: style used for series markers.
Property markerStyle As %ZEN.Datatype.style;

/// Typical children property for a <class>childrenNode</class>,
/// but every child must be an <class>axis</class>.
Property children As list Of %ZEN.Report.Display.Chart.axis(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

/// Internal property used to keep track of plot information.
Property plot As %ZEN.Report.Display.Chart.plot(XMLPROJECTION = "none");

/// Internal property that references this charts <class>xaxis</class> object.
Property xAxis As %ZEN.Report.Display.Chart.axis(XMLPROJECTION = "none");

/// Internal property that references this charts <class>yaxis</class> object.
Property yAxis As %ZEN.Report.Display.Chart.axis(XMLPROJECTION = "none");

/// If true, display axis labels for this chart (or slice labels in the
/// case of a pie chart).
Property labelsVisible As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Placeholder for custom SVG styling
XData SVGStyle
{
}

/// Default styling for charts.  To add additional style, use the
/// <xdata>SVGStyle</xdata> XData block
XData SVGStyleDefault
{
}

/// Default styling for charts.  To add additional style, use the
/// <xdata>SVGStyle</xdata> XData block
XData SVGStyleDefaultNoHTML5
{
}

Method %DrawToHTML(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

Method render(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, labelValues As %String)
{
}

/// Calc Legend Area
Method calcLegendArea(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

/// Draw the legend for the chart.
Method renderLegend(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, labelValues As %String)
{
}

/// Return the CSS color that should be used for the given series.
Method getSeriesColor(series As %Integer) As %String
{
}

/// Return the number of colors provided.
Method getColorCount() As %Integer
{
}

/// Draw the title for the chart.
Method renderTitle(ByRef context As %String, ByRef XSL As %GlobalCharacterStream) As %Status
{
}

/// Draw the data series for this chart.
/// This method renders the container for the data series and
/// then invokes a sub-class specific <method>renderSeries</method> method.
Method renderSeriesGroup(ByRef context As %String, XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

/// Draw the data labels for this chart.
/// This method renders the container for the data series and
/// then invokes a sub-class specific <method>renderSeries</method> method.
Method renderSeriesGroupLabels(ByRef context As %String, XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

/// Draw data series for this chart.
/// This is implemented by subclasses.
/// <var>group</var> is the SVG container for the chart components.
Method renderSeries(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

/// Draw data label series for this chart.
/// This is implemented by subclasses.
/// <var>group</var> is the SVG container for the chart components.
Method renderSeriesLabels(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream)
{
}

/// Return the x-axis definition for this chart.
Method getXAxis() As %ZEN.Report.Display.Chart.xaxis
{
}

/// Return the y-axis definition for this chart.
Method getYAxis() As %ZEN.Report.Display.Chart.yaxis
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

/// Indicates that this chart has axes and associated grids
/// A subclass may override this to turn off axis display.
Method hasAxes()
{
}

/// This method returns true if data series should be summed
/// when calculating data range for the chart.
/// Typically a chart will return true if it is in "stacked" mode.
Method useSumForRange()
{
}

/// Draw the plot area of the chart.
Method renderPlotArea(context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream)
{
}

/// Draw the upper/lower bands for the chart.
Method renderBands(context As %String, XSL As %GlobalCharacterStream)
{
}

/// Draw the labels for the x axis.
Method renderXLabels(context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream)
{
}

/// Draw the labels for the y axis.
Method renderYLabels(context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream)
{
}

/// Draw the x and y axes and grid lines.
Method renderAxes(context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream)
{
}

Method writeWithParams(ByRef XSL As %GlobalCharacterStream)
{
}

Method writeWithParamsNoBase(ByRef XSL As %GlobalCharacterStream)
{
}

Method writeLoadParams(ByRef XSL As %GlobalCharacterStream)
{
}

Method writeLoadParamsNoBase(ByRef XSL As %GlobalCharacterStream)
{
}

ClassMethod OnSVGAttribution(ByRef context As %String)
{
}

Method SvgPrefix()
{
}

}
