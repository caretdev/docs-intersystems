/// SVG traffic light meter.<br>
/// This displays a value within a stylized representation of a trafic light.<br>
/// The light logic depends on the relative values of the <property>rangeLower</property> and
/// <property>rangeUpper</property> properties and works as follows:<br>
/// If <property>rangeLower</property> is less than (or equal to) <property>rangeUpper</property>, then
/// the light is green when the level is less than (or equal to) <property>thresholdLower</property> and
/// the light is red when the level is greater than (or equal to) <property>thresholdUpper</property> otherwise
/// the light is yellow.<br>
/// If <property>rangeLower</property> is greater then <property>rangeUpper</property>, then
/// the light is red when the level is less than (or equal to) <property>thresholdLower</property> and
/// the light is green when the level is greater than (or equal to) <property>thresholdUpper</property> otherwise
/// the light is yellow.<br>
/// This control looks best when its width is half of its height.
Class %ZEN.SVGComponent.trafficLight Extends meter [ Deprecated, System = 3 ]
{

/// Optional. Style applied to outer region.
Property outerBodyStyle As %ZEN.Datatype.style;

/// Override viewBoxWidth for this component.
Parameter DEFAULTVIEWBOXWIDTH = 50;

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
ClientMethod updateLamps() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
