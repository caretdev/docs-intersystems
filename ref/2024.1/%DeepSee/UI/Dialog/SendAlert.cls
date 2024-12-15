/// This dialog lets the user send a DeepSee dashboard alert.
Class %DeepSee.UI.Dialog.SendAlert Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Dashboard name.
Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");

/// Dashboard title.
Property dashboardTitle As %ZEN.Datatype.string(ZENURL = "TITLE");

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

/// Send the alert.<br/>
/// <var>pTargetList</var> is csv list of user ids.<br/>
ClassMethod SendAlert(pTargetList As %String, pDashboardName As %String, pPriority As %String, pSubject As %String, pComments As %String) As %String [ ZenMethod ]
{
}

ClassMethod DrawHelp(pSeed As %String) As %Status
{
}

ClassMethod DrawUserList(pSeed As %String) As %Status
{
}

}
