/// This is an SVG <class>chart</class> component that displays a pie chart.<br>
/// The <property>plotBy</property> property specifies how the slices of the chart and their labels
/// should be calculated.<br>
/// The size of each slice is adjusted proportionally so that a complete circle is formed.<br>
/// The colors of the slice is determined by the <property>seriesColors</property> property.
/// If there are more slices than colors, then the colors are repeated.<br>
Class %ZEN.SVGComponent.pieChart Extends chart [ Deprecated, System = 3 ]
{

/// Default appearance of this component.
Parameter DEFAULTAPPEARANCE = "2D";

/// Default size of hole in center of the chart.
Parameter DEFAULTHOLESIZE = 0;

/// Specifies how the pie chart will plot its data.
/// <ul>
/// <li>"items" - plot a slice for every item within this chart's data. If
/// there are multiple data series, each slice represents the total of each item
/// summed across the data series.<br>
/// The labels for the slices are treated as Y axis labels: the <property>onGetLabelY</property> event handler is
/// called to get the label values, or the labels are provided by a <class>%ZEN.Auxiliary.dataController</class>
/// if present.
/// </li>
/// <li>"series" - plot a slice for every data series within this chart's data.
/// Each slice represents the total value of all items within each series.<br>
/// The labels for the slices are specified by the <property>seriesNames</property> property.</li>
/// <li>"both" - plot a slice for each item within each data series (that is, there
/// will be seriesCount * seriesSize slices).<br>
/// The slices are labeled as items; the chart legend will display the series names.
/// </li>
/// <li>"auto" - automatically select the appropriate way to display data based on how many data
/// series and items are present.
/// </li>
/// </ul>
Property plotBy As %ZEN.Datatype.string(VALUELIST = ",auto,items,series,both") [ InitialExpression = "auto" ];

/// Scaling factor used to compute size of pie within the chart.<br/>
/// The default scaling value is 1.0. A value larger than 1.0 makes the pie
/// bigger relative to the chart's plot area; a value smaller than 1.0 makes the
/// pie smaller.
Property pieScale As %ZEN.Datatype.float [ InitialExpression = 1.0 ];

/// If true, percentage values (rounded to nearest integer) are displayed as
/// part of the label for each slice.
Property showPercentage As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, the item value is displayed as part of the label for each slice.
Property showValue As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// For pie charts with <property>appearance</property> set to "3D",
/// this controls the apparent height of 3D pie chart.<br/>
/// The value of this property is a percentange of the chart's
/// radius along the x axis. If the size of the chart is changed,
/// its depth will maintain its proportional size.<br/>
/// The value can range from 0 to 1. The default value is 0.33.
Property pieHeight As %ZEN.Datatype.float(MAXVAL = 1, MINVAL = 0) [ InitialExpression = 0.33 ];

/// This controls whether a hole is displayed in the center of the
/// pie chart, and if so, how big the hole is.<br/>
/// The value of this property is a percentange of the chart's
/// radius along the x axis. If the size of the chart is changed,
/// the size of the center hole will maintain its proportional size.<br/>
/// The value can range from 0 to 0.9. The default value is 0.
/// Set this to 0.2 to display a "donut chart".
Property holeSize As %ZEN.Datatype.float(MAXVAL = 0.9, MINVAL = 0) [ InitialExpression = {..#DEFAULTHOLESIZE} ];

/// If specified, rotate the pie chart by this amount (in degrees).
Property rotateBy As %ZEN.Datatype.float [ InitialExpression = 0 ];

/// Position of labels as a multiple of the chart radius.
/// The default is 1.1.
Property labelRadius As %ZEN.Datatype.float(MAXVAL = 1.5, MINVAL = 0.5);

XData SVGStyle
{
}

/// Indicates that this chart has no axes and associated grids
ClientMethod hasAxes() [ Language = javascript ]
{
}

/// Do not show 3-D plot area.
ClientMethod is3D() [ Language = javascript ]
{
}

/// Return an array of labels to display within the Legend box.<br>
/// Override to get appropriate labels for Pie Chart.
ClientMethod getLegendLabels() [ Language = javascript ]
{
}

/// Draw data series for this chart.
/// <var>group</var> is the SVG container for the chart components.
ClientMethod renderSeries(group) [ Language = javascript ]
{
}

/// Determine the actual plot by method for this chart.
ClientMethod getPlotBy() [ Language = javascript ]
{
}

/// Return default style for slice element.
ClientMethod getChartElementStyle(series, item) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Return an array of related svg objects for a specified data element (if any).
/// (such as the edges of a 3d rendering).
ClientMethod getChartRelatedElements(series, item) [ Language = javascript ]
{
}

/// Mouse down handler for a slice.
ClientMethod chartMouseDownHandler(evt, index) [ Internal, Language = javascript ]
{
}

/// Start of spin operation.
ClientMethod startSpinChart(evt, index) [ Internal, Language = javascript ]
{
}

/// Mouse move handler for chart.
ClientMethod mousemoveHandler(evt) [ Internal, Language = javascript ]
{
}

/// Mouse up handler for frame.
ClientMethod mouseupHandler(evt) [ Language = javascript ]
{
}

/// Client-side method to render control.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Indicates that this chart supports "show multiples" mode.
ClientMethod hasMultiples() [ Language = javascript ]
{
}

}
