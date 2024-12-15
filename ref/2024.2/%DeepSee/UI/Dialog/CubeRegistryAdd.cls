/// This dialog allows the user to define a new Cube Registry Storage Class
Class %DeepSee.UI.Dialog.CubeRegistryAdd Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

Property msgRegistry As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a valid Cube Registry Class Name.")} ];

Property msgActiveNeeded As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("There is no active Cube Registry defined for this namespace.")} ];

Property msgDefineRequest As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please define a new Cube Registry.")} ];

Property activeRegistryExists As %Boolean(ZENURL = "ACTIVE") [ InitialExpression = 1 ];

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

/// Take steps to clean the user modified registryName.
ClientMethod nameChanged(registryName) [ Language = javascript ]
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

/// Remove spaces inside a string.
ClassMethod TrimSpaces(pName As %String) As %String [ ZenMethod ]
{
}

/// Save general association data to server and compile.
Method SaveData(pClassName) As %String [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
