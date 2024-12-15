/// Specialized page that displays an editor CSS declaration.<br>
/// This is used by ZEN utilities.
Class %ZEN.Dialog.cssValueEditor Extends standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

/// Show Apply button.
Parameter APPLYBUTTON = 1;

/// What type of CSS declaration: "HTML" or "SVG". Passed in via URL.
Property context As %ZEN.Datatype.string(ZENURL = "context");

/// CSS property being edited. Passed in via URL.
Property property As %ZEN.Datatype.string(ZENURL = "property");

/// CSS value being edited. Passed in via URL.
Property value As %ZEN.Datatype.string(ZENURL = "value");

/// Client-side variable indicating what type of value we are editing.
Property cssType As %ZEN.Datatype.string;

/// example of customized style sheet
XData Style
{
}

/// Main body of dialog.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Provide contents of description component.
Method %GetDescHTML(pSeed As %String) As %Status
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

Method %OnAfterCreatePage() As %Status
{
}

/// Return the value that should be returned by this dialog.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// Launch the Color Value Editor popup.
/// <var>ctrlId</var> is control to place value in.
ClientMethod editColorValue(ctrlId) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the dialog is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

}
