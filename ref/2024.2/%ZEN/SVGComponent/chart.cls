/// This is the abstract base class from which all SVG chart components are derived.<br/>
/// A chart provides a base on which to display a specific type
/// of chart (such as a <class>barChart</class>, <class>lineChart</class>, or <class>pieChart</class>).<br/>
/// This base class defines the data, grid (axes and scales), styles, and legend
/// used by charts.<br/>
/// All charts are plotted onto a virtual coordinate space that
/// measures 100 units by 100 units.<br/>
/// You can adjust the visual aspects of a chart by setting the various properties of this
/// class (plus any additional properties added by the specific chart subclass).<br/>
/// You can adjust the x and y axis settings (such as scaling and range) via the
/// <property>xAxis</property> and <property>yAxis</property> properties (which are objects of the type <class>%ZEN.Auxiliary.axis</class>).
Class %ZEN.SVGComponent.chart Extends (svgComponent, %ZEN.Component.dataView) [ Abstract, Deprecated, System = 3 ]
{

/// Parameter SYSMODULE = "chart";
/// Default value for the plotToEdge property.
Parameter DEFAULTPLOTTOEDGE As BOOLEAN = 1;

/// Default value for the markersVisible property.
Parameter DEFAULTMARKERSVISIBLE As BOOLEAN = 0;

/// Default value for the valueLabelsVisible property.
Parameter DEFAULTVALUELABELSVISIBLE As BOOLEAN = 0;

/// Do not worry about preserving the aspect ratio.
Parameter DEFAULTASPECT = "none";

/// Default viewBoxWidth of this component.
/// This is set to 100 to provide a fixed coordinate system for meters.
Parameter DEFAULTVIEWBOXWIDTH;

/// Default viewBoxHeight of this component.
/// This is set to 100 to provide a fixed coordinate system for meters.
Parameter DEFAULTVIEWBOXHEIGHT;

/// Default appearance of this component.
Parameter DEFAULTAPPEARANCE = "2D";

/// Default setting for autoscaling text as chart resizes
Parameter DEFAULTAUTOSCALETEXT As BOOLEAN = 1;

/// x axis specification for this chart.
Property xAxis As %ZEN.Auxiliary.axis(ZENSETTING = 0);

/// Deprecated. y axis specifications for this chart.
/// This is replaced by yAxisList. This property is kept here so that
/// applications that set yAxis directly will still function.
Property yAxis As %ZEN.Auxiliary.axis(XMLPROJECTION = "none", ZENSETTING = 0);

/// List of y axis specifications for this chart.
Property yAxisList As list Of %ZEN.Auxiliary.axis(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// Optional: style used for chart background panel.
Property backgroundStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for chart plot area panel.
Property plotAreaStyle As %ZEN.Datatype.svgStyle;

/// Optional: for charts with a 3D look, this style is applied
/// to the edges on the left and bottom.
Property plotEdgeStyle As %ZEN.Datatype.svgStyle;

/// Title to display for chart.
Property title As %ZEN.Datatype.caption;

/// Subtitle to display for chart.
Property subtitle As %ZEN.Datatype.caption;

/// Title to display for legend box.
Property legendTitle As %ZEN.Datatype.caption;

/// Optional: alignment for title and subtitle.
Property titleAlign As %ZEN.Datatype.string(VALUELIST = ",center,left,right") [ InitialExpression = "center" ];

/// Optional: style used for title text.
Property titleStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for subtitle text.
Property subtitleStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for box underneath title text.
Property titleBoxStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for border line inset from outer edge of chart.
Property borderStyle As %ZEN.Datatype.svgStyle;

/// Optional: if true, draw stripes over value axis grid lines.
Property stripesVisible As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional: style used for grid stripes (when enabled).
Property stripeStyle As %ZEN.Datatype.svgStyle;

/// Optional: distance (in pixels) between the background rectangle and the border.
Property borderOffset As %ZEN.Datatype.integer [ InitialExpression = 8 ];

/// Optional: radius applied to the chart's background rectangle and border.
Property borderRadius As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// If this chart has a title, x-position (within the chart coordinate space) of the title.
/// If not specified, then a default value is calculated.
Property titleX As %ZEN.Datatype.length;

/// If this chart has a title, y-position (within the chart coordinate space) of the title.
/// If not specified, then a default value is calculated.
Property titleY As %ZEN.Datatype.length;

/// Number of data series to display on this chart.
/// If "", then this is computed automatically from the chart's data source when the
/// chart is connected to a dataController.
Property seriesCount As %ZEN.Datatype.integer(MINVAL = 0);

/// Number of items within each data series to display on this chart.
/// If "", then this is computed automatically from the chart's data source when the
/// chart is connected to a dataController.
Property seriesSize As %ZEN.Datatype.integer(MINVAL = 0);

/// Comma-delimited list of CSS color values used for data series.
/// This can be set to a list of SVG fill color values, e.g.,
/// "red,green,blue" or "url(#glow-red),url(#glow-green),url(#glow-blue)".<br/>
/// The first color is used by the first data series and so on. If there are
/// more data series than colors, the colors are repeated.<br/>
/// If this is not defined the colors defined by <property>seriesColorScheme</property>
/// are used.
Property seriesColors As %ZEN.Datatype.csv;

/// Additional Comma-delimited list of CSS color values used for data series.
/// If supplied, this is merged with the colors in the seriesColors list.
/// This makes it possible to override specific colors within a chart while preserving
/// the underlying default colors.
Property seriesColorsOverride As %ZEN.Datatype.csv;

/// This is the name of a built-in color scheme used to plot
/// data series for the chart.<br/>
/// If <property>seriesColors</property> is defined, then this
/// property is ignored.
Property seriesColorScheme As %ZEN.Datatype.string(VALUELIST = ",urban,tuscan,caribbean,rustbelt,bright,glow,gray,pastel,solid") [ InitialExpression = "tuscan" ];

/// Comma-delimited list of names used to label each data series in the legend box.<br/>
/// This is a localized value (the entire list is treated as one localized string).
Property seriesNames As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// Optional. If defined then the chart will only plot the specified data series (0-based) when connected
/// to a data controller. This is used by DeepSee in some cases.
Property seriesNumber As %ZEN.Datatype.integer(MINVAL = 0);

/// Optional. If defined, specifies which y-axis should be used for each data
/// series. This is a csv-list of y-axis numbers (0-based).
/// By default, the every data series uses y-axis 0.
Property seriesYAxes As %ZEN.Datatype.csv;

/// Specifies which yAxis definition is used to drive the chart yaxis (0 based).
Property currYAxis As %ZEN.Datatype.integer(MINVAL = 0) [ InitialExpression = 0 ];

/// Comma-delimited list of marker shapes used for data series markers.
/// Possible values are 'up','down','square','circle'.<br/>
/// This only applies to charts that support markers.
Property markerShapes As %ZEN.Datatype.csv [ InitialExpression = "circle,up,down,square" ];

/// Scaling applied to chart markers:
/// A value of 1.0 (or '') will display markers with their default size.
/// This only applies to charts that support markers.
Property markerScale As %ZEN.Datatype.float [ InitialExpression = 1 ];

/// Optional: default style applied to all grid line elements for this chart.
/// If defined, this style overrides any styles define in the CSS style
/// definition for the page, but is in turn overridden by any styles defined
/// by a specific axis element.
Property gridStyle As %ZEN.Datatype.svgStyle;

/// Optional: default style applied to all grid label elements for this chart.
/// If defined, this style overrides any styles define in the CSS style
/// definition for the page, but is in turn overridden by any styles defined
/// by a specific axis element.
Property labelStyle As %ZEN.Datatype.svgStyle;

/// Maximum number of characters to display for an axis label.
Property maxLabelLen As %ZEN.Datatype.integer [ InitialExpression = 20 ];

/// Optional: default style applied to axis titles for this chart.<br/>
/// This is applied <em>in addition</em> to the style supplied by <property>labelStyle</property>.
Property axisTitleStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "opacity:0.5;" ];

/// If true, display axis labels for this chart (or slice labels in the
/// case of a pie chart).
Property labelsVisible As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, display a legend for this chart.
/// If "auto" then the legend is displayed if there is more than one data series
/// for the chart.
Property legendVisible As %ZEN.Datatype.string(VALUELIST = ",auto,false,true") [ InitialExpression = "auto" ];

/// If this chart has a legend, x-position (within the chart coordinate space) of legend box.
/// If not specified a default position will be used.
Property legendX As %ZEN.Datatype.length;

/// If this chart has a legend, y-position (within the chart coordinate space) of legend box.
/// If not specified a default position will be used.
Property legendY As %ZEN.Datatype.length;

/// If this chart has a legend, width (within the chart coordinate space) of legend box.
/// If not specified a default width will be used.
Property legendWidth As %ZEN.Datatype.length;

/// If this chart has a legend, height (within the chart coordinate space) of legend box.
/// If not specified a default height (based on number of data series) will be used.
Property legendHeight As %ZEN.Datatype.length;

/// Optional: style used for background of the legend box.
Property legendStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for text within the legend box.
Property legendLabelStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for rectangle indicating the current legend within the legend box.
Property legendRectStyle As %ZEN.Datatype.svgStyle;

/// Margin (within the chart coordinate space) from top edge of chart to top edge of grid (plot area).
/// If not specified, then this value will be automatically calculated.
Property marginTop As %ZEN.Datatype.length;

/// Margin (within the chart coordinate space) from bottom edge of chart to bottom edge of grid (plot area).
/// If not specified, then this value will be automatically calculated.
Property marginBottom As %ZEN.Datatype.length;

/// Margin (within the chart coordinate space) from left edge of chart to left edge of grid (plot area).
/// If not specified, then this width will be automatically calculated.
Property marginLeft As %ZEN.Datatype.length;

/// Margin (within the chart coordinate space) from right edge of chart to right edge of grid (plot area).
/// If not specified, then this width will be automatically calculated.
Property marginRight As %ZEN.Datatype.length;

/// Specifies whether markers should be displayed for the data
/// points within the chart.<br/>
/// This only applies to charts that display markers.
Property markersVisible As %ZEN.Datatype.boolean [ InitialExpression = {..#DEFAULTMARKERSVISIBLE} ];

/// Specifies whether values should be displayed for elements within the chart.
/// This only applies to charts that display element values (such as bar charts).
Property valueLabelsVisible As %ZEN.Datatype.boolean [ InitialExpression = {..#DEFAULTVALUELABELSVISIBLE} ];

/// Optional: style used for value labels.
/// This only applies to charts that display element values (such as bar charts).
Property valueLabelStyle As %ZEN.Datatype.svgStyle;

/// Optional: numeric format applied to value labels.
/// This only applies to charts that display element values (such as bar charts).
Property valueLabelFormat As %ZEN.Datatype.string;

/// Optional: style used for boxes around value labels.
/// This only applies to charts that display element values (such as bar charts).
Property valueBoxStyle As %ZEN.Datatype.svgStyle;

/// Specifies how the text elements of a chart should be handled when a chart is
/// resized.  If True, the text scales in proportion to the chart itself and all
/// requested labels are rendered regardless of legibility.  If false, the size of
/// the text elements is fixed with respect to the page and some lables may be
/// omitted to avoid visual overlap if insufficient space is provided to render the
/// values should the chart be scaled down beyond certain thresholds
Property autoScaleText As %ZEN.Datatype.boolean [ InitialExpression = {..#DEFAULTAUTOSCALETEXT} ];

/// Specifies how values should be plotted along a category axis.
/// If true, plot the first and last values on the edges of the plotArea
/// (as in a line chart). If false, plot values in the centers of each
/// unit (as in a bar chart).<br/>
/// This is specified by subclasses.
Property plotToEdge As %ZEN.Datatype.boolean [ InitialExpression = {..#DEFAULTPLOTTOEDGE} ];

/// If defined, then a colored band (specified by <property>bandUpperStyle</property>)
/// is displayed on the plot area covering the range greater than this value;
Property bandUpper As %ZEN.Datatype.float;

/// If defined, then a colored band (specified by <property>bandLowerStyle</property>)
/// is displayed on the plot area covering the range lower than this value;
Property bandLower As %ZEN.Datatype.float;

/// Optional: style used for upper band on plot area.
Property bandUpperStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for upper band on plot area.
Property bandLowerStyle As %ZEN.Datatype.svgStyle;

/// Optional: style applied to line drawn for x and y axes.
Property axisLineStyle As %ZEN.Datatype.svgStyle;

/// Optional: style applied to base line.
Property baseLineStyle As %ZEN.Datatype.svgStyle;

/// Controls the appearance of this chart.<br/>
/// Set this to "2D" (the default) for a standard chart appearance.<br/>
/// Setting this to "3D" will give the chart a 3-D appearance; the
/// plot area will appear to be recessed. Certain chart types, such as
/// bar charts, will display items with a 3-D look.<br/>
/// For pie charts, setting this to "3D" will display a pie chart with
/// a 3-D appearance, but will not affect the plot area.
Property appearance As %ZEN.Datatype.string(VALUELIST = ",2D,3D") [ InitialExpression = {..#DEFAULTAPPEARANCE} ];

/// Optional: if "medium", use the default font sizes specified by the CSS for the chart.
/// if "small" or "large" adjust the size of any text in the chart that does not have an explicit
/// style set (via a property).
Property textSize As %ZEN.Datatype.string(VALUELIST = ",small,medium,large") [ InitialExpression = "medium" ];

/// Optional: if true, display zoom in/out buttons (for certain chart types).
Property hasZoom As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional: If true, display chart as number of small multiple charts, one per data series.
/// This is only used by charts that support small multiples otherwise it is ignored.
Property showMultiples As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional: style used for title text within each "multiple" charts.
/// Used when <property>showMultiples</property> is enabled.
Property multipleTitleStyle As %ZEN.Datatype.svgStyle;

/// Internal property used to track which multiple is being rendered.
Property currMultiple As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// ongetData event handler:
/// This event handler, if defined, is called by the chart
/// to get an array of values to plot for a data series.
/// This provides an alternate way to provide display data for
/// a chart.<br/>
/// The event handler is passed an argument, <var>series</var>,
/// that contains the ordinal number (0-based) of the data series.
/// This event handler should return an array of numeric values for
/// the specified data series.<br/>
Property ongetData As %ZEN.Datatype.eventHandler;

/// ongetLabelX event handler:
/// This event handler, if defined, is called by the chart
/// to get the text for a given label on the x axis.<br/>
/// The event handler is passed an argument, <var>value</var>,
/// that contains the ordinal number (0-based) of the label.
Property ongetLabelX As %ZEN.Datatype.eventHandler;

/// ongetLabelY event handler:
/// This event handler, if defined, is called by the chart
/// to get the text for a given label on the y axis.<br/>
/// The event handler is passed an argument, <var>value</var>,
/// that contains the ordinal number (0-based) of the label.
Property ongetLabelY As %ZEN.Datatype.eventHandler;

/// onelementClick event handler:
/// This event handler is called by the chart
/// when the user clicks the mouse on a chart element
/// (such as a line chart marker, or bar in a bar chart).<br/>
/// The event handler is passed an argument, <var>chart</var>,
/// that is <i>this</i> chart object. You can then use the
/// <method>getSelectedItem</method> method to determine the
/// current selected element.
Property onelementClick As %ZEN.Datatype.eventHandler;

/// onrenderPlotArea event handler:
/// This event handler, if defined, is called by the chart
/// just after it displays its underlying plot area (and
/// bands) but before it display grid lines and data.
Property onrenderPlotArea As %ZEN.Datatype.eventHandler;

/// onrenderData event handler:
/// This event handler, if defined, is called by the chart
/// just after it is finished displaying grid lines and data.
/// The event handler is passed an argument, <var>chart</var>,
/// that is <i>this</i> chart object. If it also passed <var>group</var>,
/// which is the SVG group to which any new svg content should be added.
Property onrenderData As %ZEN.Datatype.eventHandler;

/// onshowTooltip event handler:
/// This event handler, if defined, is called by the chart
/// just before it displays a tool tip.
Property onshowTooltip As %ZEN.Datatype.eventHandler;

/// Optional: default style applied to svg elements used for plotting
/// data by this chart (such as the bars within a bar chart).
/// Note: lines within line charts use the <property>lineStyle</property> property.
Property plotStyle As %ZEN.Datatype.svgStyle;

/// Optional: default style applied to svg line elements within line-style charts.
Property lineStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for series markers.
Property markerStyle As %ZEN.Datatype.svgStyle;

/// Specifies whether indicator lines should be displayed for the selected item
/// within the chart.<br/>
/// This only applies to charts that display indicator lines.
Property indicatorsVisible As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional: style used for indicators.
Property indicatorStyle As %ZEN.Datatype.svgStyle;

/// ongetTimeEvents event handler:
/// This event handler, if defined, is called by the chart
/// to get an array of "time events" to display for a time chart.<br/>
Property ongetTimeEvents As %ZEN.Datatype.eventHandler;

/// Optional: style used to indicate the current selected chart element.
Property selectedItemStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "stroke:darkgreen;stroke-width:3px;" ];

/// Optional: style used to indicate unselected chart elements.
/// This is used when there is a selected element.
Property unselectedItemStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "opacity:0.5;" ];

/// Optional: style applied to zoom and scroll buttons when visible.
Property scrollButtonStyle As %ZEN.Datatype.svgStyle;

/// Series number (0-based) of currently selected chart element, if any.
Property selectedSeries As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// Item number (0-based) of currently selected chart element, if any.
Property selectedItem As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// Internal horizontal zoom factor.
/// 0 is fully zoomed out; each increase of 1 doubles the number of visible items.
Property hzZoomStep As %ZEN.Datatype.float(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0, Internal ];

/// Internal amount of horizontal scroll.
Property scrollLeft As %ZEN.Datatype.float(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0.0, Internal ];

/// Property set by things like bubble chart which don't support seriesYAxes.
Property tag As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Optional: If true, then the x-axis for this chart is a time line displaying date values
/// from <property>startTime</property> to <property>endTime</property>.
/// In this case, the series names for data are interpreted as time values (YYYY-MM-DD HH:MM:SS).
/// This setting only works in a few cases, namely non-pivotted line charts. For all other
/// cases this setting is ignored.
Property timeBased As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Earliest displayed time (as YYYY-MM-DD HH:MM:SS).
/// This is used for the x axis in a timeBased chart.
Property startTime As %ZEN.Datatype.string;

/// Latest displayed time (as YYYY-MM-DD HH:MM:SS).
/// This is used for the x axis in a timeBased chart.
Property endTime As %ZEN.Datatype.string;

/// Optional: URL of image to display within the title area.
Property titleImage As %ZEN.Datatype.uri;

/// Optional. Style for titleImage: left,top,width, and height.
Property titleImageStyle As %ZEN.Datatype.svgStyle;

/// ongetSeriesColor event handler:
/// This event handler, if defined, is called by the chart
/// to get the color for a given data series.<br/>
/// The event handler is passed an argument, <var>series</var>,
/// that contains the ordinal number (0-based) of the series.
Property ongetSeriesColor As %ZEN.Datatype.eventHandler;

/// if non-null used to set style for tool tip rectangle
Property tooltipRectStyle As %ZEN.Datatype.svgStyle;

/// Set to 1 to display a localized warning message if chart has no data
Property warnIfNoData As %ZEN.Datatype.boolean;

/// localized warning message if chart has no data
Property msgIfNoData As %ZEN.Datatype.caption [ InitialExpression = "No Data" ];

/// opacity of background rectangle for no data message
Property noDataOpacity As %ZEN.Datatype.float [ InitialExpression = "1.0" ];

/// color of background rectangle for no data message
Property noDataFill As %ZEN.Datatype.color [ InitialExpression = "red" ];

/// color of no data message
Property noDataStroke As %ZEN.Datatype.color [ InitialExpression = "white" ];

XData SVGStyle
{
}

/// Call this method to update contents of this chart.
ClientMethod updateChart() [ Language = javascript ]
{
}

/// Client-side method to render control.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Set the x Axis definition for this chart.
/// Return the old axis if present.
ClientMethod setXAxis(axis) [ Language = javascript ]
{
}

/// Set the current y Axis definition used for this chart.
/// <var>axisNo</var> is the index of the y-axis, 0-based.
ClientMethod setCurrYAxis(axisNo) [ Language = javascript ]
{
}

/// Get the current y Axis definition used for this chart.
/// <var>which</var> is "left" or "right".
ClientMethod getCurrYAxis(which) [ Language = javascript ]
{
}

/// Set the y Axis definition for this chart.
/// Return the old axis if present.
ClientMethod setYAxis(axis) [ Language = javascript ]
{
}

/// Return the x Axis definition for this chart.
ClientMethod getXAxis() [ Language = javascript ]
{
}

/// Return the y Axis definition for this chart
/// (or null if not found).
ClientMethod getYAxis(index) [ Language = javascript ]
{
}

/// Return the number of y Axis definitions for this chart.
ClientMethod getYAxisCount() [ Language = javascript ]
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

/// Return the x axis title.
ClientMethod getXAxisTitle() [ Language = javascript ]
{
}

/// Return the y axis title.
ClientMethod getYAxisTitle(which) [ Language = javascript ]
{
}

/// Indicates whether this chart should be drawn with a 3-D
/// appearance.
ClientMethod is3D() [ Language = javascript ]
{
}

/// Internal method: Set up range and other information.
ClientMethod calculateRangeValues() [ Internal, Language = javascript ]
{
}

ClientMethod initializeAxisProperties() [ Language = javascript ]
{
}

/// If the plot has axes, pre-calculate the internal values that will be used
/// to govern how those axes are rendered
ClientMethod calculateAxisConstraints() [ Language = javascript ]
{
}

/// Internal method: Find best scale units to use for given value.
ClientMethod findScaleUnits(val) [ Internal, Language = javascript ]
{
}

/// Draw the plot area of the chart.
ClientMethod renderPlotArea() [ Language = javascript ]
{
}

/// Display the NoDataMsg. If the plotAreaGroup and clipGroup objects are known in the calling context,
/// they may be passed in, otherwise the method will attempt to find them.
ClientMethod showNoDataMsg(msg, plotAreaGroup, clipGroup) [ Language = javascript ]
{
}

/// Remove the NoDataMsg from the plot area.
ClientMethod removeNoDataMsg(plotAreaGroup) [ Language = javascript ]
{
}

/// Indicates that this chart has axes and associated grids
/// A subclass may override this to turn off axis display.
ClientMethod hasAxes() [ Language = javascript ]
{
}

/// Test if a time-based x axis should be used.
/// This is overridden in subclasses.
ClientMethod isTimeBased() [ Language = javascript ]
{
}

/// Draw the x and y axes and grid lines.
ClientMethod renderAxes() [ Language = javascript ]
{
}

/// Prepare the axis group for population with axis information
ClientMethod prepareAxisGroup(idName, parentNode) [ Language = javascript ]
{
}

ClientMethod createXLabelNode(index, fontSize, style, angle, group) [ Language = javascript ]
{
}

ClientMethod calculateXAxisTitleHeight() [ Language = javascript ]
{
}

ClientMethod calculateXAxisHeight() [ Language = javascript ]
{
}

/// Draw the title section for the Y axis (if any) and
/// return the height reserved for the rendering
ClientMethod renderXAxisTitle(group) [ Language = javascript ]
{
}

/// Draw the labels for the x axis.
ClientMethod renderXLabels() [ Language = javascript ]
{
}

/// IF all went as expected, the idx array should have the indices of the labels we'd like
/// to print, the lWidth array should have the native widths of each label and maxWidth should
/// be the length of the longest label.	Now we need to print them.
/// This is the core of the vertical decimation algorithm.  Given a maximum number of label
/// to choose from an array,  pick a subset that will (hopefully) use the available
/// space effectively and keep things visually balanced.
ClientMethod pickVerticalSkips(flag, max) [ Language = javascript ]
{
}

/// Internl method to calculate how much room should be reserved
/// for the Y axis area.  This includes both the axis title and
/// the individual labels
ClientMethod calculateYAxisWidth(which) [ Language = javascript ]
{
}

/// Draw the title section for the Y axis (if any) and
/// return the width reserved for the rendering
ClientMethod renderYAxisTitle(group, which, xpos) [ Language = javascript ]
{
}

/// Draw the labels for the y axis.
ClientMethod renderYLabels(which) [ Language = javascript ]
{
}

/// Draw the data series for this chart.
/// This method renders the container for the data series and
/// then invokes a sub-class specific <method>renderSeries</method> method.
ClientMethod renderSeriesGroup() [ Language = javascript ]
{
}

/// Draw data series for this chart.
/// This is implemented by subclasses.
/// <var>group</var> is the SVG container for the chart components.
ClientMethod renderSeries(group) [ Language = javascript ]
{
}

/// Draw the legend for the chart.
ClientMethod renderLegend() [ Language = javascript ]
{
}

/// Draw the control bar for this chart.
/// This houses the zoom and pan buttons, if present.
ClientMethod renderControlBar() [ Internal, Language = javascript ]
{
}

/// Draw the zoom and scroll tools for this chart.
ClientMethod renderZoomTool() [ Internal, Language = javascript ]
{
}

/// Click handler for zoom tool.
ClientMethod zoomToolHandler(evt, zoomIn) [ Internal, Language = javascript ]
{
}

/// Mouse down handler for scroll button.
ClientMethod scrollHandlerDown(evt, left) [ Internal, Language = javascript ]
{
}

/// Timer handler for scroll buttons.
ClientMethod btnTimerHandler(left) [ Internal, Language = javascript ]
{
}

/// Mouse up handler for scroll button.
ClientMethod scrollHandlerUp(evt) [ Internal, Language = javascript ]
{
}

/// Perform the scroll action when the button is pressed.
ClientMethod scrollHandler(left) [ Internal, Language = javascript ]
{
}

/// The Normalized viewbox ranges from 0 0 to 100 100, the physical space
/// occupied by the chart is specified as the width and height (in pixels) of
/// the base SVG group.  This function returns a mapping of logical picture
/// units to pixels in the vertical direction.
ClientMethod getPelToPixelVRatio() [ Language = javascript ]
{
}

/// The Normalized viewbox ranges from 0 0 to 100 100, the physical space
/// occupied by the chart is specified as the width and height (in pixels) of
/// the base SVG group.  This function returns a mapping of logical picture
/// units to pixels in the horizontal direction.
ClientMethod getPelToPixelHRatio() [ Language = javascript ]
{
}

ClientMethod removeChildNodes(node) [ Language = javascript ]
{
}

ClientMethod computeEffectiveExtents(x, y, w, h, angle) [ Language = javascript ]
{
}

/// Create a text node.
ClientMethod createSVGTextNode(caption, fontSize, autoScale, align, rotate, parentNode, txtClass, txtStyle) [ Language = javascript ]
{
}

ClientMethod stripWhitespace(str) [ Language = javascript ]
{
}

/// Integrate a new Style specification into an existing set of
/// name-value style pairs, adding and overwriting existing styles
/// as appropriate
ClientMethod integrateStyleSpec(styleNVP, newRule) [ Language = javascript ]
{
}

/// Compute and return the effective style that governs the rendering
/// of a given SVG element based on class and Id
ClientMethod computeStyle(className, idName) [ Language = javascript ]
{
}

/// Embed the various settings of a computed style name-value object
/// as direct attributes of the given node.
ClientMethod embedStyle(element, styleNVP) [ Language = javascript ]
{
}

/// Given a resolved style name-value pairing object, return the specified font
/// size, if none has been specified, return one of three default values based on the
/// value of the textSize property.
ClientMethod getComputedFontSize(styleNVP, defaultMedium, defaultSmall, defaultLarge) [ Language = javascript ]
{
}

/// Draw the title for the chart. Return the height of the title.
ClientMethod renderTitle() [ Language = javascript ]
{
}

/// Adjust position of chart title and legend (if needed).
ClientMethod adjustChartTitle() [ Language = javascript ]
{
}

/// Get title for the chart.
ClientMethod getChartTitle() [ Language = javascript ]
{
}

/// Get subtitle for the chart.
ClientMethod getChartSubtitle() [ Language = javascript ]
{
}

/// Draw the upper/lower bands for the chart.
ClientMethod renderBands() [ Language = javascript ]
{
}

/// Given a logical value, return the corresponding x-axis
/// coordinate.
ClientMethod getPlotX(val) [ Language = javascript ]
{
}

/// Given a logical value, return the corresponding y-axis
/// coordinate.
ClientMethod getPlotY(val, yAxisNo) [ Language = javascript ]
{
}

/// Given a logical value, return the text to use for an axis label.
/// Subclasses can override this for custom behavior.
/// JSL4133 - pass an optional base we can add to val when label is null
ClientMethod getXLabelText(val, base, noformat) [ Language = javascript ]
{
}

/// Given a logical value, return the text to use for an axis label.
/// base is an arbitrary delta but can be used to make labels 0-based or 1-based
/// default is 0-based for backwards compatibility
/// Can be overriden by user through sub-classing
ClientMethod getYLabelText(val, yAxisNo, base) [ Language = javascript ]
{
}

/// Convert a user-provided x-coordinate into 0-100 logical space.
/// This means: 10 returns 10, but "10px" is converted using the current width of the chart.
ClientMethod xToLogical(val) [ Language = javascript ]
{
}

/// Convert a user-provided y-coordinate into 0-100 logical space.
/// This means: 10 returns 10, but "10px" is converted using the current height of the chart.
ClientMethod yToLogical(val) [ Language = javascript ]
{
}

/// Return a numeric abbreviation for a value.
/// <var>min</var> and <var>max</var> are range that value falls within.
/// E.g., 10K for 10000
ClientMethod getNumericAbbreviation(val, min, max) [ Language = javascript ]
{
}

/// Internal method: acquire data for this chart
/// and store a copy in a local cache.
ClientMethod acquireData() [ Internal, Language = javascript ]
{
}

/// Internal method: return (as an object) the minimum
/// and maximum data values for this chart. This is used
/// for ranges that are automatically calculated.
ClientMethod findDataRange(yAxisNo) [ Internal, Language = javascript ]
{
}

/// This method returns true if data series should be summed
/// when calculating data range for the chart.
/// Typically a chart will return true if it is in "stacked" mode.
ClientMethod useSumForRange() [ Language = javascript ]
{
}

/// This method returns true if data series is a "percentage bar chart" and so
/// calculated data range should be 0 to 100%
ClientMethod usePercentForRange() [ Language = javascript ]
{
}

/// Internal method: Go to external data source and
/// eturn an array containing data values for the
/// given series (0-based).
ClientMethod acquireSeriesData(series) [ Internal, Language = javascript ]
{
}

/// Return data values for the given series (0-based)
/// from the chart's data cache.
ClientMethod getSeriesData(series) [ Language = javascript ]
{
}

/// Return the number of data series for this chart.
ClientMethod getSeriesCount() [ Language = javascript ]
{
}

/// Return an array containing the names of the data series for this chart.<br/>
/// If a name is missing, the series number is used.<br/>
/// If the chart is connected to a data controller, get the names from the controller.
ClientMethod getSeriesNames() [ Language = javascript ]
{
}

/// Return an array of labels to display within the Legend box.<br/>
/// Default implementation is to return a list of series names.
ClientMethod getLegendLabels() [ Language = javascript ]
{
}

/// Return the marker type that should be used for the given series.
ClientMethod getMarkerShape(series) [ Language = javascript ]
{
}

/// Return an array of color values for given data series color scheme.
ClientMethod getColorSchemeArray(scheme) [ Language = javascript ]
{
}

/// Return the CSS color that should be used for the given series.
ClientMethod getSeriesColor(series) [ Language = javascript ]
{
}

/// Return the number of items within each data series
/// (this assumes that all data series have the same number of items).
ClientMethod getSeriesSize() [ Language = javascript ]
{
}

/// Returns if there is a current selected element.
ClientMethod hasSelectedItem() [ Language = javascript ]
{
}

/// Return any additional select/unselect style to apply to a chart element.
ClientMethod getSelectedStyle(series, item, isMarker) [ Language = javascript ]
{
}

/// Returns index number (0-based) of the data series of the
/// current selected item, or -1 if there is no current selection.
ClientMethod getSelectedSeries() [ Language = javascript ]
{
}

/// Returns index number (0-based) of the
/// current selected item, or -1 if there is no current selection.
ClientMethod getSelectedItem() [ Language = javascript ]
{
}

/// Create a plot marker.
/// This may be used by subclasses to display markers.
/// type can be 'up','down','circle','square'.
ClientMethod createMarker(series, item, x, y, color, type, noevents) [ Language = javascript ]
{
}

/// Select the specified chart element.
ClientMethod selectElement(series, item) [ Language = javascript ]
{
}

/// Return the svg group element that contains the data series elements.
ClientMethod getSeriesSVGGroup() [ Language = javascript ]
{
}

/// Return the svg object for a specified data element (if any).
ClientMethod getChartElement(series, item) [ Language = javascript ]
{
}

/// Return an array of related svg objects for a specified data element (if any).
/// (such as the edges of a 3d rendering).
ClientMethod getChartRelatedElements(series, item) [ Language = javascript ]
{
}

/// Return default style for the specified data element (if any).
/// This is used to restore styles when chart elements are unselected.
/// Subclasses can override this.
ClientMethod getChartElementStyle(series, item) [ Language = javascript ]
{
}

/// Mouse click handler for chart elements.
/// Subclasses can use this method to associated click events
/// with chart elements.
ClientMethod chartElementClickHandler(evt, series, item) [ Language = javascript ]
{
}

/// Mouse over handler for chart elements.
/// This takes care of tooltips.
ClientMethod chartElementMouseOver(evt, series, item) [ Internal, Language = javascript ]
{
}

/// Mouse out handler for chart elements.
ClientMethod chartElementMouseOut(evt, series, item) [ Internal, Language = javascript ]
{
}

/// Create a tooltip for the current chart item.
ClientMethod showToolTip() [ Internal, Language = javascript ]
{
}

ClientMethod setDimToolTip(captions, values, x, y, final) [ Language = javascript ]
{
}

/// Fade in tooltip.
ClientMethod revealToolTip() [ Internal, Language = javascript ]
{
}

/// Remove the current tool tip.
ClientMethod hideToolTip() [ Internal, Language = javascript ]
{
}

/// Return an object containing tooltip information for the given element.
ClientMethod getToolTipInfo(series, item, captions, values) [ Internal, Language = javascript ]
{
}

/// Notification that the dataController associated with this dataView
/// has raised an event.
ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value1, value2) [ Language = javascript ]
{
}

/// Notification that this component has been resized.
ClientMethod setSizeHandler() [ Language = javascript ]
{
}

/// Format numeric value.
ClientMethod formatNumeric(nStr) [ Language = javascript ]
{
}

/// Indicate which "group" should be used for computing axis ranges.
/// This is overridden by combo charts.
ClientMethod getRangeGroupForSeries(series) [ Language = javascript ]
{
}

/// Draw a line for one data series, <var>s</var> (0-based).
/// <var>data</var> contains the data for all series as an array of arrays.
ClientMethod plotLineForSeries(group, s, data, stacked, chartFilled, markersVisible, hasEvents) [ Language = javascript ]
{
}

/// Return the type (how a series should be displayed) for the given data series (0-based).
/// This is used by combo chart and ignored by all others.
ClientMethod getSeriesType(series) [ Language = javascript ]
{
}

/// Return the index (0-based) of the y-axis associated with the given data series.
/// It may return -1 if the chart is not rendered yet.
ClientMethod getYAxisIndexForSeries(series) [ Language = javascript ]
{
}

/// Indicates that this chart supports and is in "show multiples" mode.
/// A subclass may override this.
ClientMethod hasMultiples() [ Language = javascript ]
{
}

/// Compute scaling information for a time-based x-axis.
ClientMethod computeXAxisTimeLine() [ Language = javascript ]
{
}

/// Render x-axis labels and tick marks for time-based x-axis.
ClientMethod renderXAxisTimeLine(timeCellGroup, y) [ Language = javascript ]
{
}

/// For a given time value, YYYY-MM-DD, find the corresponding x coordinate in virtual pixels.
ClientMethod getTimeX(time) [ Language = javascript ]
{
}

/// Return information about a cell within a time line grid.
ClientMethod getCellInfo(cell, majorUnits, minorUnits, index) [ Internal, Language = javascript ]
{
}

/// Set the timeline start and end dates and update the chart.
/// If <var>endTime</var> is not provided, update it to preserve the current time range using
/// <var>startTime</var> as a new starting time.<br/>
/// Time values are in 'yyyy-mm-dd' format.
/// This prevents the repaint that would happen if start and end dates are set separately.
ClientMethod setTimeRange(startTime, endTime, final) [ Language = javascript ]
{
}

/// Internal utility method. Return the xml version of a given zen object.
/// Add any properties in the <var>add</var> list.
/// Skip any properties in the <var>skip</var> list.
ClientMethod objectToXML(object, tag, add, skip) [ Internal, Language = javascript ]
{
}

/// Get the start time for a time-based chart.
ClientMethod getStartTime() [ Language = javascript ]
{
}

/// Get the end time for a time-based chart.
ClientMethod getEndTime() [ Language = javascript ]
{
}

ClientMethod getLegendRectStyle(s) [ Language = javascript ]
{
}

ClientMethod getRelatedElementStyle(series, item) [ Language = javascript ]
{
}

ClientMethod getLegendsCount(legends) [ Language = javascript ]
{
}

ClientMethod getSeriesNamesSize() [ Language = javascript ]
{
}

/// Update the "indicator" (crosshairs) for the selected item.
ClientMethod updateIndicator() [ Language = javascript ]
{
}

/// Render a set of time-events within the chart.
ClientMethod renderTimeEvents(group) [ Language = javascript ]
{
}

ClientMethod setSeeThrough(opacity) [ Language = javascript ]
{
}

/// Utility method. Split an SVG css value into individual style values.
/// Return an object containing these values.
ClientMethod parseStyleSVG(style) [ Language = javascript ]
{
}

}
