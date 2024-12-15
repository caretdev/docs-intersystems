/// This dialog lets the user save a DeepSee cube definition.
Class %DeepSee.UI.Dialog.CubeSave Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Dialog mode:<br/>
/// "savecube" -- save a cube. "savesub" -- save a subjectarea. <br/>
Property mode As %ZEN.Datatype.string(ZENURL = "MODE") [ InitialExpression = "savecube" ];

/// Cube class name.
Property cubeClass As %ZEN.Datatype.string(ZENURL = "CLASS");

/// Cube class description.
Property cubeDescription As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "DESC");

/// Cube name or Subjectarea name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
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

/// Test if the given class name is valid.
ClassMethod IsValidClassName(pClassName As %String) As %Boolean [ ZenMethod ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
