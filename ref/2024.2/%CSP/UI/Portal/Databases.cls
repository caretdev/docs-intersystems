/// System Management Portal - System Administration - Local Databases
Class %CSP.UI.Portal.Databases Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Databases.zen";

Parameter HELPADDRESS = "Home,Configuration,Local Databases";

Parameter EMSSERVICE = "Namespace";

/// Displayed name of this page.
Parameter PAGENAME = "Managing Local Databases";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property MirrorName As %String;

/// Store translated targetCol linkCaption for <condition>
Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];

Property colGlobals As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Globals")} ];

Property colVolumes As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Volumes")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value, tableID) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method OnDrawRibbon() As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

ClientMethod doDelete(dir, dbname) [ Language = javascript ]
{
}

ClientMethod doEdit(dir, dbname, mirror) [ Language = javascript ]
{
}

ClientMethod doNew() [ Language = javascript ]
{
}

ClientMethod doMirrorAdd() [ Language = javascript ]
{
}

ClientMethod doVolumes(dir) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
