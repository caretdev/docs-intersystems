Class %iKnow.UI.Dialog.compileDomain Extends %ZEN.Dialog.standardDialog [ Deprecated, System = 4 ]
{

Parameter APPLYBUTTON = 0;

Parameter DOMAIN = "%iKnow";

Parameter RESOURCE = "%Development";

/// Domain Definition class
Property domainDefinition As %ZEN.Datatype.string(ZENURL = "DOMAINDEF");

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

/// Test if the given class name is valid.
ClassMethod IsValidClassName(pClassName As %String) As %Boolean [ ZenMethod ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Start the compile
ClientMethod compile() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

/// Check compile status periodically.
ClientMethod timeout() [ Language = javascript ]
{
}

ClassMethod CheckStatus(pCubeClass) As %String [ ZenMethod ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.
ClientMethod ondialogFinish(action) [ Language = javascript ]
{
}

}
