/// Actions for Mirrored Databases: Mount, Activate, Catchup, Remove.
Class %CSP.UI.Portal.Dialog.MirrorDBActions Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Dialog.MirrorDBActions.zen";

/// Displayed name of this page.
Parameter PAGENAME = "Actions for Mirrored DB";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property SelectedMirror As %ZEN.Datatype.string(ZENURL = "SelectedMirror");

/// "M" - Mount, "A" - Activate, "C" - Catchup, "R" - Remove
Property Action As %ZEN.Datatype.string(ZENURL = "Action");

Property IsPrimary As %Integer [ InitialExpression = {$SYSTEM.Mirror.IsPrimary()} ];

/// Number of DBs currently selected
Property NumDBs As %Integer [ InitialExpression = 0 ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

ClientMethod catchupChanged(newVal) [ Language = javascript ]
{
}

/// enable the action button if there are DBs selected. disable otherwise.
ClientMethod rowSelect(selectedRows) [ Language = javascript ]
{
}

ClientMethod doAction() As %Boolean [ Language = javascript ]
{
}

ClassMethod ReallyDoAction(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod DrawMirrorStatus(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
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

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
