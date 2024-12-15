/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Activate New License Key dialog for Management Portal.
Class %CSP.UI.Portal.Dialog.LicenseActivate Extends (%CSP.Portal.standardDialog, %CSP.UI.Portal.License.Utils) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Dialog.LicenseActivate.zen";

Parameter EMSSERVICE = "License";

/// Displayed name of this page.
Parameter PAGENAME = "LicenseActivate";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property KeyFile As %String;

Property NoKeyActive As %Boolean [ InitialExpression = {$System.License.KeyLicenseCapacity()="Default license for configuration diagnosis."} ];

Property ReturnMsg As %String;

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

/// User clicked one of the Browse buttons.
ClientMethod browseSelect(wildcard) [ Language = javascript ]
{
}

/// Check if user hit [Enter].
ClientMethod keyUp(zenEvent) [ Language = javascript ]
{
}

ClientMethod showFile(filename) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
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

ClassMethod DrawCurrent(pSeed As %String) As %Status
{
}

Method DrawFileForActivate(pFile As %String) As %Status
{
}

/// This method is called when user first clicked the Activate button.
/// Evaluates the file user selected and return appropriate message.
/// Note that this is a very basic check from the UI. Detailed check will be in the actual ##class(%SYSTEM.License).Upgrade().
/// When proxy.ok = 0 proxy.Message or proxy.MessageRestart indicates a confirmation is needed.
/// proxy.ErrorMessage means Activate cannot be done.
ClassMethod PrepareActivate(pFile As %String, NoKeyActive As %Boolean) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// This method is called when user already confirmed to override iris.key if exists.
ClassMethod Activate(pFile As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

}
