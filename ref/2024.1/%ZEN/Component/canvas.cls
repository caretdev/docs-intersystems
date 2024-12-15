/// HTML5 Canvas Element.<br/>
/// This is a wrapper around the HTML5 Canvas element.<br/>
/// This only works with an HTML5 browser that supports the Canvas element.
Class %ZEN.Component.canvas Extends component [ Deprecated, System = 3 ]
{

/// onrender event handler:
/// This event is fired by the render method and can supply
/// the content displayed by this component.
/// As a convenience, the event is passed an argument, context, which is the graphic context of the canvas
/// element.
Property onrender As %ZEN.Datatype.eventHandler;

/// Fallback HTML content to display. This is diplayed in browsers that do not support the Canvas element.
Property content As %ZEN.Datatype.html(CONTENT = "MIXED", ESCAPE = "HTML", XMLPROJECTION = "content");

Method %DrawHTML()
{
}

/// Render the contents of this component's canvas.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Return the 2D drawing context for this canvas element.<br/>
/// Returns null if the browser does not support the canvas element.
ClientMethod getContext() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
