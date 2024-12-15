/// This dialog lets the user save a DeepSee pivot definition.
Class %DeepSee.UI.Dialog.PivotSave Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Pivot name.
Property pivotName As %ZEN.Datatype.string(ZENURL = "PIVOT");

/// Pivot description.
Property pivotDescription As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "DESC");

/// Pivot keywords.
Property pivotKeywords As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "WORDS");

/// Pivot owner.
Property pivotOwner As %ZEN.Datatype.string(MAXLEN = 255, ZENURL = "OWNER");

/// Pivot resource.
Property pivotResource As %ZEN.Datatype.string(MAXLEN = 255, ZENURL = "RESOURCE");

/// Pivot locked state.
Property pivotLocked As %ZEN.Datatype.boolean(ZENURL = "LOCKED") [ InitialExpression = 0 ];

/// Pivot public state.
Property pivotPublic As %ZEN.Datatype.boolean(ZENURL = "PUBLIC") [ InitialExpression = 0 ];

/// Pivot category.
Property pivotCategory As %ZEN.Datatype.string(ZENURL = "CATEGORY");

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

/// Test if the given pivot already exists.
ClassMethod PivotExists(pName As %String) As %Integer [ ZenMethod ]
{
}

/// Test if the user can write to the given folder.
ClassMethod CanWriteToFolder(pFolderName As %String) As %Integer [ ZenMethod ]
{
}

}
