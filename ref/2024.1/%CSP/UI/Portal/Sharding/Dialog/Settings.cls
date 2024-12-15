/// The id for each field on this page should be the same name used as the property name in $SYSTEM.Sharding and each defined in the OPTIONS property on this page.
Class %CSP.UI.Portal.Sharding.Dialog.Settings Extends (%CSP.Portal.standardDialog, %CSP.UI.Portal.Sharding.Utils)
{

Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Settings.zen";

/// Displayed name of this page.
Parameter PAGENAME = "ShardingSettings";

Parameter RESOURCE = "%Admin_Manage";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property MASTERNAMESPACE As %String(ZENURL = "MASTERNAMESPACE");

/// Option property names that will be shown on this page
Property OPTIONS As %String [ InitialExpression = "AutoVerify,DropIgnoreError,MasterIPAddress,ConnectTimeout,MirrorConnectAttempts" ];

/// Current Maximum ECP connection number. If this is modified, then the instance will need to be restarted for the new value to take effect.
Property MaxConn As %Integer;

Property PageMessage As %String;

/// Where this dialog got opened from
Property ClusterLevel As %String(ZENURL = "CLUSTERLEVEL") [ InitialExpression = "NAMESPACE" ];

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

ClientMethod validate() As %Boolean [ Language = javascript ]
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

/// Save option values to server.
ClassMethod SaveData(pMasterNamespace, pOPTIONS, pAutoVerify, pDropIgnoreError, pConnectTimeout, pMasterIPAddress, pMirrorConnectAttempts, pOldMaxConn, pNewMaxConn) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

}
