Class %CSP.UI.Portal.Sharding.Dialog.Configure Extends (%CSP.Portal.standardDialog, %CSP.UI.Portal.Sharding.Utils)
{

Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Configure.zen";

/// Displayed name of this page.
Parameter PAGENAME = "Node-Level-Configure";

Parameter RESOURCE = "%Admin_Secure";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property PageMessage As %String;

XData Style
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod changeOption(newOption) [ Language = javascript ]
{
}

/// For option2, user changed the Role. If Role is "computed" then the checkMirror becomes disabled and the fields under it should disappear.
/// If Role is "data" then checkMirror becomes enabled. If user has previously checked it then now the fields with the previouly entered values are shown.
ClientMethod changeRole(newOption) [ Language = javascript ]
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

Method DrawResult(seed As %String) As %Status
{
}

/// If creating a new view, make sure that the view name is not empty.
ClientMethod validate(proxy) [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Start background job to cleanup a selected directory
ClassMethod SaveData(proxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

}
