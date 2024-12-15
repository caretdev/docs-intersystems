/// Zen page for System Management Portal - Edit Async Configuration
Class %CSP.UI.Portal.Mirror.Dialog.AsyncEdit Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mirror.Dialog.AsyncEdit.zen";

/// Displayed name of this page.
Parameter PAGENAME = "EditAsync";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property ErrorMsg As %String;

Property MirrorName As %ZEN.Datatype.string(ZENURL = "MirrorName");

Property MemberName As %ZEN.Datatype.string(ZENURL = "MemberName");

Property lblText1 As %String;

Property lblText2 As %String;

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod doEdit(nodeName) [ Language = javascript ]
{
}

ClassMethod DrawMemberType(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// Set Locator bar and determine whether to show change password option.
Method %OnAfterCreatePage() As %Status
{
}

/// This callback, if defined, is called when the user presses the Cancel button.
/// If this returns false, then the dialog is not cancelled.
ClientMethod ondialogCancel() [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
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

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

}
