/// This dialog lets the user save a DeepSee Report (folder item) definition.
/// This is not an actual report but a report to a previously defined report.
Class %DeepSee.UI.Dialog.ReportSave Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// True if this is a "create new".
Property createNew As %ZEN.Datatype.boolean(ZENURL = "NEW");

/// True if this is a "save as".
Property saveAs As %ZEN.Datatype.boolean(ZENURL = "SAVEAS");

/// Report Name.
Property reportName As %ZEN.Datatype.string(ZENURL = "NAME");

/// Report title.
Property reportTitle As %ZEN.Datatype.string(ZENURL = "TITLE");

/// Report class.
Property reportClass As %ZEN.Datatype.string(ZENURL = "REPORT");

/// Report (link) owner.
Property reportOwner As %ZEN.Datatype.string(ZENURL = "OWNER");

/// Report (link) resource.
Property reportResource As %ZEN.Datatype.string(ZENURL = "RESOURCE");

/// Description of this link.
Property reportDescription As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "DESC");

/// Report public state.
Property reportPublic As %ZEN.Datatype.boolean(ZENURL = "PUBLIC") [ InitialExpression = 1 ];

/// Report keywords.
Property reportKeywords As %ZEN.Datatype.string(ZENURL = "WORDS");

/// Report category.
Property reportCategory As %ZEN.Datatype.string(ZENURL = "CATEGORY");

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

/// Test if the given report already exists.
ClassMethod ReportExists(pName As %String) As %Integer [ ZenMethod ]
{
}

/// Save the report.
ClassMethod SaveReport(pInfo As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Test if the user can write to the given folder.
ClassMethod CanWriteToFolder(pFolderName As %String) As %Integer [ ZenMethod ]
{
}

}
