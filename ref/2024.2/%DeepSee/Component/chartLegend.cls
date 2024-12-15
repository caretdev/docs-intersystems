/// Chart legend component.<br/>
/// This provides an alternate way to display a legend for a Zen chart component.<br/>
/// To use the chart legend you must connect it to a data source using the
/// <property>controllerId</property> property as well as a chart using the
/// <property>chartId</property> property. The <property>orientation</property> property
/// specifies how the legend is layed out.
Class %DeepSee.Component.chartLegend Extends (%ZEN.Component.component, %ZEN.Component.dataView) [ System = 3 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

/// Localization domain
Parameter DOMAIN = "%DeepSee";

Parameter DEFAULTENCLOSINGCLASS = "dslegendDiv";

/// id of <class>%DeepSee.SVGComponent.chart</class> component this
/// legend is associated with.<br>
/// Note: if this component is placed within a composite element, then the
/// chart must be within the same composite element.
Property chartId As %ZEN.Datatype.id(COMPONENTTYPE = "chart");

/// Style to apply to the legend table.
Property legendStyle As %ZEN.Datatype.style;

/// Style to apply to border lines in the legend.
Property legendBorderStyle As %ZEN.Datatype.style;

/// Style to apply to the legendBox
Property legendBoxStyle As %ZEN.Datatype.style;

/// Specify which way the legend is layed out.
Property orientation As %ZEN.Datatype.string(VALUELIST = "horizontal,vertical") [ InitialExpression = "vertical" ];

/// Remember the legend position.
Property legendPosition As %ZEN.Datatype.string(VALUELIST = "top,left,bottom,right,none", XMLPROJECTION = "none");

/// Store legend Labels here so available to UI.ChartPDF and Widget.pivot
Property legendLabels As %ZEN.Datatype.csv(XMLPROJECTION = "none");

/// Store legend title here so available to UI.ChartPDF and Widget.pivot
Property legendTitle As %ZEN.Datatype.caption(XMLPROJECTION = "none");

Property showLegendTitle As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 1 ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Client-side method to render this control.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Some charts may have use SVG colors. This is a crude translator.
ClientMethod transformColor(color) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Utility method. Split an SVG css value into individual style values.
/// Return an object containing these values.
ClientMethod parseStyleSVG(style) [ Language = javascript ]
{
}

/// Connect to controller.
ClientMethod acquireData() [ Internal, Language = javascript ]
{
}

/// Notification that the dataController associated with this dataView
/// has raised an event.
ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]
{
}

/// User click on legend item.
ClientMethod itemClick(idx) [ Internal, Language = javascript ]
{
}

ClientMethod setOpacity(opacity) [ Language = javascript ]
{
}

/// Insert a single style item into the multi-item legendBorderStyle
ClientMethod setBorderStyle(borderStyleAttribute, value) [ Language = javascript ]
{
}

}
