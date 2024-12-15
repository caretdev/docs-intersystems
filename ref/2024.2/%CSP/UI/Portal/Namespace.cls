/// Zen page for System Management Portal - New Namespace
Class %CSP.UI.Portal.Namespace Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "New Namespace";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Namespace.zen";

Parameter HELPADDRESS = "Home,Configuration,Namespaces,New Namespace";

Parameter EMSSERVICE = "Namespace";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.Namespaces.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Is this instance InterSystems IRIS or HealthShare? If so, CSP application creation is handled differently.
Property IsEnsemble As %Boolean [ InitialExpression = {$S(##class(%Library.EnsembleMgr).IsEnsembleInstalled():1,##class(%Library.EnsembleMgr).IsHealthShareInstalled():1,1:0)} ];

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

/// The new namespace's name cannot be in the list
Property ReservedNames As %String [ InitialExpression = ",BIN,BROKER,DOCUMATIC,SYS," ];

/// Currently set namespace name.
Property CurrentNamespace As %String;

/// Label for type of namespace to make
Property productLbl As %ZEN.Datatype.caption;

/// Parent URL that Cancel and Save should return to
Property ParentURL As %ZEN.Datatype.string [ InitialExpression = {..Link($ZCVT($case($get(%request.Data("SRC",1)), "SHARD":"/csp/sys/mgr/%CSP.UI.Portal.Sharding.Configuration.zen", :..#PARENTPAGE),"O","URL"))} ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod changeNamespace(Namespace) [ Language = javascript ]
{
}

ClientMethod changeCopy(copyFrom) [ Language = javascript ]
{
}

ClientMethod changeRemote(isRemote) [ Language = javascript ]
{
}

ClientMethod changeRemoteRtns(isRemote) [ Language = javascript ]
{
}

ClientMethod doNew(isRemote, dbField) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod validate(proxy) [ Language = javascript ]
{
}

ClassMethod GetDBName(Namespace As %String) As %ZEN.proxyObject [ ZenMethod ]
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

ClientMethod doEnsChange() [ Language = javascript ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
