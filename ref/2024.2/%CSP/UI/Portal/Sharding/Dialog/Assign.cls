/// Assign new shard
Class %CSP.UI.Portal.Sharding.Dialog.Assign Extends (%CSP.Portal.standardDialog, %CSP.UI.Portal.Sharding.Utils)
{

Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Assign.zen";

/// Displayed name of this page.
Parameter PAGENAME = "ShardAssign";

Parameter RESOURCE = "%Admin_Manage";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// ID for edit. DBName for this page.
Property SHARD As %String(ZENURL = "SHARD");

Property MASTERNAMESPACE As %String(ZENURL = "MASTERNAMESPACE");

Property ROLE As %String(ZENURL = "ROLE");

Property SHARDDATABASE As %String(ZENURL = "SHARD_DATABASE");

Property MIRRORNAME As %String(ZENURL = "MIRROR_NAME");

Property MIRRORDATABASE As %String(ZENURL = "MIRROR_DATABASE");

Property VIP As %String(ZENURL = "VIP");

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

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod setMirror(value) [ Language = javascript ]
{
}

/// show or hide fields based on role = Data or Query
ClientMethod setRole(value) [ Language = javascript ]
{
}

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

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// If creating a new view, make sure that the view name is not empty.
ClientMethod validate(proxy) [ Language = javascript ]
{
}

ClientMethod timeout() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the Cancel button.
/// If this returns false, then the dialog is not cancelled.
ClientMethod ondialogCancel() [ Language = javascript ]
{
}

/// Start background job to cleanup a selected directory
ClassMethod StartAssign(proxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

}
