/// This dialog lets the user Add a new DeepSee cube or subject area definition.
Class %DeepSee.UI.Dialog.CubeAdd Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// possibly use this to indicate adding cube or dimension?
Property mode As %ZEN.Datatype.string(ZENURL = "MODE") [ InitialExpression = "cube" ];

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

Property msgCube As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a valid Cube Name.")} ];

Property msgSub As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a valid Subject Area Name.")} ];

Property msgClass As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a valid Class Name for the Cube.")} ];

Property msgSAClass As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a valid Class Name for the Subject Area.")} ];

Property msgSourceClass As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a valid Source Class.")} ];

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

/// User modified cubeName. Default it to other names if they have not been set.
ClientMethod nameChanged(cubeName) [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// User changed definition type
ClientMethod changeType() [ Language = javascript ]
{
}

/// Execute the selection of the cube source radio button.
ClientMethod changeSourceType() [ Language = javascript ]
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

/// Test if the given cube name is valid.
ClassMethod IsValidCubeName(pCubeName As %String) As %Boolean [ ZenMethod ]
{
}

/// Remove spaces inside a string.
ClassMethod TrimSpaces(pName As %String) As %String [ ZenMethod ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Invoke class finder dialog. popupName="sourceclasses" or "cubes"
ClientMethod browseClass(popupName) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Save general association data to server and compile.
ClassMethod SaveData(Type, cubeName, className, sourceClass, description, displayName, filterSpec, baseCube, cubeSourceType) As %String [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
