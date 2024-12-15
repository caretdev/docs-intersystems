/// SVG TimeLine component.
/// This displays a series of "events" along a time line.
Class %ZEN.SVGComponent.timeLine Extends svgComponent [ Deprecated, System = 3 ]
{

/// Earliest displayed time (as YYYY-MM-DD HH:MM:SS).
Property startTime As %ZEN.Datatype.string;

/// Latest displayed time (as YYYY-MM-DD HH:MM:SS).
Property endTime As %ZEN.Datatype.string;

/// "Birth date" (as YYYY-MM-DD HH:MM:SS).
/// If provided, then a time bar showing current age is also displayed.
Property birthDate As %ZEN.Datatype.string;

/// Id of selected item.
Property selectedId As %ZEN.Datatype.string;

/// Chart title.
Property title As %ZEN.Datatype.string;

/// Optional. Specifies the display format used for this component.
/// (Note that the internal value of this control is always YYYY-MM-DD).
/// Possible values are:<br/>
/// <ul>
/// <li>"YMD" - Year,Month,Day</li>
/// <li>"MDY" - Month,Day,Year</li>
/// <li>"DMY" - Day,Month,Year</li>
/// </ul>
Property dateFormat As %ZEN.Datatype.string(MAXLEN = 3, VALUELIST = ",MDY,DMY,YMD") [ InitialExpression = "YMD" ];

/// Height (in pixels) of a time span box on the time line.
Property spanHeight As %ZEN.Datatype.integer [ InitialExpression = 20 ];

/// Left margin (in pixels).
Property marginLeft As %ZEN.Datatype.integer [ InitialExpression = 20 ];

/// Right margin (in pixels).
Property marginRight As %ZEN.Datatype.integer [ InitialExpression = 20 ];

/// ongetdata event handler:
/// This defines the client-side code that returns
/// an graph of javascript objects used to provide the contents of this view.
Property ongetdata As %ZEN.Datatype.eventHandler;

/// onselect event handler:
/// This event handler is called when the user selects a new item within the timeline.
Property onselect As %ZEN.Datatype.eventHandler;

/// onrenderitem event handler:
/// This event handler is called when an event is plotted and makes it possible to plot
/// custom content on the time line.
Property onrenderitem As %ZEN.Datatype.eventHandler;

XData SVGStyle
{
}

/// Set the timeline start and end dates and update.
/// Time values are in 'yyyy-mm-dd' format.
/// This prevents the repaint that would happen if start and end dates are set separately.
/// If <var>endTime</var> is not provided, update it to preserve the current time range using
/// <var>startTime</var> as a new starting time.<br/>
/// If <var>reset</var> is true, clear the internal structures used to compute the locations
/// of the time events.<br/>
/// If <var>which</var> is provided, it specifies whether the change is "translate" or "scale"
/// (to make it easy to connect to a timeRange controller).
ClientMethod setTimeRange(startTime, endTime, reset, which) [ Language = javascript ]
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Render the time cells on the top/bottom.
ClientMethod renderTimeCells() [ Language = javascript ]
{
}

/// Render the actual time line data.
ClientMethod renderData(dataGroup, marginTop) [ Language = javascript ]
{
}

/// Render one item on the timeline.
/// <var>group</var> is the svg group to append to.
/// <var>length</var> is the length (in pixels) of the time range to plot..
/// Return the size of the rendered item via <var>size</var>.
ClientMethod renderOneItem(group, item, length, size) [ Language = javascript ]
{
}

/// Return information about a cell within the grid line.
ClientMethod getCellInfo(cell, majorUnits, minorUnits, index) [ Language = javascript ]
{
}

/// Get the model used to drive the user portion of the time line.
ClientMethod getModel() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Take the user-supplied data model and sort it by time.
/// Return a sorted and decorated model.
/// Also find earliest and latest times and return via <var>range</var> object.
ClientMethod sortModel(model, range) [ Language = javascript ]
{
}

/// Click on item.
ClientMethod itemClick(evt, newId) [ Language = javascript ]
{
}

/// Select an item.
ClientMethod selectItem(newId) [ Language = javascript ]
{
}

/// Compute the age between currDate and birthDate, return it as an object.
ClientMethod computeAge(birthDate, currDate) [ Language = javascript ]
{
}

/// Drag handler for vertical scrollbar thumb.
ClientMethod dragThumb(evt) [ Language = javascript ]
{
}

}
