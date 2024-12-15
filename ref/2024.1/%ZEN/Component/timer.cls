/// Client-side timer object.
/// This component automatically creates a javascript timer object within
/// the client and initializes it when the page is first loaded.
/// The timer is one-shot; after it fires its ontimeout event, you
/// must restart it by calling the client <method>startTimer</method> method.
Class %ZEN.Component.timer Extends component [ Deprecated, System = 3 ]
{

/// this component is not visible.
Parameter DEFAULTVISIBLE = 0;

/// ontimeout event handler:
/// Client code to run when timeout expires.
Property ontimeout As %ZEN.Datatype.eventHandler;

/// Timeout value (in milliseconds).<br>
/// Setting this to 0 will disable the timer.
Property timeout As %ZEN.Datatype.integer(MINVAL = 0);

/// Internal: id of client-side timer object
Property timerid As %ZEN.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// Start the timer.
ClientMethod startTimer() [ Language = javascript ]
{
}

/// Clear the timer object used by this component.
ClientMethod clearTimer() [ Language = javascript ]
{
}

/// This client event is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client method, if present, is called when this component is
/// removed from the page.
ClientMethod onDelete() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
