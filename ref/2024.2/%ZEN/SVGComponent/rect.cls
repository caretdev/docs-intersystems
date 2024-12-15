/// Simple SVG rectangle component.<br>
/// The x and y position of the component are determined by the
/// layout provided by the svgGroup containing this component.<br>
/// Note that this is <em>not</em> the same as an SVG rect element:
/// This is a complete ZEN component with corresponding object in the
/// page object model.
Class %ZEN.SVGComponent.rect Extends svgComponent [ Deprecated, System = 3 ]
{

/// Radius of corners for rectangle.
Property rx As %ZEN.Datatype.length [ InitialExpression = 0 ];

/// Additional style to apply to this shape.
Property style As %ZEN.Datatype.svgStyle;

XData SVGStyle
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
