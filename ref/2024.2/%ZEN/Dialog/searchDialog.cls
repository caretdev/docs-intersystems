/// This utility dialog window displays a search page.
/// The results of an SQL query are displayed and the user can make a selection.
Class %ZEN.Dialog.searchDialog Extends standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter AUTONS = 1;

/// No Apply button.
Parameter APPLYBUTTON = 0;

/// SQL statement used to populate the search form.
/// This cannot be passed in via URL; instead applications should subclass this
/// component and provide the search query using server-side logic.
Property query As %ZEN.Datatype.sql;

/// List names to display for parameters in the search form.
Property paramNames As %ZEN.Datatype.csv(ZENURL = "paramNames");

/// Number of parameters in the current query.
Property paramCount As %ZEN.Datatype.integer(ZENSETTING = 0);

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

/// Set up the table pane.
Method %OnAfterCreatePage() As %Status
{
}

/// Return the value that should be returned by this dialog.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// User has pressed the search button.
ClientMethod execSearch() [ Language = javascript ]
{
}

}
