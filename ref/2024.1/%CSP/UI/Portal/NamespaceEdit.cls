/// Zen page for System Management Portal - Edit Namespace
Class %CSP.UI.Portal.NamespaceEdit Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Edit Namespace";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.NamespaceEdit.zen";

Parameter HELPADDRESS = "Home,Configuration,Namespaces,New Namespace";

Parameter EMSSERVICE = "Namespace";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.Namespaces.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod validate(proxy) [ Language = javascript ]
{
}

/// Evaluate whether changing the name of this namespace could cause Interoperability and Analytics to become unusable in this namespace
/// based on whether the instance is Interoperability or Analytics enabled and whether there is a web app with a name matching the namespace name
Method GiveRenameWarning(pOldNamespace As %String, pNewNamespace As %String) As %Boolean [ ZenMethod ]
{
}

Method IsEnsembleNamespace(pNamespace) As %Boolean [ CodeMode = expression, ZenMethod ]
{
}

///  Save general association data to server.<br/>
///  Returns proxy.ok = 1 (save successful) or 0 (error occurred)<br/>
///  proxy.Message (save successful, with warning message: require restart)<br/>
///  proxy.ErrorMessage (save failed and display this error message).
///  If proxy.ok is 1 and no messages returned then we return to Database list page.
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

}
