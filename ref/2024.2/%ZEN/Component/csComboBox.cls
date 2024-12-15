/// %ZEN.Component.csComboBox
Class %ZEN.Component.csComboBox Extends group [ Deprecated, System = 3 ]
{

Parameter INCLUDEFILES = "zenCSLM.js,zenMenus.js";

/// label normally associated with the menu pick
Property defaultCaption As %ZEN.Datatype.string [ InitialExpression = "Select..." ];

Property onchange As %ZEN.Datatype.eventHandler;

Property value As %ZEN.Datatype.string;

Property icon As %ZEN.Datatype.uri [ InitialExpression = "images/SmDownArrow.png" ];

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
