/// This dialog lets the user create or edit a pivot variable within a DeepSee pivot table.
Class %DeepSee.UI.Dialog.PivotVariable Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

Property variableName As %ZEN.Datatype.string(ZENURL = "VARIABLE");

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

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Save a pivot variable.
ClassMethod SavePivotVariable(pCube As %String, pVariableName As %String, pDisplayName As %String, pDescription As %String, pDefValue As %String, pContext As %String, pType As %String, pSourceType As %String, pSourceName As %String, pValueList As %String, pDisplayList As %String) As %String [ ZenMethod ]
{
}

/// Test if pivot variable exists.
ClassMethod PivotVariableExists(pCube As %String, pVariableName As %String) As %Boolean [ ZenMethod ]
{
}

ClientMethod typeChange() [ Language = javascript ]
{
}

/// Launch the termlist finder dialog.
ClientMethod loadTermlist() [ Language = javascript ]
{
}

/// Launch the KPI finder dialog.
ClientMethod loadKPI() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
