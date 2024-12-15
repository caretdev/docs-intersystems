/// Specialized page that displays an editor for a given
/// component property.<br>
/// This is used by ZEN utilities.
Class %ZEN.Dialog.componentValueEditor Extends standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

/// Show Apply button.
Parameter APPLYBUTTON = 1;

/// Name of the property to be edited. Passed in via URL.
Property propertyName As %ZEN.Datatype.string(ZENURL = "property");

/// Name of the class that contains the property to be edited. Passed in via URL.
Property className As %ZEN.Datatype.string(ZENURL = "className");

/// Type of the property to be edited. Passed in via URL.
Property type As %ZEN.Datatype.string(ZENURL = "type");

/// Current value of the property to be edited. Passed in via URL.
Property value As %ZEN.Datatype.string(ZENURL = "value");

/// example of customized style sheet
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

Method %OnAfterCreatePage() As %Status
{
}

/// Provide contents of description component.
Method %GetDescHTML(pSeed As %String) As %Status
{
}

/// Get the value to be returned by this dialog.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// Called when dialog is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// Update the style for the sample text.
ClientMethod updateSample() [ Language = javascript ]
{
}

/// Launch the CSS Value Editor popup.
/// <var>context</var> is "HTML" or "SVG".
ClientMethod editCSSValue(context) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
