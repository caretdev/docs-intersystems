/// This dialog lets the user save a DeepSee Link (folder item) definition.
Class %DeepSee.UI.Dialog.LinkSave Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// True if this is a "create new".
Property createNew As %ZEN.Datatype.boolean(ZENURL = "NEW");

/// True if this is a "save as".
Property saveAs As %ZEN.Datatype.boolean(ZENURL = "SAVEAS");

/// Link Name.
Property linkName As %ZEN.Datatype.string(ZENURL = "NAME");

/// Link title.
Property linkTitle As %ZEN.Datatype.string(ZENURL = "TITLE");

/// Link URL.
Property linkURL As %ZEN.Datatype.string(ZENURL = "URL");

/// Link owner.
Property linkOwner As %ZEN.Datatype.string(ZENURL = "OWNER");

/// Link resource.
Property linkResource As %ZEN.Datatype.string(ZENURL = "RESOURCE");

/// Description.
Property linkDescription As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "DESC");

/// Link public state.
Property linkPublic As %ZEN.Datatype.boolean(ZENURL = "PUBLIC") [ InitialExpression = 1 ];

/// Link keywords.
Property linkKeywords As %ZEN.Datatype.string(ZENURL = "WORDS");

/// Link category.
Property linkCategory As %ZEN.Datatype.string(ZENURL = "CATEGORY");

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

/// Test if the given link already exists.
ClassMethod LinkExists(pName As %String) As %Integer [ ZenMethod ]
{
}

/// Save the link.
ClassMethod SaveLink(pInfo As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Test if the user can write to the given folder.
ClassMethod CanWriteToFolder(pFolderName As %String) As %Integer [ ZenMethod ]
{
}

}
