/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Process Terminate dialog for Management Portal.
Class %CSP.UI.Portal.Dialog.ProcessTerminate Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Dialog.ProcessTerminate.zen";

Parameter RESOURCE = "%Admin_Operate:USE";

/// Displayed name of this page.
Parameter PAGENAME = "TerminateProcess";

Parameter AUTONS As BOOLEAN = 0;

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property PID As %String(ZENURL = "PID");

Property DISPLAYID As %String(ZENURL = "DISPLAYID");

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

/// Use clicked the Terminate button. Process it. If successful, close this dialog and the Process Details page, and then refresh the Process list page.
ClientMethod doTerminate() [ Language = javascript ]
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

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

/// Process Termination. If failed, return error message. Otherwise, return 1.
ClassMethod StartTerminate(PID, DISPLAYID, chkResjob) As %String [ ZenMethod ]
{
}

/// This is called when the template is first displayed;
/// This provides a chance to set focus etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

}
