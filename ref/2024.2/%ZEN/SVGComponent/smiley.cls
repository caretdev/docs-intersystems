/// SVG Smiley meter.<br>
/// This displays a range of values using a stylized smiling (or frowning) face.
Class %ZEN.SVGComponent.smiley Extends meter [ Deprecated, System = 3 ]
{

/// Specifies what type of face to show.
Property persona As %ZEN.Datatype.string(VALUELIST = ",classic,alien,pirate") [ InitialExpression = "classic" ];

XData SVGStyle
{
}

XData SVGDef
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderMeter() [ Language = javascript ]
{
}

/// Draw a smiley face
ClientMethod renderFace() [ Language = javascript ]
{
}

/// Internal method: update position of smiley mouth
ClientMethod updateMouth() [ Language = javascript ]
{
}

/// Draw an alien face
ClientMethod renderAlien() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
