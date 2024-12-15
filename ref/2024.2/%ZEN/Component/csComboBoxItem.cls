/// %ZEN.Component.csComboBoxItem
Class %ZEN.Component.csComboBoxItem Extends component [ Deprecated, System = 3 ]
{

Parameter INCLUDEFILES = "zenCSLM.js,zenMenus.js";

/// label normally associated with the menu pick
Property caption As %ZEN.Datatype.caption;

/// If defined, keystroke of caption to invoke functionality when
/// menu is active
Property contextKey As %ZEN.Datatype.string;

/// If defined, an internal alternative return value for the combo box
/// If undefined, the caption is used as the value.
Property value As %ZEN.Datatype.string;

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
