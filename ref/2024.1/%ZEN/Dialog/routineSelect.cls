/// This utility dialog window displays and lets the user select from
/// a set of routines.<br>
/// The user must have Use privileges for the %Development resource
/// in order to use this page.
/// If Namespace is passed in then switch to that namespace to run the query
Class %ZEN.Dialog.routineSelect Extends standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter AUTONS = 0;

/// No Apply button.
Parameter APPLYBUTTON = 0;

/// User must hold Development to use this dialog.
Parameter RESOURCE = "%Development";

/// Which namespace to search. Passed in via URL.
Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "NAMESPACE");

/// User may pass in a partial or full search mask.
Property MASK As %ZEN.Datatype.string(ZENURL = "MASK");

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

/// Create the result set used by the routine listbox.
Method CreateRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Execute the routine listbox result set.
Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// Return the value that should be returned by this dialog.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// User has clicked the Search button.
ClientMethod changeMask() [ Language = javascript ]
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

/// Build short cut Mask links.
Method LoadMaskLinks(pSeed As %String) As %Status
{
}

/// User has clicked a mask link. Put the selected mask into the Mask field then refresh list control.
ClientMethod loadMask(flag) [ Language = javascript ]
{
}

ClientMethod onkeydownHandler(evt) [ Language = javascript ]
{
}

}
