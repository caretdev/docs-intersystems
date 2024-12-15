Class %CSP.UI.Portal.Background.Dialog.DatabaseCompact Extends (%CSP.Portal.standardDialog, %CSP.UI.Portal.Background.Utils)
{

Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Background.Dialog.DatabaseCompact.zen";

/// Displayed name of this page.
Parameter PAGENAME = "Compact";

Parameter RESOURCE = "%Admin_Operate:USE";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// ID for edit. DBName for this page.
Property DBName As %String(ZENURL = "DBName");

/// DBDirectory passed in.
Property Directory As %String(ZENURL = "Directory");

Property SysBGTaskId As %String;

/// Total available freespace.
Property FreeSpace As %String;

/// Amount free at end
Property EndFree As %Integer;

/// Style applied to buttons when automatically disabled.
Property disabledStyle As %ZEN.Datatype.style [ InitialExpression = "background-image:none;background:#D0D0D0;cursor: not-allowed;" ];

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

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// Make sure that the Target size is smaller than that of the current available freespace
ClientMethod validate(target, sizemin, sizemax) As %Boolean [ Language = javascript ]
{
}

/// Start background job to compact a selected directory
ClassMethod StartCompact(DBName, Directory, Target) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Return available FreeSpace
ClassMethod GetFreeSpace(Directory As %String, Output FreeSpace As %Integer, Output EndFree As %Integer, Output CurrSize As %Integer) As %String
{
}

}
