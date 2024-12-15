Class %CSP.UI.Portal.Audit.SelectiveWizard Extends %ZEN.Dialog.standardDialog [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

///  Displayed name of this page.
Parameter PAGENAME = "Selective SQL Auditing Wizard";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Audit.SelectiveWizard.zen";

Parameter HELPADDRESS = "System Administration,Security,Auditing,Configure System Events";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.Audit.SystemEvents.cls";

Parameter EMSSERVICE = "Security";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Parameter APPLYBUTTON = 1;

Property ALREADYON As %String(ZENURL = "ALREADYON");

XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnGetTitle() As %String
{
}

Method %OnGetSubtitle() As %String
{
}

ClientMethod onloadHandler(load) [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

}
