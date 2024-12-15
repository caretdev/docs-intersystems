Class %CSP.UI.Portal.LDAP Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Edit LDAP configuration";

Parameter PARENTPAGE = "/csp/sys/sec/%CSP.UI.Portal.LDAPs.zen";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.LDAP.zen";

Parameter HELPADDRESS = "Home,Security Management,Security LDAP configurations,Edit LDAP configuration";

Parameter EMSSERVICE = "Users";

Parameter RECENT = 0;

Property IsTest As %Boolean [ InitialExpression = 0 ];

Property LDAPUserString1 As %String [ InitialExpression = {$$$TextHTML("LDAP username to use for searches")} ];

Property LDAPUserString2 As %String [ InitialExpression = {$$$TextHTML("LDAP search username DN")} ];

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doCopyLDAPConfig(newLDAPConfig) [ Language = javascript ]
{
}

Method CopyLDAPConfig(LDAPConfigName As %String) As %Status [ ZenMethod ]
{
}

ClientMethod validate() As %Boolean [ Language = javascript ]
{
}

ClientMethod toggle(groupID) [ Language = javascript ]
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

/// Launching a file selector window.
ClientMethod doBrowse(fieldID) [ Language = javascript ]
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

/// User changed PWOptions option. If they want to enter new password, show password fields. Otherwise hide them.
ClientMethod togglePW(PWOptions) [ Language = javascript ]
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

/// get BaseDN based on name.
ClientMethod doBaseDN() [ Language = javascript ]
{
}

ClientMethod clearClosureTest() [ Language = javascript ]
{
}

/// get BaseDN based on name..
ClassMethod doBaseDN1(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Save current item.
ClientMethod doSave() [ Language = javascript ]
{
}

/// Call server save method.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
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

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
