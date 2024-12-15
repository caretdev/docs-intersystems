/// %ZEN.Component.csMenuBarItem
Class %ZEN.Component.csMenuBarItem Extends group [ Deprecated, System = 3 ]
{

Parameter INCLUDEFILES = "zenCSLM.js,zenMenus.js";

/// label normally associated with the menu pick
Property caption As %ZEN.Datatype.caption;

/// If defined, keystroke of caption to invoke functionality when
/// menu is active
Property contextKey As %ZEN.Datatype.string;

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

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
