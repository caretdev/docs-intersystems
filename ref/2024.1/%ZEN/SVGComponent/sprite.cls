/// Base class for SVG sprites.<br>
/// A sprite is a shape that can be placed on an svgCanvas
/// and connected to other sprites. Sprites form the basis of
/// an svg-based graphical editor.
Class %ZEN.SVGComponent.sprite Extends svgComponent [ Deprecated, System = 3 ]
{

/// List of input/output ports.
/// Each port is the terminator of a connection to another sprite.
Property ports As list Of port(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

/// Radius of sprite corners.
Property rx As %ZEN.Datatype.integer(MINVAL = 0) [ InitialExpression = 0 ];

/// Additional style to apply to the primary sprite shape.
Property style As %ZEN.Datatype.svgStyle;

/// Text displayed in center of the sprite.
Property caption As %ZEN.Datatype.caption;

XData SVGStyle
{
}

/// Render the inner SVG contents of this sprite.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Create the set of ports for this sprite.
ClientMethod createPorts() [ Language = javascript ]
{
}

/// Create a port for this sprite.
ClientMethod createPort(type, x, y) [ Language = javascript ]
{
}

/// Get the specificied port by port number (0-based).
ClientMethod getPort(portno) [ Language = javascript ]
{
}

/// Notification that this component has been moved.
ClientMethod setPositionHandler() [ Language = javascript ]
{
}

/// Notification that this component has been resized.
ClientMethod setSizeHandler() [ Language = javascript ]
{
}

/// Internal method: update position of all connectors
/// attached to this sprite.
ClientMethod updateConnectors() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
