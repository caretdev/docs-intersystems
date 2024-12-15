/// This dialog lets the user upload an image into the "covers" directory.<br/>
Class %DeepSee.UI.Dialog.ImageUpload Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Image Upload";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// Name of image file.
Property fileName As %ZEN.Datatype.string(ZENURL = "FILE");

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

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.
ClientMethod ondialogFinish(action) [ Language = javascript ]
{
}

/// User has selected a new image.
ClientMethod changeImage() [ Language = javascript ]
{
}

/// This callback is called when a form on this page is submitted.
/// <var>pSubmit</var> is a <class>%ZEN.Submit</class> object
/// containing details of the form submit.<br/>
/// Subclasses override this method.
ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status
{
}

/// Return the physical directory in which cover images files are stored.
ClassMethod %GetImageDirectory() As %String [ CodeMode = expression ]
{
}

}
