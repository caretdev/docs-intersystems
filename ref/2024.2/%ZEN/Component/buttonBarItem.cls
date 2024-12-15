/// %ZEN.Component.buttonBarItem
Class %ZEN.Component.buttonBarItem Extends component [ Deprecated, System = 3 ]
{

Parameter INCLUDEFILES = "zenCSLM.js,zenMenus.js";

/// URI of image to display under normal conditions.
Property icon As %ZEN.Datatype.uri;

/// URI of image to display when option is grayed-out.
Property iconDisabled As %ZEN.Datatype.uri;

/// If defined, roll over tooltip to display when button is enabled
Property caption As %ZEN.Datatype.string;

/// onclick event handler:
/// This event is fired when the mouse is clicked on the buttonBarItem.
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

}
