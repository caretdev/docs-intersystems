Class %CSP.UI.Portal.Authentication Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Authentication/Web Session Options";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Authentication.zen";

Parameter HELPADDRESS = "System Administration,Security,System Security,Authentication/Web Options";

Parameter EMSSERVICE = "Security";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property AutheEnabled As %Integer;

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property IsNotAdvanced As %Boolean [ InitialExpression = 0 ];

Property OldTwoFactor As %Boolean [ InitialExpression = 0 ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod doResetJWKS() [ Language = javascript ]
{
}

ClassMethod ResetJWKS() As %ZEN.proxyObject [ ZenMethod ]
{
}

ClientMethod LDAPChanged() [ Language = javascript ]
{
}

ClientMethod DelegatedChanged() [ Language = javascript ]
{
}

ClientMethod twoFactorChanged(newvalue) [ Language = javascript ]
{
}

ClientMethod twoFactorPWChanged(newvalue) [ Language = javascript ]
{
}

ClientMethod passwordChanged(newvalue) [ Language = javascript ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

/// Save current item.
ClientMethod doSave() [ Language = javascript ]
{
}

ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
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
