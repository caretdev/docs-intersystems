/// Base class for SVG connector.<br>
/// A connector is used to display connections between sprites.
Class %ZEN.SVGComponent.connector Extends svgObject [ Deprecated, System = 3 ]
{

/// Additional style to apply to the primary connector shape.
Property style As %ZEN.Datatype.style;

/// List of input ports this connector is connected to.
Property inputs As list Of port(XMLPROJECTION = "NONE");

/// List of output ports this connector is connected to.
Property outputs As list Of port(XMLPROJECTION = "NONE");

XData SVGStyle
{
}

/// Render the inner SVG contents of this connector.
ClientMethod renderConnector(canvas) [ Language = javascript ]
{
}

/// Update the shape used to define the connector
/// This can be overridded by subclasses.
ClientMethod updateConnector() [ Language = javascript ]
{
}

/// Return the maximum number of inputs allowed for this connector.
ClientMethod getMaxInputs() [ Language = javascript ]
{
}

/// Return the maximum number of outputs allowed for this connector.
ClientMethod getMaxOutputs() [ Language = javascript ]
{
}

/// Public API: Add an input to this connector.
ClientMethod addInput(sprite, portno) [ Language = javascript ]
{
}

/// Public API: Add an output to this connector.
ClientMethod addOutput(sprite, portno) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
