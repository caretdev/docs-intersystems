/// This dialog displays the current MDX query for the Analyzer.
Class %DeepSee.UI.Dialog.ShowQuery Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Query text.
Property mdx As %ZEN.Datatype.string(ZENURL = "MDX");

Property nonce As %ZEN.Datatype.integer(ZENURL = "NONCE");

/// Query in manual mode?
Property manualMode As %ZEN.Datatype.boolean(ZENURL = "MANUAL");

/// Listing name.
Property listingName As %ZEN.Datatype.string(ZENURL = "LISTINGNAME");

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

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Set the behavior of the interactive fields based on the setting of the 'manual' checkBox. Calling this funciton after
/// unchecking the box will regenerate the text from the current pivotTable definition using SynthesizeMDX.
ClientMethod setManual() [ Language = javascript ]
{
}

}
