/// Zen page for System Management Portal - Copy Audit Log
Class %CSP.UI.Portal.Audit.CopyLog Extends %CSP.UI.Portal.Audit.ActionTemplate [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Copy Audit Log";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Audit.CopyLog.zen";

Parameter HELPADDRESS = "System Administration,Security,Auditing,Copy Audit Log";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property Action As %String [ InitialExpression = "Copy" ];

XData formPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

}
