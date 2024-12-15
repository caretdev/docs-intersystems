/// SVG indicator lamp meter.<br>
/// This meter displays a stylized lamp displaying a label. When its value
/// is above the the <property>threshholdUpper</property> value, the lamp
/// will turn on.<br>
/// This control looks best when its height is one quarter of its width.
Class %ZEN.SVGComponent.indicatorLamp Extends meter [ Deprecated, System = 3 ]
{

/// Override viewBoxWidth for this component.
Parameter DEFAULTVIEWBOXWIDTH = 100;

/// Override viewBoxHeight for this component.
Parameter DEFAULTVIEWBOXHEIGHT = 25;

/// Style applied to lamp when the meter value is below the low threshold.
Property lowStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "fill: url(#glow-red);" ];

/// Style applied to lamp when the meter value is between the high and low threshold values.
Property normalStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "fill: url(#glow-blue);" ];

/// Style applied to lamp when the meter value is above the high threshold.
Property highStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "fill: url(#glow-green);" ];

XData SVGStyle
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderMeter() [ Language = javascript ]
{
}

/// Internal method: update lamp
ClientMethod updateLamp() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
