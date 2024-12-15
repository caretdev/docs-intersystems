Class %CSP.UI.Portal.Parameters Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "System-wide Security Parameters";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Parameters.zen";

Parameter HELPADDRESS = "System Administration,Security,System Security,System-wide Security Parameters";

Parameter EMSSERVICE = "Security";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// onchange handler for SSLSuperServer SSLTelnetServer fields:
/// type=0 for SuperServer type=1 for Telnet Server
ClientMethod SSLChanged(newvalue, type) [ Language = javascript ]
{
}

ClientMethod AuditChanged(newvalue) [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Save current item.
ClientMethod doSave() [ Language = javascript ]
{
}

ClassMethod CheckSSLConfig(type As %Integer) As %Boolean [ ZenMethod ]
{
}

ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method PopulateDomainList() As %Status
{
}

/// Get the (localized) name of the page.
///  This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
