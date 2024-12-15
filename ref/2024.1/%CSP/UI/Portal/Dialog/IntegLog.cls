/// This pages shows the integrity output of the System Management Portal.
Class %CSP.UI.Portal.Dialog.IntegLog Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Dialog.IntegLog.zen";

/// Set this to the correct domain.
Parameter DOMAIN = "%Utility";

Parameter RESOURCE = "%Admin_Operate:USE";

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
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

}
