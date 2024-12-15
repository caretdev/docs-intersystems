/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Edit Resource for Management Portal
Class %CSP.UI.Portal.Dialog.Resource Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Dialog.Resource.zen";

/// Displayed name of this page.
Parameter PAGENAME = "ResourceEdit";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Parameter EMSSERVICE = "Security";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

/// When editing an existing resource this is passed in as the resource name.
Property RESOURCENAME As %ZEN.Datatype.string(ZENURL = "RESOURCENAME");

/// If called from Database wizard, then this is set and default to %DB_[RESOURCETYPE].
Property RESOURCETYPE As %ZEN.Datatype.string(ZENURL = "RESOURCETYPE");

Property IsError As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property DBResourcePrefix As %ZEN.Datatype.string;

Property msgPrefix As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("A database resource name must start with %1")} ];

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
ClientMethod onstartHandler() [ Language = javascript ]
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

ClientMethod validate() [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
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

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// This callback, if defined, is called when the user presses the Cancel button.
/// If this returns false, then the dialog is not cancelled.
ClientMethod ondialogCancel() [ Language = javascript ]
{
}

}
