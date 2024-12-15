/// An SVG slider control.
/// (This is still experimental and subject to change).
Class %ZEN.SVGComponent.slider Extends meter [ Deprecated, System = 3 ]
{

/// Override viewBoxWidth for this component.
Parameter DEFAULTVIEWBOXWIDTH = 10;

/// Number of tick marks to display within the slider.
Property tickMarks As %ZEN.Datatype.integer(MINVAL = 0) [ InitialExpression = 10 ];

/// If true (the default), then constrain the value of the slider so that it corresponds
/// to one of the tick marks displayed within the slider.
Property constrained As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

XData SVGStyle
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderMeter() [ Language = javascript ]
{
}

/// Drag handler for thumb.
ClientMethod dragThumb(evt) [ Language = javascript ]
{
}

/// Mouse down handler for up/down buttons.
ClientMethod mouseDownHandler(evt, which) [ Language = javascript ]
{
}

/// Timer handler for up/down buttons.
ClientMethod btnTimerHandler(which) [ Language = javascript ]
{
}

/// Mouse up handler for up/down buttons.
ClientMethod mouseUpHandler(evt, which) [ Language = javascript ]
{
}

/// Find the value of the next tick mark (in the direction specified
/// by <var>which</var>).
ClientMethod findNextTickValue(which) [ Language = javascript ]
{
}

/// Apply rounding (if needed) to a value that will be applied to the slider.
/// If the slider is constrained, then round the value to the nearest tick mark.
ClientMethod roundValue(value) [ Language = javascript ]
{
}

/// Internal method: get the value that corresponds to screen position <var>p</var>.
ClientMethod getValueForPos(p) [ Internal, Language = javascript ]
{
}

/// Internal method: update position of thumb.
ClientMethod updateThumb(animate) [ Internal, Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
