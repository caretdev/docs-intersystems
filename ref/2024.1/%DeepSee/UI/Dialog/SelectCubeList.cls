/// This dialog allows the user to select from
Class %DeepSee.UI.Dialog.SelectCubeList Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// If true, the selection options will be limited to cubes only
Property CubesOnly As %ZEN.Datatype.boolean(ZENURL = "CUBESONLY") [ InitialExpression = 0 ];

/// If supplied, these cubes will be pre-selected when the dialog loads
Property CubeList As %ZEN.Datatype.string(ZENURL = "CUBELIST");

Property msgDefineRequest As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Select the cubes and subject areas which can use this listing group.")} ];

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method GetCubeResource(pCubeName) As %String
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
