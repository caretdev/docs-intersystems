/// A set of SVG-based compass buttons: a set of buttons used
/// for scrolling a region in any of four directions.<br>
Class %ZEN.SVGComponent.compassButtons Extends svgComponent [ Deprecated, System = 3 ]
{

Parameter DEFAULTBOUNDLESS = 1;

/// onbuttonClick event handler:
/// This event handler is called when the user clicks on one of
/// the buttons displayed by this component.
/// The variable, <var>direction</var>, is passed to the callback and
/// corresponds to which button was pressed. Possible values are:
/// "up","down","left","right",and "home".
Property onbuttonClick As %ZEN.Datatype.eventHandler;

XData SVGStyle
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Render a single compass button.
ClientMethod renderButton(direction, x, y) [ Language = javascript ]
{
}

/// Click handler for buttons.
ClientMethod clickHandler(evt, direction) [ Language = javascript ]
{
}

/// Mouseover handler for buttons.
ClientMethod mouseoverHandler(evt, direction) [ Language = javascript ]
{
}

/// Mouseout handler for buttons.
ClientMethod mouseoutHandler(evt, direction) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
