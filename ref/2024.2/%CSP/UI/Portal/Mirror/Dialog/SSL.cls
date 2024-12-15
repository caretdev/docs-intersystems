/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Edit Service Popup Dialog for Management Portal
Class %CSP.UI.Portal.Mirror.Dialog.SSL Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Mirror.Dialog.SSL.zen";

/// Displayed name of this page.
Parameter PAGENAME = "SSL";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property isNew As %ZEN.Datatype.boolean(ZENURL = "isNew") [ InitialExpression = "0" ];

Property isECP As %ZEN.Datatype.boolean(ZENURL = "isECP") [ InitialExpression = "0" ];

Property isClient As %ZEN.Datatype.boolean(ZENURL = "isClient") [ InitialExpression = "0" ];

Property needEnable As %ZEN.Datatype.boolean(ZENURL = "needEnable") [ InitialExpression = "0" ];

/// Indicate if password is modified. If pwModified is 0 then at save time we won't save password.
Property pwModified As %ZEN.Datatype.boolean [ InitialExpression = "0" ];

/// Keep TLSMinVersion
Property Min As %String;

/// Keep TLSMinVersion
Property Max As %String;

/// Default Ciphersuites value
Property CipherDefault As %String;

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

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the Cancel button.
/// If this returns false, then the dialog is not cancelled.
ClientMethod ondialogCancel() [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// User clicked one of the Browse buttons.
/// Save the name of the textfield so that when you return you know which textfield to update.
ClientMethod browseSelect(name, wildcard) [ Language = javascript ]
{
}

/// User changed CAFile. If not null, enable CRL file. OW, disable
ClientMethod changedCAFile() [ Language = javascript ]
{
}

/// User changed password. Update flag.
ClientMethod changePW() [ Language = javascript ]
{
}

/// User changed PWOptions option. If they want to enter new password, show password fields. Otherwise hide them.
ClientMethod togglePW() [ Language = javascript ]
{
}

/// User changed OCSP option.
ClientMethod toggleOCSP() [ Language = javascript ]
{
}

/// Change Min or Max Version
ClientMethod changeVersion(MinVersion) [ Language = javascript ]
{
}

ClientMethod getVersion(value) [ Language = javascript ]
{
}

/// Get user input and send to server to save settings.
ClientMethod doSave() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod validate() [ Language = javascript ]
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

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

/// Used when Editing an existing SSL/TLS configuration. Load previously defined values into fields.
Method LoadData() As %Status
{
}

/// Save general association data to server
ClassMethod SaveData(Enabled, CAFile, CRLFile, CertificateFile, PrivateKeyFile, PrivateKeyType, PrivateKeyPassword, CipherList, Ciphersuites, TLSMinVersion, TLSMaxVersion, pwModified, PWOptions, isECP, isClient, OCSP, OCSPIssuer, OCSPResp, OCSPTimeout, DHBits) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

}
