Class %CSP.UI.Portal.LDAPRO Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Edit LDAP configuration";

Parameter PARENTPAGE = "/csp/sys/op/%CSP.UI.Portal.LDAPsRO.zen";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.LDAPRO.zen";

Parameter HELPADDRESS = "Home,Security Management,Security LDAP configurations,Edit LDAP configuration";

Parameter EMSSERVICE = "Users";

Parameter RECENT = 0;

Property IsTest As %Boolean [ InitialExpression = 0 ];

Property LDAPUserString1 As %String [ InitialExpression = {$$$TextHTML("LDAP username to use for searches")} ];

Property LDAPUserString2 As %String [ InitialExpression = {$$$TextHTML("LDAP search username DN")} ];

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

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

ClientMethod toggle(groupID) [ Language = javascript ]
{
}

ClientMethod changedGroupSetting(newValue) [ Language = javascript ]
{
}

ClientMethod showDomain(newvalue) [ Language = javascript ]
{
}

ClientMethod showLDAP(newvalue) [ Language = javascript ]
{
}

/// Update group examples.
ClientMethod changedGroup() [ Language = javascript ]
{
}

/// get BaseDN based on name..
ClassMethod dochangedGroup1(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod IsWindows() As %ZEN.proxyObject [ ZenMethod ]
{
}

Method PopulateFields(ByRef Properties As %String) As %Status
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

}
