/// Experimental Document view component.<br/>
/// This provides an way to display a "document" -- data supplied as a graph of JavaScript
/// objects and rendered using a model supplied by another object graph.
Class %ZEN.ComponentEx.documentView Extends (%ZEN.Component.abstractGroup, %ZEN.Component.dataView) [ Deprecated, System = 3 ]
{

Parameter DEFAULTENCLOSINGCLASS = "dvEnclosingClass";

/// If false, show a generic view of the data with no layout applied.
Property useLayout As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Style for overall document.
Property documentStyle As %ZEN.Datatype.style;

/// Style for blocks (sections) within the document.
/// A block encloses a title and paragraph or a table.
Property blockStyle As %ZEN.Datatype.style;

/// Style for titles within the document.
Property titleStyle As %ZEN.Datatype.style;

/// Style for paragraphs within the document.
Property paraStyle As %ZEN.Datatype.style;

/// Style for tables within the document.
Property tableStyle As %ZEN.Datatype.style;

/// Display borders for tables.
Property tableBorder As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Style for header rows within tables.
Property headerRowStyle As %ZEN.Datatype.style [ InitialExpression = "background:#E0E0FF;" ];

/// Style for odd rows within tables.
Property oddRowStyle As %ZEN.Datatype.style;

/// Style for even rows within tables.
Property evenRowStyle As %ZEN.Datatype.style [ InitialExpression = "background:#F8F8F8;" ];

/// ongetlayout event handler:
/// If defined, this event is returns the layout model for the document.
Property ongetlayout As %ZEN.Datatype.eventHandler;

/// ongetdata event handler:
/// If defined, this event is returns the source data to be displayed within this component.
Property ongetdata As %ZEN.Datatype.eventHandler;

/// Defines the style sheet used by this component.
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

/// Render the HTML for a "generic" view of the given source data.
ClientMethod renderGeneric(data, level, counter) [ Language = javascript ]
{
}

/// Get the layout model the defineds the layout and display of the document.
ClientMethod getLayout() [ Language = javascript ]
{
}

/// Get the source data for the document.
ClientMethod getSourceData() [ Language = javascript ]
{
}

/// Render a list of items.<br/>
/// <var>key</var> is the key (prefix) used to assign key values to the items.<br/>
/// <var>data</var> is the source data.<br/>
/// <var>list</var> is the list of items.<br/>
/// <var>context</var> is the inherited data context.<br/>
/// <var>displat</var> specifies how to display the items: 'div' or 'td'.<br/>
ClientMethod renderList(key, data, list, context, display) [ Language = javascript ]
{
}

/// Render a paragraph.
ClientMethod renderPara(key, data, sect, context, display) [ Language = javascript ]
{
}

/// Render an image.
ClientMethod renderImage(key, data, sect, context, display) [ Language = javascript ]
{
}

/// Render an embedded chart.
ClientMethod renderChart(key, data, sect, context, display) [ Language = javascript ]
{
}

/// Evaluate a display value expression and return the result.<br/>
/// <var>data</var> is the data source object supplying the data.<br/>
/// <var>expr</var> is the expression. If is starts with "=", it is interpreted as an expression.<br/>
/// An expression can refer to a property within the data source object:<br/>
/// "=[prop]" evaluates to sourceData.prop<br/>
/// "=[propA.propB]" evaluates to sourceData.propA.propB (if propA is not an object, return "")<br/>
/// "=[prop[0]]" evaluates to sourceData.prop[0]<br/>
/// <var>context</var> is current context object (which modifies the reference to the data source object).<br/>
ClientMethod eval(data, expr, context) [ Language = javascript ]
{
}

/// Resolve the value of a named style.
/// evaluate and lookup the style in the local list of named styles.
ClientMethod resolveNamedStyle(namedStyle, data, context) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
