/// This dialog compiles a DeepSee cube definition and displays the output.
Class %DeepSee.UI.Dialog.CubeCompile Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Dialog mode:<br/>
/// "compilecube" -- save a cube. "compilesub" -- compile a subjectarea. <br/>
Property mode As %ZEN.Datatype.string(ZENURL = "MODE") [ InitialExpression = "compilecube" ];

/// Cube class name.
Property cubeClass As %ZEN.Datatype.string(ZENURL = "CLASS");

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Compile status
Property status As %ZEN.Datatype.string;

/// Compile tracking ID
Property trackingId As %ZEN.Datatype.integer;

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

/// Start the compile
ClientMethod compile() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

/// Check compile status periodically.
ClientMethod timeout() [ Language = javascript ]
{
}

ClassMethod CheckStatus(pCubeClass, pTrackingId) As %String [ ZenMethod ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.
ClientMethod ondialogFinish(action) [ Language = javascript ]
{
}

}
