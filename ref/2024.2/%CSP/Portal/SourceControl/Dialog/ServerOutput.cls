/// Helper dialog to display the server-side output from Source Control classes.
/// This class should only be opened from a class which extends <class>%CSP.Portal.SourceControl.Base</class>.
/// Note that any changes to this class should also be propagated to EnsPortal.Dialog.SourceControlOutput.
Class %CSP.Portal.SourceControl.Dialog.ServerOutput Extends %ZEN.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

Parameter CANCELBUTTON = 0;

/// Flag to avoid certain Zen behaviours regarding the closing of the popup.
Property isNotZenPopup As %ZEN.Datatype.string(ZENURL = "NOTZENPOPUP");

XData Style
{
}

XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Refresh the output based on the data supplied in array or from the server.
/// This method also hides the new output indicator on the source page.
/// Note that this method is copied in the Interoperability subclass, so any changes
/// also need to be implemented there as well.
ClientMethod refreshOutput(array) [ Language = javascript ]
{
}

/// clear output from the session and update the display.
/// Note that this method is copied in the Interoperability subclass, so any changes
/// also need to be implemented there as well.
ClientMethod clearOutput() [ Language = javascript ]
{
}

/// Remove the output data from the session.
ClassMethod ClearSCOutput() As %Integer [ ZenMethod ]
{
}

/// Draw the clear and refresh buttons.
Method DrawButtons(pSeed As %String) As %Status
{
}

/// Write out the contents of the current session's output.
/// If there is no data, write out a non-breaking space for display purposes.
Method DrawOutput(pSeed As %String) As %Status
{
}

Method %OnGetTitle() As %String
{
}

Method %OnGetSubtitle() As %String
{
}

/// This dialog doesn't return a value.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// Override the handling of <method>firePopupAction</method> for the
/// default case where the popup has not been launched using zenLaunchPopupWindow().
ClientMethod dialogFinish() [ Language = javascript ]
{
}

/// Close the window and update the parent when the user is finished with the page.
ClientMethod ondialogFinish(action) [ Language = javascript ]
{
}

/// Ensure that we refresh the output (and thus update the parent flag)
/// whenever the user comes back to the popup.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Ensure that the parent page knows when this page gets closed.
ClientMethod onunloadHandler() [ Language = javascript ]
{
}

}
