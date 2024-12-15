Class %CSP.UI.Portal.Dialog.ArchiveWizard Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Edit Archive Target";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As %Boolean = 0;

Parameter EMSSERVICE = "Namespace";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Dialog.ArchiveWizard.zen";

Parameter HELPADDRESS = "System Administration, Configuration, System Configuration, Archive Target Settings, Add Archive Target";

Parameter RECENT = 0;

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property isNew As %String(ZENURL = "isNew") [ InitialExpression = "1" ];

/// Archive for edit. Null if adding new archive.
Property PID As %String(ZENURL = "PID");

XData Style
{
}

XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doModified(newvalue) [ Language = javascript ]
{
}

ClientMethod changeType(newvalue) [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Process save and create new archive. Return true if success. OW return false.
ClientMethod doSave() As %Boolean [ Language = javascript ]
{
}

ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
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

/// Overriden to add PID to the page name to distinguish the specific page.
ClientMethod navPageSizeChanged(value) [ Language = javascript ]
{
}

/// Overriden to add PID to the page name to distinguish the specific page.
ClientMethod navMaxRowsChanged(value) [ Language = javascript ]
{
}

/// Used to Save tableNavBar values, add PID to the page name to distinguish the type for the page.
ClassMethod UpdateTableNavState(pFilter As %String, pPageSize As %Integer, pMaxRows As %Integer, pPID As %String) [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
