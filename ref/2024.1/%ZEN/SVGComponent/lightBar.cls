/// SVG light bar meter.<br>
/// This displays a value within a representation of a LED light bar.<br>
/// This control looks best when its width is half of its height.
Class %ZEN.SVGComponent.lightBar Extends meter [ Deprecated, System = 3 ]
{

/// Override viewBoxWidth for this component.
Parameter DEFAULTVIEWBOXWIDTH = 50;

/// Fill color used for low indicator lamp.
Property lowLampColor As %ZEN.Datatype.color [ InitialExpression = "url(#glow-red)" ];

/// Fill color used for high indicator lamp.
Property highLampColor As %ZEN.Datatype.color [ InitialExpression = "url(#glow-red)" ];

/// Optional. Style applied to outer region.
Property outerBodyStyle As %ZEN.Datatype.style;

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

/// Internal method: update lamps
ClientMethod updateLamps(animate) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
