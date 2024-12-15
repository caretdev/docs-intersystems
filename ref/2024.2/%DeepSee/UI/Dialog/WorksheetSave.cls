/// This dialog lets the user save a DeepSee worksheet.
Class %DeepSee.UI.Dialog.WorksheetSave Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Worksheet name.
Property worksheetName As %ZEN.Datatype.string(ZENURL = "WORKSHEET");

/// Worksheet description.
Property worksheetDescription As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "DESC");

/// Worksheet keywords.
Property worksheetKeywords As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "WORDS");

/// Worksheet owner.
Property worksheetOwner As %ZEN.Datatype.string(MAXLEN = 255, ZENURL = "OWNER");

/// Worksheet resource.
Property worksheetResource As %ZEN.Datatype.string(MAXLEN = 255, ZENURL = "RESOURCE");

/// Worksheet locked state.
Property worksheetLocked As %ZEN.Datatype.boolean(ZENURL = "LOCKED") [ InitialExpression = 0 ];

/// Worksheet public state.
Property worksheetPublic As %ZEN.Datatype.boolean(ZENURL = "PUBLIC") [ InitialExpression = 0 ];

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

/// Test if the given worksheet already exists.
ClassMethod WorksheetExists(pName As %String) As %Integer [ ZenMethod ]
{
}

}
