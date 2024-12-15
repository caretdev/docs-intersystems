/// This is a specialized SVG component that displays the relationship
/// between a set of data items as a radial diagram.<br>
/// The data is displayed as a central circular hub surrounded by a set
/// of evenly spaced nodes. The number and contents of the nodes is specified
/// by an array of <class>%ZEN.Auxiliary.radialNode</class> objects.
Class %ZEN.SVGComponent.radialNavigator Extends svgComponent [ Deprecated, System = 3 ]
{

/// Default viewBoxWidth of this component.
/// This is set to 100 to provide a fixed coordinate system.
Parameter DEFAULTVIEWBOXWIDTH As INTEGER = 100;

/// Default viewBoxHeight of this component.
/// This is set to 100 to provide a fixed coordinate system.
Parameter DEFAULTVIEWBOXHEIGHT As INTEGER = 100;

/// List of node information objects.
/// Each object specifies details about a node displayed by the Navigator.
Property nodes As list Of %ZEN.Auxiliary.radialNode(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE");

/// Title displayed by navigator.
Property title As %ZEN.Datatype.caption;

/// Label for central hub.
Property mainLabel As %ZEN.Datatype.caption;

/// Optional: style used for background panel.
Property backgroundStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for title text.
Property titleStyle As %ZEN.Datatype.svgStyle;

/// Optional: style used for main hub label text.
Property mainLabelStyle As %ZEN.Datatype.svgStyle;

/// Optional: style applied to central hub.
Property hubStyle As %ZEN.Datatype.svgStyle;

/// Optional: style applied to nodes.
Property nodeStyle As %ZEN.Datatype.svgStyle;

/// Optional: if true, then scale the size of the outer nodes proportionally to their value.
Property scaleNodes As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Index (0-based) of selected node.
/// -1 means that the central node is selected.
/// -2 means that no node is selected.
Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -2 ];

/// onselectNode event handler:
/// This event is fired when the mouse is clicked on a Node.<br>
/// When this event is invoked, the <property>selectedIndex</property>
/// will contain the index (0-based) of the current node. If the user clicks on the central node then
/// <property>selectedIndex</property> will be -1;
Property onselectNode As %ZEN.Datatype.eventHandler;

XData SVGStyle
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Draw a connector.
ClientMethod drawConnector(group, angle) [ Language = javascript ]
{
}

/// Draw a node.
ClientMethod drawNode(group, type, angle, node, num, size) [ Language = javascript ]
{
}

/// Select the specified node.
ClientMethod selectNode(index) [ Language = javascript ]
{
}

/// Highlight/unhighlight node (called by mouseover, mouseout events).
ClientMethod nodeMouseHandler(evt, flag, nodeIndex) [ Language = javascript ]
{
}

/// Onclick handler for nodes.
ClientMethod nodeClickHandler(evt, type, nodeIndex) [ Language = javascript ]
{
}

/// Remove the set of nodes associated with this Navigator.
ClientMethod clearNodes() [ Language = javascript ]
{
}

/// Return the current selected node object associated with this Navigator.
ClientMethod getCurrNode() [ Language = javascript ]
{
}

/// Return a node object associated with this Navigator given its index
/// number (0-based).
ClientMethod getNode(index) [ Language = javascript ]
{
}

/// Remove a node from this navigator.<br>
/// <var>index</var> is the index number (0-based) of the node.<br>
ClientMethod removeNode(index) [ Language = javascript ]
{
}

/// Append a new node object to this navigator.<br>
/// The node object should be created by calling:
/// <example language="javascript">
/// node = zenPage.createComponent('radialNode');
/// </example>
ClientMethod appendNode(node) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
