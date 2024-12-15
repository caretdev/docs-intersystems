Class %CSP.UI.Portal.LDAPTest Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Test LDAP Authentication";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.LDAPs.zen";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.LDAPTest.zen";

Parameter HELPADDRESS = "Home,Security Management,Security LDAP configurations,Test LDAP Authentication";

Parameter EMSSERVICE = "Users";

Parameter RECENT = 0;

Property IsTest As %Boolean [ InitialExpression = 0 ];

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Returning from file select OR qualifers dialog and setting the value into the appropriate field.
/// The id of the field that needs to be updated is saved in "dialogClicked".
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Save current item.
ClientMethod doTest() [ Language = javascript ]
{
}

ClassMethod DoLDAPTest(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod IsWindows() As %ZEN.proxyObject [ ZenMethod ]
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

/// The test may run longer than the default timeout on the csp gateway.
/// Increase the timeout to an hour when we press the "Test" button.
ClassMethod OnPreHyperEvent(class As %String, method As %String) As %Status [ ServerOnly = 1 ]
{
}

}
