Class %CSP.UI.Portal.Background.Dialog.DatabaseDefragment Extends (%CSP.Portal.standardDialog, %CSP.UI.Portal.Background.Utils)
{

Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Background.Dialog.DatabaseDefragment.zen";

/// Displayed name of this page.
Parameter PAGENAME = "Defragment";

Parameter RESOURCE = "%Admin_Operate:USE";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// ID for edit. DBName for this page.
Property DBName As %String(ZENURL = "DBName");

/// DBDirectory passed in.
Property Directory As %String(ZENURL = "Directory");

Property WarningMessage As %String;

Property SysBGTaskId As %String;

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

/// Start background job to defragment a selected directory
ClassMethod StartDefrag(pDBName, pDirectory) As %ZEN.proxyObject [ ZenMethod ]
{
}

}
