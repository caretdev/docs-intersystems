/// Zen page for System Management Portal - SSL/TLS Configurations List
Class %CSP.UI.Portal.SSLList Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Class name of application this page belongs to.
/// Parameter APPLICATION = "%CSP.UI.Portal.Application";
/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "SSL/TLS Configurations";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.SSLList.zen";

Parameter HELPADDRESS = "System Administration,Security,SSL/TLS Configurations";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property EditPage As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.SSL.zen",,1)_"isNew=1"} ];

Property EditPageMirror As %String [ InitialExpression = {..Link("%25CSP.UI.Portal.SSL.zen",,1)_"PID=%25MirrorServer"} ];

/// Store translated targetCol linkCaption for <condition>
Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];

Property colEdit As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Edit")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

ClassMethod DrawName(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClientMethod doNew(isMirror) [ Language = javascript ]
{
}

/// Delete existing configuration.
ClientMethod deleteSetting(PID) [ Language = javascript ]
{
}

/// Call server delete method.
ClassMethod DeleteItem(PID) As %String [ ZenMethod ]
{
}

ClassMethod MirrorManaged() As %Boolean [ ZenMethod ]
{
}

}
