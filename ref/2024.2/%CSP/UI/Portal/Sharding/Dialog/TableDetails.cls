Class %CSP.UI.Portal.Sharding.Dialog.TableDetails Extends (%CSP.Portal.standardDialog, %CSP.UI.Portal.Sharding.Utils)
{

Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.TableDetails.zen";

/// Displayed name of this page.
Parameter PAGENAME = "ShardingTableDetails";

Parameter RESOURCE = "%Admin_Manage";

Parameter CANCELBUTTON = 0;

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property MASTERNAMESPACE As %String(ZENURL = "MASTERNAMESPACE");

Property TABLENAME As %String(ZENURL = "TABLENAME");

Property SHARDKEY As %String(ZENURL = "SHARDKEY");

XData Style
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
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

Method DrawAbortError(seed As %String) As %Status
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

}
