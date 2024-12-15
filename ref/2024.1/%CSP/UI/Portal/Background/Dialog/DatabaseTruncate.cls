Class %CSP.UI.Portal.Background.Dialog.DatabaseTruncate Extends (%CSP.Portal.standardDialog, %CSP.UI.Portal.Background.Utils)
{

Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Background.Dialog.DatabaseTruncate.zen";

/// Displayed name of this page.
Parameter PAGENAME = "DatabaseTruncate";

Parameter RESOURCE = "%Admin_Operate:USE";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// ID for edit. DBName for this page.
Property DBName As %String(ZENURL = "DBName");

/// DBDirectory passed in.
Property Directory As %String(ZENURL = "Directory");

/// Current size.
Property Size As %String;

XData Style
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

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

Method DrawAbortError(seed As %String) As %Status
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Start background job to cleanup a selected directory
ClassMethod StartCleanup(DBName, Directory, Target) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// Make sure that the Target size is smaller than that of the current size.
ClientMethod validate(size, target) As %Boolean [ Language = javascript ]
{
}

/// Return current size since the size may have changed since the table was drawn
ClassMethod GetSize(Directory As %String, Output Size As %Integer) As %String
{
}

}
