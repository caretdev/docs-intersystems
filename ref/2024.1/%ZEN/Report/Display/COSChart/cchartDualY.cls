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
Class %ZEN.Report.Display.COSChart.cchartDualY Extends (%ZEN.Report.Display.node, %ZEN.Report.Display.tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

Property children As list Of node(XMLPROJECTION = "NONE");

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

/// If defined, this is used to calculate the width of the
/// viewBox attribute of the enclosing svg element.<br/>
Property viewBoxWidth As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTVIEWBOXWIDTH} ];

/// If defined, this is used to calculate the height of the
/// viewBox attribute of the enclosing svg element.<br/>
Property viewBoxHeight As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTVIEWBOXHEIGHT} ];

/// Optional: If true, display chart as number of small multiple charts, one per data series.
/// This is only used by charts that support small multiples otherwise it is ignored.
Property showMultiples As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional: style used for title text within each "multiple" charts.
/// Used when <property>showMultiples</property> is enabled.
Property multipleTitleStyle As %ZEN.Datatype.svgStyle;

/// Internal property used to track which multiple is being rendered.
Property currMultiple As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];

/// Height of the chart within the report.
Property height As %ZEN.Datatype.length;

Property svgGroup As %ZEN.Report.Display.COSChart.node;

Property topLevel As %ZEN.Report.Display.COSChart.node;

/// x axis specification for this chart.
Property xAxis As caxis(XMLPROJECTION = "ELEMENT");

/// Deprecated. y axis specifications for this chart.
/// This is replaced by yAxisList. This property is kept here so that
/// applications that set yAxis directly will still function.
Property yAxis As caxis(XMLPROJECTION = "none");

/// List of y axis specifications for this chart.
Property yAxisList As list Of caxis(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE");

/// Optional: style used for chart background panel.
Property backgroundStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for chart plot area panel.
Property plotAreaStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "fill:url(#glow-silverDiag);" ];

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

Property chartPivot As %ZEN.Datatype.boolean;

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

/// Internal used by DeepSee to support data-driven series colors
Property dataDrivenSeriesColors As %String(XMLPROJECTION = "none");

/// Internal used by DeepSee to support data-driven series colors
Property %dataDrivenSeriesColors As %List(XMLPROJECTION = "none");

Property dateFormat As %String(XMLPROJECTION = "none");

Property %seriesColors As %List(XMLPROJECTION = "none") [ MultiDimensional ];

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
Property seriesNames As %ZEN.Datatype.csv;

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

/// Optional: legendLabels
Property legendLabels As %ZEN.Datatype.csv;

/// Optional: legend position
Property legendPosition As %ZEN.Datatype.string(VALUELIST = ",top,left,bottom,right,none");

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

/// If defined, then a colored band (specified by <property>bandRightStyle</property>)
/// is displayed on the plot area covering the range greater than this value;
Property bandRight As %ZEN.Datatype.float;

/// If defined, then a colored band (specified by <property>bandLeftStyle</property>)
/// is displayed on the plot area covering the range lower than this value;
Property bandLeft As %ZEN.Datatype.float;

/// Optional: style used for right band on plot area.
Property bandRightStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for left band on plot area.
Property bandLeftStyle As %ZEN.Datatype.svgStyle;

/// Optional: style applied to line drawn for x and y axes.
Property axisLineStyle As %ZEN.Datatype.svgStyle;

/// Optional: style applied to base line.
Property baseLineStyle As %ZEN.Datatype.svgStyle;

/// Controls the appearance of this chart.<br/>
/// Set this to "2D" (the default) for a standard chart appearance.<br/>
/// Setting this to "3D" will give the chart a 3-D appearance; the
/// plot area will appear to be recessed. Certain chart types, such are
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

/// ongetData method
/// This method is called by the chart
/// to get an array of values to plot for a data series.
/// The array has the format values(s,i) where s is the series
/// and is i is the member of the series and values(s,i) is numeric.
/// <br/>
/// The method is passed an argument, <var>chart</var>,
/// that is <i>this</i> chart object.
Property ongetData As %ZEN.Datatype.string;

