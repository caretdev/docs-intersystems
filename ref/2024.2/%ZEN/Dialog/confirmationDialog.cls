/// This is the confirmation dialog page.
/// It displays confirmation message and a prompt which user can answer Yes or No.
/// To use this class:
/// <ol>
/// <li>Set the following before calling this dialog:</li>
/// <li>%session.Data("Confirmation","Messages",1) - Message title such as "DELETE?". </li>
/// <li>%session.Data("Confirmation","Messages",2) - Message line. </li>
/// <li>%session.Data("Confirmation","Messages",3) - Prompt such as "Proceed?"</li>
/// <li>%session.Data("Confirmation","btnOk",1) - Caption for the OK button such as "Yes". </li>
/// <li>%session.Data("Confirmation","btnCancel",1) - Caption for the CANCEL button such as "No". </li>
/// </ol>
/// <p>Example calling this dialog:<br>
/// zenLaunchPopupWindow('%ZEN.Dialog.confirmationDialog.cls','confirmationDialog','resizable,width=380,height=180');
/// </p>
Class %ZEN.Dialog.confirmationDialog Extends standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter AUTONS = 0;

Property link As %ZEN.Datatype.string;

Parameter dialogTitle = "confirmationDialog";

XData Style
{
}

/// Contents of the dialog.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Load error message prompts set by the calling class
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

Method DrawHTML(pSeed) As %Status
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

ClientMethod onloadHandler() [ Language = javascript ]
{
}

Method %DrawTitle(pSeed As %String) As %Status
{
}

}
