Class %CSP.UI.Portal.Archives Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Archive Targets";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As %Boolean = 0;

Parameter EMSSERVICE = "Namespace";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Archives.zen";

Parameter HELPADDRESS = "System Administration, Configuration, System Configuration, Archive Targets";

/// Store translated targetCol linkCaption for <condition>
Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doNew() [ Language = javascript ]
{
}

ClientMethod doEdit(archiveName) [ Language = javascript ]
{
}

/// Delete existing item.
ClientMethod deleteItem(archiveName, tableID) [ Language = javascript ]
{
}

/// Call server delete method.
ClassMethod DeleteData(Name As %String) As %String [ ZenMethod ]
{
}

ClassMethod DrawLink(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status [ Internal ]
{
}

/// Subclass can override.
Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) name of the page.
///  This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

Method OnDrawRibbon() As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}
