/// This utility dialog window displays and lets the user select from
/// a set of class definitions.<br>
/// The user must have Use privileges for the %Development resource
/// in order to use this page.
Class %ZEN.Dialog.classSelect Extends standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter AUTONS = 1;

/// No Apply button.
Parameter APPLYBUTTON = 0;

/// User must hold Development to use this dialog.
Parameter RESOURCE = "%Development";

/// What type of item to select. Passed in via URL.
Property mode As %ZEN.Datatype.string(VALUELIST = ",class", ZENURL = "mode");

XData Style
{
}

/// Contents of the dialog.
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

/// Create the result set used by the Package dataCombo.
Method CreatePackageRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Create the result set used by the Class listbox.
Method CreateClassRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Execute the class listbox result set.
Method ExecuteClassRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// Callback for class list box.
Method DrawClassItem(pRS As %ResultSet, pValue As %String, pText As %String) As %String
{
}

/// Return the value that should be returned by this dialog.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// User has selected a new package name.
ClientMethod changePackage() [ Language = javascript ]
{
}

/// User has selected a new class name.
ClientMethod changeClass() [ Language = javascript ]
{
}

}
