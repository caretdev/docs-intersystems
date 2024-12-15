/// This dialog lets the user send a dashboard via email.
Class %DeepSee.UI.Dialog.SendMail Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Dashboard name.
Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");

/// Dashboard title.
Property dashboardTitle As %ZEN.Datatype.string(ZENURL = "TITLE");

/// Dashboard URL
Property dashboardURL As %ZEN.Datatype.string(ZENURL = "URL");

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

ClassMethod DrawHelp(pSeed As %String) As %Status
{
}

/// Send an email message using the system-defined SMTP server.
ClassMethod SendMailViaSMTP(pSendTo As %String, pSubject As %String, pComments As %String, pURL As %String) As %String [ ZenMethod ]
{
}

/// Remember this sendTo address in local list.
ClassMethod %RegisterSendTo(pSendTo As %String) As %Status
{
}

/// Clear the sendTo history for the current user.
ClassMethod ClearHistory() [ ZenMethod ]
{
}

}
