/// This utility dialog window displays and lets the user select
/// from a set of qualifiers.<br>
/// Displays Export or Compile qualifiers and allow user to select multiple.
Class %ZEN.Dialog.qualifierSelect Extends standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

/// No Apply button.
Parameter APPLYBUTTON = 0;

/// Type of group to select ("Export" or "Compiler"). Passed in via URL.
Property group As %ZEN.Datatype.string(ZENURL = "group");

/// Default qualifiers used when checkboxes are built (if null, system default will be used). Passed in via URL.
Property qspec As %ZEN.Datatype.string(ZENURL = "qspec");

/// Total Items of the qualifiers. Updated at the end of checkboxes building.
Property TotalItems As %ZEN.Datatype.string;

XData Style
{
}

/// Contents of the dialog.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the selected values for this dialog. Return value does not include comma at the beginning and the end.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// Open documentation for qualifiers
ClientMethod openHelp() [ Language = javascript ]
{
}

/// Restore default
ClientMethod restoreDefault() [ Language = javascript ]
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

/// Load default values
Method %OnAfterCreatePage() As %Status
{
}

/// Draw Qualifiers. If seed is null, use qspec passed in. Else use default.
Method DrawItems(seed As %String) As %Status
{
}

}
