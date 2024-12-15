/// Add new administrator to encryption key file
Class %CSP.UI.Portal.Dialog.EncAddAdmin Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Dialog.EncAddAdmin.zen";

Parameter RESOURCE = "%Admin_Secure:USE";

/// Displayed name of this page.
Parameter PAGENAME = "EncryptionAddAdmin";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property KEYFILE As %ZEN.Datatype.string(ZENURL = "FILE");

/// flag to indicate what to add: admin or key
Property WHAT As %ZEN.Datatype.string(ZENURL = "WHAT");

Property msgPassword As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("The two New Administrator Passwords are not the same. Please type them again.")} ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this pane.
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

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
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

ClassMethod SaveData(What, File, Username1, Password1, Username2, Password2, Description, KeyLen) As %String [ ZenMethod ]
{
}

}
