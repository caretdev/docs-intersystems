/// SVG time range control.
/// This lets a user select a range of dates along a simple time line.
/// This is typically used to control another component, such as a chart
/// or time line.<br/>
/// The selected date range is specified by the <property>startRange</property> and
/// <property>endRange</property> properties. These are modified as the user interacts with the
/// control.<br/>
/// The <property>onchange</property> event will be fired whenever the user modifies the
/// time range.<br/>
/// The height of this component should be set to 40.<br/>
///
Class %ZEN.SVGComponent.timeRangeControl Extends svgComponent [ Deprecated, System = 3 ]
{

/// Time scale to display.
Property timeScale As %ZEN.Datatype.string(VALUELIST = ",years,months,days,hours") [ InitialExpression = "years" ];

/// Earliest time displayed on the time line (as YYYY-MM-DD HH:MM:SS). Rounded to current time scale.
Property startTime As %ZEN.Datatype.string [ InitialExpression = {+$ZDT($H,3)-10} ];

/// Latest time displayed on the time line (as YYYY-MM-DD HH:MM:SS). Rounded to current time scale.
Property endTime As %ZEN.Datatype.string [ InitialExpression = {+$ZDT($H,3)+5} ];

/// Start of current time range (as YYYY-MM-DD HH:MM:SS).
/// This is modified as the user interacts with the control.
Property startRange As %ZEN.Datatype.string;

/// End of current time range (as YYYY-MM-DD HH:MM:SS).
/// This is modified as the user interacts with the control.
Property endRange As %ZEN.Datatype.string;

/// Optional. Specifies the display format used for this component.
/// (Note that the internal value of this control is always YYYY-MM-DD).
/// Possible values are:<br/>
/// <ul>
/// <li>"YMD" - Year,Month,Day</li>
/// <li>"MDY" - Month,Day,Year</li>
/// <li>"DMY" - Day,Month,Year</li>
/// </ul>
Property dateFormat As %ZEN.Datatype.string(MAXLEN = 3, VALUELIST = ",MDY,DMY,YMD") [ InitialExpression = "YMD" ];

/// Time notation used for time values.
Property timeNotation As %ZEN.Datatype.string(MAXLEN = 3, VALUELIST = ",12h,24h") [ InitialExpression = "12h" ];

/// onchange event handler:
/// This event handler is called as the user changes the value of this control.
/// The <var>final</var> parameter is passed to this event indicating if the value
/// is the final value (at the end of the current action).
/// The <var>which</var> parameter is passed to this event indicating how the value
/// as been changed: 'translate' (move to new start time), or 'scale' (change in time scale).
Property onchange As %ZEN.Datatype.eventHandler;

/// This event handler is fired when the user clicks on the config icon (which
/// is only displayed if this event is defined).
Property onconfig As %ZEN.Datatype.eventHandler;

/// SVG style applied to "thumb" of scroll bar.
Property thumbStyle As %ZEN.Datatype.style [ InitialExpression = "fill:url(#glow-silver);" ];

XData SVGStyle
{
}

/// Reset the timeline to its initial state.
ClientMethod reset() [ Language = javascript ]
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Resize all elements related to current range.
ClientMethod updateScrollbar() [ Language = javascript ]
{
}

/// Return the time value (as yyyy-mm-dd [hh]) for the given x position on the time line.
ClientMethod getTimeForPos(x) [ Language = javascript ]
{
}

/// Raise onchange event.
ClientMethod onchangeHandler(final, which) [ Language = javascript ]
{
}

/// Raise onconfig event.
ClientMethod onconfigHandler() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Click on scroll button.
ClientMethod scrollBtnClick(evt, which) [ Language = javascript ]
{
}

/// Mouse over scroll button.
ClientMethod scrollBtnOver(evt, which) [ Language = javascript ]
{
}

/// Mouse out of scroll button.
ClientMethod scrollBtnOut(evt, which) [ Language = javascript ]
{
}

/// Mouse over cell rect.
ClientMethod unitRectOver(evt, which) [ Language = javascript ]
{
}

/// Mouse out of cell rect.
ClientMethod unitRectOut(evt, which) [ Language = javascript ]
{
}

/// Mouse click on cell rect.
ClientMethod unitRectClick(evt, which) [ Language = javascript ]
{
}

/// Drag handler for thumb.
ClientMethod dragThumb(evt) [ Language = javascript ]
{
}

/// Drag handler for grabber.
ClientMethod dragGrabber(evt, which) [ Language = javascript ]
{
}

/// Set the start and end time range dates and update.
/// If <var>endRange</var> is not provided, update it to preserve the current time range using
/// <var>startRange</var> as a new starting time.<br/>
/// Time values are in 'yyyy-mm-dd' format.
ClientMethod setTimeRange(startRange, endRange) [ Language = javascript ]
{
}

}
