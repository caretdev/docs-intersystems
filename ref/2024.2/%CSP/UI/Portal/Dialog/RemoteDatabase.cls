/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// New Remote Database Dialog for Management Portal
Class %CSP.UI.Portal.Dialog.RemoteDatabase Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

/// Displayed name of this page.
Parameter PAGENAME = "RemoteDatabase";

Parameter AUTONS As BOOLEAN = 0;

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Parameter EMSSERVICE = "Namespace";

/// User must hold at least operator privilege to use this dialog.
Parameter RESOURCE = "%Admin_Manage";

Parameter HELPID = "GSA_config_databases_remote";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Dialog.RemoteDatabase.zen";

/// Database for edit. Null if adding new database.
Property PID As %String(ZENURL = "PID");

Property SelectedServer As %String;

Property SelectedServerNotNormal As %Boolean [ InitialExpression = 0 ];

Property MsgDisabled As %String [ InitialExpression = {$$$Text("The selected server connection is disabled.")} ];

Property MsgNotConnected As %String [ InitialExpression = {$$$Text("The selected server cannot be reached.")} ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This is called when the template is first displayed;
/// This provides a chance to set focus etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.<br/>
/// If this returns false, then the action is cancelled.
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

ClientMethod changeServer(dataCombo) [ Language = javascript ]
{
}

ClientMethod disableDatabaseSelect(flag) [ Language = javascript ]
{
}

ClientMethod showServerWarning(flag) [ Language = javascript ]
{
}

ClientMethod changeDirectory(dataCombo) [ Language = javascript ]
{
}

ClientMethod changeSelectList(radioSet) [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

/// Call server save method.
/// Subclass may override.
ClassMethod SaveData(PID As %String, pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Return 1 if the database name is OK
ClassMethod CheckDBName(Name As %String) As %Boolean [ ZenMethod ]
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

}
