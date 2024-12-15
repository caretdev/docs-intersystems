/// SVG fuel gauge meter.
/// This displays a value within a representation of a fuel gauge.
Class %ZEN.SVGComponent.fuelGauge Extends meter [ Deprecated, System = 3 ]
{

/// Text for logo displayed in center of dial.
Property logo As %ZEN.Datatype.caption [ InitialExpression = "Zen" ];

/// Fill color used for low indicator lamp.
Property lowLampColor As %ZEN.Datatype.color [ InitialExpression = "url(#glow-red)" ];

/// Fill color used for high indicator lamp.
Property highLampColor As %ZEN.Datatype.color [ InitialExpression = "url(#glow-red)" ];

/// Optional. Style applied to outer region.
Property outerBodyStyle As %ZEN.Datatype.style;

/// Optional. Style applied to bottom panel.
Property panelStyle As %ZEN.Datatype.style;

/// Optional. Style applied to needle.
Property needleStyle As %ZEN.Datatype.style;

/// Optional. Style applied to level box.
Property levelBoxStyle As %ZEN.Datatype.style;

/// Optional. Style applied to text in level box.
Property levelTextStyle As %ZEN.Datatype.style;

/// Optional. Style applied to logo.
Property logoStyle As %ZEN.Datatype.style;

/// Optional. Numeric format string to apply to the odometer value.
Property format As %ZEN.Datatype.string;

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

/// Internal method: update position of needle
ClientMethod updateNeedle(animate) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
