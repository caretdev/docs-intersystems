/// SVG speedometer meter.<br>
/// This displays a value within a representation of a speedometer.<br/>
/// Note: to get the older look of this component, set the <property>stylized</property> true.
Class %ZEN.SVGComponent.speedometer Extends meter [ Deprecated, System = 3 ]
{

/// If true, the odometer will show an independent value;
/// if false, the odometer will show the same value as the needle.
Property independentOdometer As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, render a stylized speedometer (the classic Zen visualization);
/// if false, render a more baroque speedometer (the classic DeepSee visualization);
Property stylized As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, render a thin needle, otherwise
/// use a wider needle.
Property thinNeedle As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If <property>independentOdometer</property> is true,
/// then this is the value displayed in the odometer.
Property odometerValue As %ZEN.Datatype.string;

/// Text for logo displayed in center of dial (for stylized display only).
Property logo As %ZEN.Datatype.caption [ InitialExpression = "Zen" ];

/// Fill color used for low indicator lamp.
Property lowLampColor As %ZEN.Datatype.color [ InitialExpression = "url(#glow-red)" ];

/// Fill color used for high indicator lamp.
Property highLampColor As %ZEN.Datatype.color [ InitialExpression = "url(#glow-red)" ];

/// Optional. Style applied to scale ring values below the low threshold value.
/// This only applies to non-stylized views.
Property lowRangeStyle As %ZEN.Datatype.style;

/// Optional. Style applied to scale ring values above the low threshold value.
/// This only applies to non-stylized views.
Property highRangeStyle As %ZEN.Datatype.style;

/// Optional. Style applied to needle.
Property needleStyle As %ZEN.Datatype.style;

/// Optional. Style applied to nub (circle over center of needle).
Property nubStyle As %ZEN.Datatype.style;

/// Optional. Style applied to outer region.
Property outerCircleStyle As %ZEN.Datatype.style;

/// Optional. Style applied to mid-region circle (where tick marks appear in non-stylized view).
/// This is beneath the "ring".
Property midCircleStyle As %ZEN.Datatype.style;

/// Optional. Style applied to mid-region ring (where tick marks appear in non-stylized view).
Property ringStyle As %ZEN.Datatype.style;

/// Optional. Style applied to inner region.
Property innerCircleStyle As %ZEN.Datatype.style;

/// Optional. Style applied to lines between value labels.
Property separatorStyle As %ZEN.Datatype.style;

/// Optional. Style applied to value labels.
Property valueLabelStyle As %ZEN.Datatype.style;

/// Optional. Style applied to odometer box.
Property odometerBoxStyle As %ZEN.Datatype.style;

/// Optional. Style applied to odometer value.
Property odometerTextStyle As %ZEN.Datatype.style;

/// Numeric format string to apply to the odometer value.
Property odometerFormat As %ZEN.Datatype.string;

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

/// Render the inner SVG contents of this component using DeepSee style.
ClientMethod renderMeterBaroque() [ Internal, Language = javascript ]
{
}

/// Render the inner SVG contents of using classic Zen style.
ClientMethod renderMeterStylized() [ Internal, Language = javascript ]
{
}

/// Render the needle.
ClientMethod renderNeedle() [ Internal, Language = javascript ]
{
}

/// Render the odometer.
ClientMethod renderOdometer() [ Internal, Language = javascript ]
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

/// Return a numeric abbreviation for a value.
/// <var>min</var> and <var>max</var> are range that value falls within.
/// E.g., 10K for 10000
ClientMethod getNumericAbbreviation(val, min, max) [ Language = javascript ]
{
}

}
