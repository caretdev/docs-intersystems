/// Resource Assign dialog used by Management Portal Home Page.
Class %CSP.Portal.ResourceDialog Extends %CSP.Portal.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// User must have USE permissions on %Admin_Secure to access this popup.
Parameter RESOURCE = "%Admin_Secure:USE";

/// Name of page we are assigning a resource to.
Property pageName As %ZEN.Datatype.string(ZENURL = "NAME");

/// Link to page we are assigning a resource to.
Property pageLink As %ZEN.Datatype.string(ZENURL = "LINK");

/// If true, auto-switch namespace to whatever $NAMESPACE is passed in.
Parameter AUTONS As BOOLEAN = 1;

/// Canonical class name of page we are assigning a resource to.
Property pageID As %ZEN.Datatype.string;

Property CurrentResource As %ZEN.Datatype.string;

/// Property to hold an error message
Property isError As %ZEN.Datatype.boolean;

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

/// Draw help text.
Method DrawHelp(pSeed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Set the resource name.
ClassMethod SetResource(pPageLink As %String, pResource As %String) As %String [ ZenMethod ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

}
