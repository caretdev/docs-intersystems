/// Change password dialog for Management Portal
Class %CSP.UI.Portal.Dialog.ChangePassword Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

/// Displayed name of this page.
Parameter PAGENAME = "ChangePassword";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property UserName As %ZEN.Datatype.string(MAXLEN = 160) [ InitialExpression = {$Username} ];

Property msgPassword As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("The two new passwords are not the same. Please type them again.")} ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this pane.
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

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

ClassMethod SaveData(password, oldpassword) As %String [ ZenMethod ]
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

}
