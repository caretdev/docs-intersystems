/// This utility dialog window displays and lets the user select from a set of available namespaces.<br/>
Class %ZEN.Dialog.namespaceSelect Extends %CSP.Portal.standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

/// No Apply button.
Parameter APPLYBUTTON = 0;

/// User must hold at least operator privilege to use this dialog.
/// !!! this list should be longer
Parameter RESOURCE = "%Admin_Operate,%Development,%Service_SQL,%Ens_Portal,%DeepSee_Architect,%DeepSee_Analyzer,%DeepSee_Portal,%DeepSee_Admin";

/// Pass in current namespace.
Property CurrNamespace As %String(ZENURL = "CURRNS");

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

/// User clicked Finish. Attampt change namespace. If fails, display error message and do not leave dialog.
ClientMethod ondialogFinish() As %Boolean [ Language = javascript ]
{
}

/// Return the value that should be returned by this dialog.
ClientMethod getDialogValue() [ Language = javascript ]
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

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// Key handler for list box.
ClientMethod listKeyDown(evt) [ Language = javascript ]
{
}

/// Attempt to change namespace. If fails, then some thing unusual is there about this namespace.
ClassMethod ChangeNS(pNS As %String) As %String [ ZenMethod ]
{
}

}