/// ongetLabelX event handler:
/// This method, if defined, is called by the chart
/// to get the text for a given label on the x axis.<br/>
/// The method is passed an argument, <var>value</var>,
/// that contains the ordinal number (0-based) of the label.<br/>
/// The method is passed an argument, <var>chart</var>,
/// that is <i>this</i> chart object.
Property ongetLabelX As %ZEN.Datatype.string;

/// ongetLabelY event handler:
/// This method, if defined, is called by the chart
/// to get the text for a given label on the y axis.<br/>
/// The method is passed an argument, <var>value</var>,
/// that contains the ordinal number (0-based) of the label.<br/>
/// The method is passed an argument, <var>chart</var>,
/// that is <i>this</i> chart object.
Property ongetLabelY As %ZEN.Datatype.string;

/// ongetSeriesName event handler:
/// This method, if defined, is called by the chart
/// to get the text for a given series number.<br/>
/// The method is passed an argument
/// that contains the ordinal number (0-based) of the series name.<br/>
/// The method is passed an argument, <var>chart</var>,
/// that is <i>this</i> chart object.
Property ongetSeriesName As %ZEN.Datatype.string;

/// onrenderData callback:
/// This callback, if defined, is called by the chart
/// just after it is finished displaying grid lines and data.
/// The event handler is passed an argument, <var>chart</var>,
/// that is <i>this</i> chart object. If it also passed <var>group</var>,
/// which is the SVG group to which any new svg content should be added.
Property onrenderData As %ZEN.Datatype.eventHandler;

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
Property hzZoomStep As %ZEN.Datatype.float(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// Internal amount of horizontal scroll.
Property scrollLeft As %ZEN.Datatype.float(XMLPROJECTION = "none") [ InitialExpression = 0.0, Internal ];

/// A dataSeries used to provide a series-worth of data for the report
Property dataSeries As list Of dataSeries(XMLNAME = "dataSeries", XMLPROJECTION = "ELEMENT");

/// pass the chart object to onget... methods, set it to false for old behavior where no chart object passed
Property passChartObject As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

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

/// Optional. The id of the <class>%ZEN.Report.Display.COSChart.abstractController</class> object that
/// provides data for this chart.<br/>
/// If provided, this must be the valid id of a <class>%ZEN.Report.Display.COSChart.abstractController</class> object.
Property controllerId As %ZEN.Datatype.id(COMPONENTTYPE = "dataController");

Property zenMonthShortNames As %ZEN.Datatype.caption(XMLPROJECTION = "none") [ InitialExpression = "Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec" ];

/// turns on category value calcuation of JMD1100 (this is in JSL3955)
Property oldLabelCalc As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// adjust calculated height of text by multiplying by FontYScale
Property FontYScale As %ZEN.Datatype.float [ InitialExpression = 1.0 ];

/// adjust calculated width of text by multiplying by FontXScale
Property FontXScale As %ZEN.Datatype.float [ InitialExpression = .75 ];

/// used for debugging label placement JSL3955
Property debugBBox As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional: URL of image to display within the title area.
Property titleImage As %ZEN.Datatype.uri;

/// Optional. Style for titleImage: left,top,width, and height.
Property titleImageStyle As %ZEN.Datatype.svgStyle;

/// Set to 1 to display a localized warning message if chart has no data
Property warnIfNoData As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// localized warning message if chart has no data
Property msgIfNoData As %ZEN.Datatype.caption [ InitialExpression = "No Data" ];

/// opacity of no data message background rectangle
Property noDataOpacity As %ZEN.Datatype.float [ InitialExpression = 1.0 ];

/// fill color rectange
Property noDataFill As %ZEN.Datatype.color [ InitialExpression = "red" ];

/// color of message
Property noDataStroke As %ZEN.Datatype.color [ InitialExpression = "white" ];

Property %yMajorUnits As %Double(XMLPROJECTION = "none") [ MultiDimensional ];

Property %yMinorUnits As %Double(XMLPROJECTION = "none") [ MultiDimensional ];

Property %yLabelUnits As %Double(XMLPROJECTION = "none") [ MultiDimensional ];

Property %yLabelAngle As %Double(XMLPROJECTION = "none") [ MultiDimensional ];

Property %yLabelStyle As %String(XMLPROJECTION = "none") [ MultiDimensional ];

Property %yMajorGrid As %Double(XMLPROJECTION = "none");

Property %yMinorGrid As %Double(XMLPROJECTION = "none");

Property %yMajorGridStyle As %Double(XMLPROJECTION = "none");

Property %yMinorGridStyle As %Double(XMLPROJECTION = "none");

Property %xMajorUnits As %Double(XMLPROJECTION = "none");

Property %xMinorUnits As %Double(XMLPROJECTION = "none");

Property %xLabelUnits As %Double(XMLPROJECTION = "none");

Property %xLabelAngle As %Double(XMLPROJECTION = "none");

Property %xLabelStyle As %Double(XMLPROJECTION = "none");

Property %xMajorGrid As %Double(XMLPROJECTION = "none");

Property %xMinorGrid As %Double(XMLPROJECTION = "none");

Property %xMajorGridStyle As %Double(XMLPROJECTION = "none");

Property %xMinorGridStyle As %Double(XMLPROJECTION = "none");

Property %yGridType As %Double(XMLPROJECTION = "none");

Property %xGridType As %Double(XMLPROJECTION = "none");

Property %plotLeft As %Double(XMLPROJECTION = "none");

Property %plotTop As %Double(XMLPROJECTION = "none");

Property %rplotWidth As %Double(XMLPROJECTION = "none");

Property %plotHeight As %Double(XMLPROJECTION = "none");

Property %labelPad As %Double(XMLPROJECTION = "none");

Property %labelPadL As %Double(XMLPROJECTION = "none");

Property %labelPadR As %Double(XMLPROJECTION = "none");

Property %xMinValue As %Double(XMLPROJECTION = "none");

Property %xMaxValue As %Double(XMLPROJECTION = "none");

Property %oldXMax As %Double(XMLPROJECTION = "none");

Property %yMinValue As %Double(XMLPROJECTION = "none") [ MultiDimensional ];

Property %yMaxValue As %Double(XMLPROJECTION = "none") [ MultiDimensional ];

Property %marginTop As %Double(XMLPROJECTION = "none");

Property %marginBottom As %Double(XMLPROJECTION = "none");

Property %legendRight As %Double(XMLPROJECTION = "none");

Property %legendWidth As %Double(XMLPROJECTION = "none");

Property %legendHeight As %Double(XMLPROJECTION = "none");

Property %labelBottom As %Double(XMLPROJECTION = "none");

Property %legendVisible As %Boolean(XMLPROJECTION = "none");

Property %xBaseValue As %Double(XMLPROJECTION = "none");

Property %yBaseValue As %Double(XMLPROJECTION = "none") [ MultiDimensional ];

Property %xRange As %Double(XMLPROJECTION = "none");

Property %yRange As %Double(XMLPROJECTION = "none") [ MultiDimensional ];

Property %yAxisTitle As %String(XMLPROJECTION = "none");

Property %xAxisTitle As %String(XMLPROJECTION = "none");

Property %marginLeft As %Double(XMLPROJECTION = "none");

Property %marginRight As %Double(XMLPROJECTION = "none");

Property %plotLeftOut As %Double(XMLPROJECTION = "none");

Property %plotRightOut As %Double(XMLPROJECTION = "none");

Property %rplotRightOut As %Double(XMLPROJECTION = "none");

Property %rplotRight As %Double(XMLPROJECTION = "none");

Property %plotWidth As %Double(XMLPROJECTION = "none");

Property %plotRight As %Double(XMLPROJECTION = "none");

Property %hzMaxStep As %Double(XMLPROJECTION = "none");

Property %maxScrollLeft As %Double(XMLPROJECTION = "none");

Property %xAxisLabelH As %Double(XMLPROJECTION = "none");

Property %dataSeries As %Double(XMLPROJECTION = "none") [ MultiDimensional ];

Property %xAxisTitleH As %Double(XMLPROJECTION = "none");

Property %plotTopOut As %Double(XMLPROJECTION = "none");

Property %plotBottomOut As %Double(XMLPROJECTION = "none");

Property %plotBottom As %Double(XMLPROJECTION = "none");

Property %yAxisForSeries As %List(XMLPROJECTION = "none") [ MultiDimensional ];

Property %scaleX As %Double(XMLPROJECTION = "none");

Property %scaleY As %Double(XMLPROJECTION = "none");

Property %controlBarH As %Double(XMLPROJECTION = "none");

Property %yLabelOnTheRight As %Boolean(XMLPROJECTION = "none");

Property %yLabelOnTheLeft As %Boolean(XMLPROJECTION = "none");

Property %xLabelOnTheTop As %Boolean(XMLPROJECTION = "none");

Property %xLabelOnTheBottom As %Boolean(XMLPROJECTION = "none");

Property %date1900 As Date(XMLPROJECTION = "none");

Property %offset As %String(XMLPROJECTION = "none");

Property %startUnits As %String(XMLPROJECTION = "none");

Property %endUnits As %String(XMLPROJECTION = "none");

Property %majorUnits As %String(XMLPROJECTION = "none");

Property %minorUnits As %String(XMLPROJECTION = "none");

Property %pixPerSec As %Double(XMLPROJECTION = "none");

Property %titleHeight As %Double(XMLPROJECTION = "none");

Property %maxXHeight As %Double(XMLPROJECTION = "none");

Property %firstXLabelWidth As %Double(XMLPROJECTION = "none");

Property %lastXLabelWidth As %Double(XMLPROJECTION = "none");

Property %titleImageWidth As %Double(XMLPROJECTION = "none");

Property %titleImageTop As %Double(XMLPROJECTION = "none");

Property %titleImageLeft As %Double(XMLPROJECTION = "none");

Property %timeEvents As %String(XMLPROJECTION = "none") [ MultiDimensional ];

XData SVGStyle
{
}

XData SVGStyleNoHTML5
{
}

/// Set of standard svg defs shared by all svg components.
XData SVGDef
{
}

/// Set of standard svg defs shared by all svg components.
XData SVGDefNoHTML5
{
}

/// Client-side method to render control.
Method renderContents()
{
}

/// Get the current y Axis definition used for this chart.
/// <var>which</var> is "left" or "right".
Method getCurrYAxis(which)
{
}

/// Return the x Axis definition for this chart.
Method getXAxis()
{
}

/// Return the y Axis definition for this chart.
Method getYAxis(index)
{
}

/// Return the number of y Axis definitions for this chart.
Method getYAxisCount()
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

/// Return the x axis title.
Method getXAxisTitle()
{
}

/// Return the y axis title.
Method getYAxisTitle(which)
{
}

/// Indicates whether this chart should be drawn with a 3-D
/// appearance.
Method is3D()
{
}

/// Internal method: Set up range and other information.
Method calculateRangeValues() [ Internal ]
{
}

Method initializeAxisProperties()
{
}

/// If the plot has axes, pre-calculate the internal values that will be used
/// to govern how those axes are rendered
Method calculateAxisConstraints()
{
}

/// Internal method: Find best scale units to use for given value.
Method findScaleUnits(val) [ Internal ]
{
}

/// Draw the plot area of the chart.
Method renderPlotArea()
{
}

/// Indicates that this chart has axes and associated grids
/// A subclass may override this to turn off axis display.
Method hasAxes()
{
}

/// Test if a time-based x axis should be used.
/// This is overridden in subclasses.
Method isTimeBased()
{
}

/// Draw the x and y axes and grid lines.
Method renderAxes()
{
}

/// Prepare the axis group for population with axis information
Method prepareAxisGroup(idName, parentNode)
{
}

Method createXLabelNode(index, fontSize, style, angle, group)
{
}

Method calculateXAxisTitleHeight()
{
}

Method calculateXAxisHeight()
{
}

/// Draw the title section for the Y axis (if any) and
/// return the height reserved for the rendering
Method renderXAxisTitle(group)
{
}

/// Draw the labels for the x axis.
Method renderXLabels()
{
}

/// IF all went as expected, the idx array should have the indices of the labels we'd like
/// to print, the lWidth array should have the native widths of each label and maxWidth should
/// be the length of the longest label.	Now we need to print them.
/// This is the core of the vertical decimation algorithm.  Given a maximum number of label
/// to choose from an array,  pick a subset that will (hopefully) use the available
/// space effectively and keep things visually balanced.
Method pickVerticalSkips(flag, max)
{
}

/// Internal method to calculate how much room should be reserved
/// for the Y axis area.  This includes both the axis title and
/// the individual labels
Method calculateYAxisWidth(which) [ Internal ]
{
}

/// Draw the title section for the Y axis (if any) and
/// return the width reserved for the rendering
Method renderYAxisTitle(group, which, xpos)
{
}

/// Draw the labels for the y axis.
/// If <var>test</var> is true, then this is a "test" plot to determine
/// the max width of the labels.
Method renderYLabels(which)
{
}

/// Draw the data series for this chart.
/// This method renders the container for the data series and
/// then invokes a sub-class specific <method>renderSeries</method> method.
Method renderSeriesGroup()
{
}

/// Draw data series for this chart.
/// This is implemented by subclasses.
/// <var>group</var> is the SVG container for the chart components.
Method renderSeries(group)
{
}

/// Draw the legend for the chart.
Method renderLegend()
{
}

/// Draw the legend for the chart.
Method calculateLegendDimensions()
{
}

/// The Normalized viewbox ranges from 0 0 to 100 100, the physical space
/// occupied by the chart is specified as the width and height (in pixels) of
/// the base SVG group.  This function returns a mapping of logical picture
/// units to pixels in the vertical direction.
Method getPelToPixelVRatio()
{
}

/// The Normalized viewbox ranges from 0 0 to 100 100, the physical space
/// occupied by the chart is specified as the width and height (in pixels) of
/// the base SVG group.  This function returns a mapping of logical picture
/// units to pixels in the horizontal direction.
Method getPelToPixelHRatio()
{
}

Method removeChildNodes(node As node)
{
}

Method computeEffectiveExtents(x, y, w, h, angle) As extent
{
}

/// Create a text node.
Method createSVGTextNode(caption, fontSize, autoScale, align, rotate, parentNode, txtClass, txtStyle) As node
{
}

Method stripWhitespace(str)
{
}

/// Integrate a new Style specification into an existing set of
/// name-value style pairs, adding and overwriting existing styles
/// as appropriate
Method integrateStyleSpec(styleNVP As styleNVP, newRule As %String)
{
}

/// Compute and return the effective style that governs the rendering
/// of a given SVG element based on class and Id
Method computeStyle(className, idName)
{
}

/// Embed the various settings of a computed style name-value object
/// as direct attributes of the given node.
Method embedStyle(element, styleNVP)
{
}

/// Given a resolved style name-value pairing object, return the specified font
/// size, if none has been specified, return one of three default values based on the
/// value of the textSize property.
Method getComputedFontSize(styleNVP, defaultMedium, defaultSmall, defaultLarge)
{
}

/// Draw the title for the chart. Return the height of the title.
Method renderTitle()
{
}

/// Adjust position of chart title and legend (if needed).
Method adjustChartTitle()
{
}

/// Get title for the chart.
Method getChartTitle()
{
}

/// Get subtitle for the chart.
Method getChartSubtitle()
{
}

/// Draw the upper/lower bands for the chart.
Method renderBands()
{
}

/// Given a logical value, return the corresponding x-axis
/// coordinate.
Method getPlotX(val)
{
}

/// Given a logical value, return the corresponding y-axis
/// coordinate.
Method getPlotY(val, yAxisNo)
{
}

/// Given a logical value, return the text to use for an axis label.
/// Subclasses can override this for custom behavior.
Method getXLabelText(val, base, noformat)
{
}

/// Given a logical value, return the text to use for an axis label.
/// Subclasses can override this for custom behavior.
Method getYLabelText(val, yAxisNo, base)
{
}

/// Convert a user-provided x-coordinate into 0-100 logical space.
/// This means: 10 returns 10, but "10px" is converted using the current width of the chart.
Method xToLogical(val)
{
}

/// Convert a user-provided y-coordinate into 0-100 logical space.
/// This means: 10 returns 10, but "10px" is converted using the current height of the chart.
Method yToLogical(val)
{
}

/// Return a numeric abbreviation for a value.
/// <var>min</var> and <var>max</var> are range that value falls within.
/// E.g., 10K for 10000
Method getNumericAbbreviation(val, min, max)
{
}

/// Internal method: acquire data for this chart
/// and store a copy in a local cache.
Method acquireData() [ Internal ]
{
}

/// Internal method: return (as an object) the minimum
/// and maximum data values for this chart. This is used
/// for ranges that are automatically calculated.
Method findDataRange(yAxisNo) [ Internal ]
{
}

/// This method returns true if data series should be summed
/// when calculating data range for the chart.
/// Typically a chart will return true if it is in "stacked" mode.
Method useSumForRange()
{
}

/// This method returns true if data series is a "percentage bar chart" and so
/// calculated data range should be 0 to 100%
Method usePercentForRange()
{
}

/// Return the number of data series for this chart.
Method getSeriesCount()
{
}

Method getDataSeriesCount()
{
}

/// Return the length of %dataSeries(0)
Method getDataSeriesLength()
{
}

/// Return an array containing the names of the data series for this chart.<br/>
/// If a name is missing, the series number is used.<br/>
Method getSeriesNames() As %List
{
}

/// Return an array of labels to display within the Legend box.<br/>
/// Default implementation is to return a list of series names.
Method getLegendLabels()
{
}

/// Return the marker type that should be used for the given series.
Method getMarkerShape(series)
{
}

/// Return an array of color values for given data series
/// color scheme.
Method getColorSchemeArray(scheme) As %List
{
}

/// Return the CSS color that should be used for the given series.
/// 0 based
Method getSeriesColor(series)
{
}

/// Return the number of items within each data series
/// (this assumes that all data series have the same number of items).
Method getSeriesSize()
{
}

/// Returns if there is a current selected element.
Method hasSelectedItem()
{
}

/// Return any addition select/unselect style to apply to a chart element.
Method getSelectedStyle(series, item, isMarker)
{
}

/// Returns index number (0-based) of the data series of the
/// current selected item, or -1 if there is no current selection.
Method getSelectedSeries()
{
}

/// Returns index number (0-based) of the
/// current selected item, or -1 if there is no current selection.
Method getSelectedItem()
{
}

/// Create a plot marker.
/// This may be used by subclasses to display markers.
/// type can be 'up','down','circle','square'.
Method createMarker(series, item, x, y, color, type, noevents) As node
{
}

ClassMethod split(str As %String, delim As %String, isXMLEscaped As %Boolean = 0) As %List
{
}

ClassMethod Test()
{
}

Method getTextWidth(text, xfontsize)
{
}

Method myCountSpaces(text)
{
}

Method GetBBox(text As node, rotate, scaleX, scaleY, align) As bbox
{
}

Method calcVertex(x0, y0, x, y, theta, Output x2, Output y2)
{
}

Method min(x1, x2, x3, x4)
{
}

Method max(x1, x2, x3, x4)
{
}

Method computeScale(size, axis)
{
}

Method computeXFontSize(text As node, size As %Double)
{
}

Method computeYFontSize(text As node, size As %Double)
{
}

Method getComputedTextLength(text As node) As %Double
{
}

Method makeId(id As %String)
{
}

Method %DrawToHTML(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

/// Return svg group elemment that contains the data series elements.
Method getSeriesSVGGroup()
{
}

/// Return data values for the given series (0-based)
/// from the chart's data cache.  Return data in %List format.
Method getSeriesData(series) As %List
{
}

Method getStyleArray(styles As %String, ByRef array As %String)
{
}

/// Indicate which "group" should be used for computing axis ranges.
/// This is overridden by combo charts.
Method getRangeGroupForSeries(series)
{
}

/// Draw a line for one data series, <var>s</var> (0-based).
/// <var>data</var> contains the data for all series as an array of arrays.
/// in Java Script s was 0-based, in this code it is 0 based
/// Data is 0-based, colors and shapes are 0-based
Method plotLineForSeries(group, s, ByRef data, stacked, chartFilled, markersVisible, hasEvents)
{
}

/// Draw a line for one data series, <var>s</var> (0-based).
/// <var>data</var> contains the data for all series as an array of arrays.
/// in Java Script s was 0-based, in this code it is 0 based
/// Data is 0-based, colors and shapes are 0-based
Method plotLinkedLineForSeries(group, s, ByRef data, stacked, chartFilled, markersVisible, hasEvents)
{
}

/// Return the type (how a series should be displayed) for the given data series (0-based).
/// This is used by combo chart and ignored by all others.
Method getSeriesType(series)
{
}

/// Remove the inner SVG for this component.
/// See %ZEN.Display.COSCHart.node for methods being called
Method unrender()
{
}

/// Indicates that this chart supports and is in "show multiples" mode.
/// A subclass may override this.
Method hasMultiples()
{
}

/// Compute scaling information for a time-based x-axis.
Method computeXAxisTimeLine()
{
}

/// Render x-axis labels and tick marks for time-based x-axis.
Method renderXAxisTimeLine(timeCellGroup, y)
{
}

/// For a given time value, YYYY-MM-DD, find the corresponding x coordinate in virtual pixels.
Method getTimeX(time)
{
}

/// Return information about a cell within a time line grid.
Method getCellInfo(cell, majorUnits, minorUnits, index)
{
}

/// JMD1100 - this is in canvas in ZEN
/// Calculate the value of the viewBox attribute of this
/// component's enclosing svg element.<br/>
/// Subclasses can override this, should they need to provide
/// a different behavior.
/// The default behavior is to use the width and height of this component
/// to come up with a 1 to 1 coordinate mapping; If the component
/// provides values for the <property>viewboxWidth</property> and
/// <property>viewboxHeight</property> properties, then these are used to
/// calculate the viewBox (and thus define a fixed coordinate system for the component).
Method calculateViewBox()
{
}

ClassMethod zenGet(value, defvalue)
{
}

/// Parse an SVGStyle XData block and put results in pParseClasses
/// pParsedClasses(classname, attribute)=value
ClassMethod ParseCSSStyle(pClassName As %String, ByRef pParsedClasses As %String)
{
}

/// Get the start time for a time-based chart.
Method getStartTime()
{
}

/// Get the end time for a time-based chart.
Method getEndTime()
{
}

/// Use in chart to give a specifc style to legend
/// Can be overriden by descendent class
Method getLegendRectStyle(s)
{
}

Method getLegendsCount(legends)
{
}

Method getSeriesNamesSize()
{
}

/// Update the "indicator" (crosshairs) for the selected item.
Method updateIndicator()
{
}

/// Render a set of time-events within the chart.
Method renderTimeEvents(group)
{
}

}
