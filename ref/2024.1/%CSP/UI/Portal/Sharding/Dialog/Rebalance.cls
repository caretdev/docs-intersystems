Class %CSP.UI.Portal.Sharding.Dialog.Rebalance Extends (%CSP.UI.Portal.Dialog.WizardTemplate, %CSP.UI.Portal.Sharding.Utils)
{

Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Rebalance.zen";

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "NAMESPACE");

Property ISNODELEVEL As %ZEN.Datatype.boolean(ZENURL = "ISNODELEVEL");

/// Displayed name of this page.
Parameter PAGENAME = "ShardingRebalance";

Parameter RESOURCE = "%Admin_Manage";

Property ShardingLicense As %Boolean;

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property PageMessage As %String;

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

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
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

Method DrawResult(seed As %String) As %Status
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Start background job to cleanup a selected directory
ClassMethod StartRebalance(pMasterNamespace, pTimeLimit) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

Method DrawDuration(seed) As %Status
{
}

}
