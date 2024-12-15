/// Page to define ML Configuration privileges.
Class %CSP.UI.Portal.Dialog.MLConfigurationPriv Extends (%CSP.Portal.standardDialog, %CSP.UI.Component.SelectBoxUtils) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter AUTONS As BOOLEAN = 1;

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Dialog.MLConfigurationPriv.zen";

/// Displayed name of this page.
Parameter PAGENAME = "ML Configuration Privileges";

Parameter RESOURCE = "%Admin_Secure:USE";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 1;

/// User or Role whose privileges are being granted
Property PID As %String(ZENURL = "PID");

/// Flag indicating whether user checked the "Include System Items" checkbox.
Property IncludeSystem As %Integer(ZENURL = "IncludeSystem") [ InitialExpression = 0 ];

/// Namespace indicating where the schemas/tables/views are coming from.
Property Namespace As %String(ZENURL = "$NAMESPACE");

/// ObjName = null for Add, or ML Configuration
Property ObjName As %String(ZENURL = "ObjName");

/// ObjName = null for Add, or ML COnfiguration name for Edit
Property ObjPriv As %String(ZENURL = "ObjPriv");

/// "MLCONFIGURATION".
Property ObjectType As %String(ZENURL = "Type");

Property Names As %String;

/// Total number of existing ML Configurations for edit
Property TotalMLConfigurations As %Integer [ InitialExpression = 0 ];

Property PrivCount As %Integer;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this page.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Disable or enable the apply,cancel, and ok buttons for this dialog.
/// Overriding %ZEN.Dialog.standardDialog
/// (called by dialogFinish() and dialogCancel())
ClientMethod disableButtons(flag) [ Language = javascript ]
{
}

ClientMethod onSelectBoxMove(flag, isPage) [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

ClientMethod toggleSave(enable) [ Language = javascript ]
{
}

ClientMethod doModified() [ Language = javascript ]
{
}

/// User clicked the Privilege/Grant Admin checkbox.
ClientMethod toggleChecks(g, newVal) [ Language = javascript ]
{
}

/// User changed a checkbox.
ClientMethod checkboxModified(id, g) [ Language = javascript ]
{
}

/// Check if Priv or Grant are all checked.
/// check chkPriv/chkGrant if all its checkboxes are checked; uncheck if at least one is unchecked.
ClientMethod checkAll(ID) [ Language = javascript ]
{
}

ClientMethod isSomethingChecked() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Save ML Configuration priv data to server
/// If this is to revoke priv, then pRevoke = 1, pPrivs and pGrant will be null.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod MLConfigurations(PID As %String, objtype As %String, Output tSC As %Status) As %Integer
{
}

Method DrawSelectBoxes(seed As %String) As %Status
{
}

/// Set Locator bar and determine whether to show change password option.
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
