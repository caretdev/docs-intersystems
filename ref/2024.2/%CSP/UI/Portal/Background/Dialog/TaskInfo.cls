/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Displays Background Task Info dialog for Management Portal.
Class %CSP.UI.Portal.Background.Dialog.TaskInfo Extends (%CSP.UI.Portal.Dialog.WizardTemplate, %ZEN.Portal.Utils, %CSP.UI.Portal.Background.Utils) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/%CSP.UI.Portal.Background.Dialog.TaskInfo.zen";

/// Displayed name of this page.
Parameter PAGENAME = "BackgroundTaskInfo";

Parameter RESOURCE = "%Admin_Operate:USE";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "$NAMESPACE");

/// ID for Systems background task id
Property SysBGTaskId As %String(ZENURL = "SysBGTaskId");

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

/// This method allows user to cancel the task that is currently in progress
ClientMethod doAction(action) [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the Close button.
/// If this returns false, then the dialog is not cancelled.
ClientMethod ondialogCancel() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
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

Method GetJobInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// This method invokes method to Cancel/Pause/Resume a background job
ClassMethod ActionProcess(pAction As %String, pSysBGTaskId As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

}
