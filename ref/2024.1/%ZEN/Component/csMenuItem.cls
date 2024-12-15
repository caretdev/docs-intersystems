/// %ZEN.Component.csMenuItem
Class %ZEN.Component.csMenuItem Extends group [ Deprecated, System = 3 ]
{

Parameter INCLUDEFILES = "zenCSLM.js,zenMenus.js";

/// URI of image to display under normal conditions.
Property icon As %ZEN.Datatype.uri;

/// URI of image to display when option is grayed-out.
Property iconDisabled As %ZEN.Datatype.uri;

/// label normally associated with the menu pick
Property caption As %ZEN.Datatype.caption;

/// If defined, keystroke of caption to invoke functionality when
/// menu is active
Property contextKey As %ZEN.Datatype.string;

/// If defined, global keyboard shortcut to simulate a mouse click
Property key As %ZEN.Datatype.string;

/// URI of alternate image to display under toggled conditions.
Property altIcon As %ZEN.Datatype.uri;

/// If defined, alternate label for a toggled menu pick
Property altCaption As %ZEN.Datatype.string;

/// If defined, global keyboard shortcut to invoke alternate behavior
Property altKey As %ZEN.Datatype.string;

/// If defined, a flag to indicate that a checkmark (instead of an alternate
/// caption) should be used to indicate a toggled state of the menu pick
Property toggleMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If toggleMode is true or an alternate caption has been defined, this flag
/// is used to indicate the current state of the menu pick.  A value of zero
/// indicates the base state (no check mark visible, primary caption in use).
/// A value of 1 indicates that either a check mark is visible or the alternate
/// caption is currently being displayed.  This attribute may also be used
/// to set the initial state of the menu pick.
Property toggleState As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// onclick event handler:
/// This event is fired when the mouse is clicked on the csMenuItem or
/// when the key or altKey shortcuts have been typed
Property onclick As %ZEN.Datatype.eventHandler;

XData Style
{
}

Method %DrawHTML()
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Unpack the short form of the widget as dished up by the web server
/// in to the full DOM subtree used in the browser
ClientMethod initializeClientSideProjection() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
