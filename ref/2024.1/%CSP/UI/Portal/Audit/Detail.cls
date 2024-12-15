Class %CSP.UI.Portal.Audit.Detail Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter RESOURCE = "%Admin_Secure:USE";

/// Displayed name of this page.
Parameter PAGENAME = "AuditDetail";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Audit.Detail.zen";

/// Display title of this page <title></title>
Parameter PAGETITLE = "Audit Details";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// Switch namespace for this page:
Parameter AUTONS As BOOLEAN = 0;

Property PID As %ZEN.Datatype.string(ZENURL = "PID");

XData Style
{
}

/// This XML block defines the contents of this page.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClassMethod DrawDetails(PID As %String) As %Status
{
}

ClassMethod LoopValue(InputValue As %String) As %String
{
}

ClassMethod JSONValue(InputValue As %String) As %String
{
}

ClassMethod LinkValue(InputValue As %String) As %String
{
}

ClassMethod LinkTarget(InputValue As %String) As %String
{
}

ClassMethod SQLErrs(InputValue As %String) As %String
{
}

}
