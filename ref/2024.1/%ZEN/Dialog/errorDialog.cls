/// This is the error dialog page.
/// It displays an error message and a prompt which user can answer Yes or No.
/// If error details are available in %session.Data("Errors","Details") then they are displayed in a listbox.<br>
/// To use this class:
/// <ol>
/// <li>Set the following before calling this dialog:</li>
/// <li>%session.Data("Errors","Messages",1) - Message title such as "WARNING". </li>
/// <li>%session.Data("Errors","Messages",2) - Message line. </li>
/// <li>%session.Data("Errors","Messages",3) - Prompt such as "Proceed?"</li>
/// </ol>
/// <p>Example calling this dialog:<br>
/// zenLaunchPopupWindow('%ZEN.Dialog.errorDialog.cls','errorDialog','resizable,width=780,height=280');
/// </p>
Class %ZEN.Dialog.errorDialog Extends standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter AUTONS = 0;

Parameter dialogTitle = "errorDialog";

XData Style
{
}

/// Contents of this page:
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Contents of the dialog.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Load error message prompts set by the calling class.
/// Load error details. Hide list box if nothing.
Method %OnAfterCreatePage() As %Status
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

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.
ClientMethod ondialogFinish(action) [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

}
