/// Zen page for System Management Portal - Export Audit Log
Class %CSP.UI.Portal.Audit.ExportLog Extends %CSP.UI.Portal.Audit.ActionTemplate [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Export Audit Log";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Audit.ExportLog.zen";

Parameter HELPADDRESS = "System Administration,Security,Auditing,Export Audit Log";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property Action As %String [ InitialExpression = "Export" ];

XData formPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Returning from file select OR qualifers dialog and setting the value into the appropriate field.
/// The id of the field that needs to be updated is saved in "dialogClicked".
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Launching a file selector window.
ClientMethod doBrowse(fieldID) [ Language = javascript ]
{
}

ClientMethod saveToCookie(filename) [ Language = javascript ]
{
}

ClassMethod FileExists(filename As %String) As %Boolean [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

}
