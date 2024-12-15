/// Zen page for System Management Portal - Purge Audit Log
Class %CSP.UI.Portal.Audit.PurgeLog Extends %CSP.UI.Portal.Audit.ActionTemplate [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Purge Audit Log";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Audit.PurgeLog.zen";

Parameter HELPADDRESS = "System Administration,Security,Auditing,Purge Audit Log";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property Action As %String [ InitialExpression = "Purge" ];

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
