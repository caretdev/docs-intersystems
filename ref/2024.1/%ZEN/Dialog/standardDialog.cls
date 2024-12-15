/// This base class provides a standard template for the dialog pages
/// provided by Zen. The various dialog pages are implemented as subclasses
/// of this class.<br>
/// To create a new dialog based on this class:
/// <ol>
/// <li>Create a subclass of this class.</li>
/// <li>Define an XData block named dialogBody.</li>
/// <li>Within this XData block define the contents of the dialog using a pane component as the container.</li>
/// <li>Override the <method>%OnGetTitle</method> to provide the dialog title.</li>
/// <li>Override the <method>%OnGetSubtitle</method> to provide the dialog subtitle.</li>
/// <li>Override the <method>getDialogValue</method> to supply the return value for the dialog.</li>
/// <li>Override the <parameter>APPLYBUTTON</parameter> if the dialog has an apply button.</li>
/// </ol>
Class %ZEN.Dialog.standardDialog Extends %ZEN.Component.page [ Abstract, Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

/// SMP favorite icon.
Parameter FAVORITEICON As COSEXPRESSION = "$$$ISCFAVORITEICON";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// If true, then this dialog displays a Cancel button.
Parameter CANCELBUTTON = 1;

/// Provide a title for the dialog window. The value is supplied
/// by the <method>%OnGetTitle</method> method.
Property dialogTitle As %ZEN.Datatype.string [ ReadOnly ];

/// This is used to indicate whether this dialog has an apply button.
Property hideApplyButton As %ZEN.Datatype.boolean [ Final, InitialExpression = {'+..#APPLYBUTTON} ];

/// This is used to indicate whether this dialog has a cancel button.
Property hideCancelButton As %ZEN.Datatype.boolean [ InitialExpression = {'+..#CANCELBUTTON} ];

/// Style applied to buttons when automatically disabled.
Property disabledStyle As %ZEN.Datatype.style [ InitialExpression = "background-image:none;background:#D0D0D0;" ];

XData Style
{
}

/// Contents of this page:
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Provide HTML for html title box.<br>
/// Default implementation displays the standard Zen title bar.
Method %DrawTitle(pSeed As %String) As %Status
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

/// Get value for dialogTitle property.
Method dialogTitleGet() As %ZEN.Datatype.string
{
}

/// Use soft modals for dialogs.
ClassMethod %OnUseSoftModals() As %Boolean [ CodeMode = expression ]
{
}

/// Apply the value for this dialog and keep it open.
/// Do not overide, instead implement the ondialogFinish method.
ClientMethod dialogApply() [ Language = javascript ]
{
}

/// Apply the value for this dialog and close it.
/// Do not overide, instead implement the ondialogFinish method.
ClientMethod dialogFinish() [ Language = javascript ]
{
}

/// Close this dialog without applying its value.
/// Do not overide, instead implement the ondialogCancel method.
ClientMethod dialogCancel() [ Language = javascript ]
{
}

/// This method is no longer supported by standardDialog so
/// make sure it does not get used.
ClientMethod btnOK() [ Final, Language = javascript ]
{
}

/// This method is no longer supported by standardDialog so
/// make sure it does not get used.
ClientMethod btnApply() [ Final, Language = javascript ]
{
}

/// Get the value that will be applied when the user presses the OK button.
/// This is implemented by subclasses.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Abstract, Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.
ClientMethod ondialogFinish(action) [ Abstract, Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the Cancel button.
/// If this returns false, then the dialog is not cancelled.
ClientMethod ondialogCancel() [ Abstract, Language = javascript ]
{
}

/// This client event, if present, is fired when the page
/// is first loaded or whenever it is resized.<br>
/// If this is called at load time, then <var>load</var> will
/// be true.
ClientMethod onlayoutHandler(load) [ Final, Language = javascript ]
{
}

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Key handler used by many controls in dialogs. Defined here for convenience.<br/>
/// To use, add an onkeydown handler to controls in your dialog:<br/>
/// <example>
/// &lttext label="Name" onkeydown="return zenPage.ctrlKeyDown(zenEvent);"/&gt
/// </example>
/// If the user presses ESCAPE within this control, the dialog is cancelled. If the user
/// presses ENTER, then the dialog is completed (same as pressing OK).
/// If <var>escOnly</var> is true, then only the ESC key is processed. This is useful for
/// controls where the ENTER key is needed (such as a textarea).
ClientMethod ctrlKeyDown(evt, escOnly) [ Language = javascript ]
{
}

/// Disable or enable the apply,cancel, and ok buttons for this dialog.
ClientMethod disableButtons(flag) [ Language = javascript ]
{
}

}
