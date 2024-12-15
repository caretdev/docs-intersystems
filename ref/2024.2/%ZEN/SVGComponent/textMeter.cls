/// SVG text meter.<br/>
/// This meter displays a value as text within a rectangular region.<br/>
/// This control looks best when its height is one quarter of its width.
Class %ZEN.SVGComponent.textMeter Extends meter [ Deprecated, System = 3 ]
{

/// Override viewBoxWidth for this component.
Parameter DEFAULTVIEWBOXWIDTH = 100;

/// Override viewBoxHeight for this component.
Parameter DEFAULTVIEWBOXHEIGHT = 25;

/// Additional style applied to the background of this meter.
Property backgroundStyle As %ZEN.Datatype.svgStyle;

/// Numeric format string to apply to the value.
Property format As %ZEN.Datatype.string;

/// Style applied to text when the meter value is below the low threshold.
Property lowStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "fill: #804040;" ];

/// Style applied to text when the meter value is between the high and low threshold values.
Property normalStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "fill: #404040;" ];

/// Style applied to text when the meter value is above the high threshold.
Property highStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "fill: #404080;" ];

XData SVGStyle
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderMeter() [ Language = javascript ]
{
}

/// Internal method: update the meter.
ClientMethod updateMeter() [ Internal, Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
