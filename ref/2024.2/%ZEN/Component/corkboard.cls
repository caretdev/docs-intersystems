/// %ZEN.Component.corkboard
Class %ZEN.Component.corkboard Extends abstractDragGroupMgr [ Deprecated, System = 3 ]
{

Parameter INCLUDEFILES = "zenCorkboard.js";

/// The logical name of the manager with respect to the external JavaScript
/// code that actually manages the space
Property groupName As %ZEN.Datatype.string [ InitialExpression = "corkboard" ];

XData Style
{
}

Method %DrawHTML()
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
