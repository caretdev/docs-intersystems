/// This dialog lets the user save a DeepSee Dashboard definition.
Class %DeepSee.UI.Dialog.DashboardSave Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// True if this is a "create new".
Property createNew As %ZEN.Datatype.boolean(ZENURL = "NEW");

/// True if this is a "save as".
Property saveAs As %ZEN.Datatype.boolean(ZENURL = "SAVEAS");

/// Pivot description.
Property dashboardDescription As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "DESC");

/// Pivot keywords.
Property dashboardKeywords As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "WORDS");

/// Dashboard name.
Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");

/// Dashboard title.
Property dashboardTitle As %ZEN.Datatype.string(ZENURL = "TITLE");

/// Dashboard owner.
Property dashboardOwner As %ZEN.Datatype.string(ZENURL = "OWNER");

/// Dashboard resource.
Property dashboardResource As %ZEN.Datatype.string(ZENURL = "RESOURCE");

/// Dashboard category
Property dashboardCategory As %ZEN.Datatype.string(ZENURL = "CATEGORY");

/// Dashboard public state.
Property dashboardPublic As %ZEN.Datatype.boolean(ZENURL = "PUBLIC") [ InitialExpression = 1 ];

/// Dashboard snapTo.
Property dashboardSnapTo As %ZEN.Datatype.boolean(ZENURL = "SNAPTO") [ InitialExpression = 1 ];

/// Dashboard snapGrid.
Property dashboardSnapGrid As %ZEN.Datatype.boolean(ZENURL = "SNAPGRID") [ InitialExpression = 0 ];

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

/// Test if the given dashboard already exists.
ClassMethod DashboardExists(pName As %String) As %Integer [ ZenMethod ]
{
}

/// Test if the user can write to the given folder.
ClassMethod CanWriteToFolder(pFolderName As %String) As %Integer [ ZenMethod ]
{
}

}
