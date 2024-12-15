/// Dialog to edit resource permissions in a role
Class %CSP.UI.Portal.Dialog.RoleResourceEdit Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Dialog.RoleResourceEdit.zen";

Parameter RESOURCE = "%Admin_Secure:USE";

/// Displayed name of this page.
Parameter PAGENAME = "Edit Role Resource";

Parameter EMSSERVICE = "Security";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property NewResources;

/// Role name
Property PID As %ZEN.Datatype.string(ZENURL = "PID");

Property CurrPermissions As %ZEN.Datatype.string(ZENURL = "permissions");

/// Resource name
Property ResourceName As %ZEN.Datatype.string(ZENURL = "resource");

Property CopyFromPID As %ZEN.Datatype.string(ZENURL = "copyFromPID");

Property CopyNewPID As %ZEN.Datatype.string(ZENURL = "copyNewPID");

Property CopyNewDesc As %ZEN.Datatype.string(ZENURL = "copyNewDesc");

Property EscalationOnly As %ZEN.Datatype.boolean(ZENURL = "escalationOnly");

Property IsDBResource As %Boolean [ InitialExpression = 0 ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// Contents of this page:
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this page.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

ClientMethod writeChanged(newVal) [ Language = javascript ]
{
}

Method DrawPermissions(seed As %String) As %Status
{
}

/// Save column priv data to server
/// If this is to revoke column priv, then pRevoke = 1, pPrivs and pGrant will be null.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
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

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

}
