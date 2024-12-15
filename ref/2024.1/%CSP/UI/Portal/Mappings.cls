/// Zen page for System Management Portal - Show Databases Freespace
Class %CSP.UI.Portal.Mappings Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Mappings";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mappings.zen";

Parameter HELPADDRESS = "Home,Configuration,Namespaces,Global Mappings";

Parameter EMSSERVICE = "Namespace";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.Namespaces.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property CPFMapFile As %String;

Property CPFMapName As %String;

Property EditPage As %String;

Property MapType As %ZEN.Datatype.string(ZENURL = "MapType");

Property Namespace As %ZEN.Datatype.string(ZENURL = "PID");

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

///  Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Process Add or Edit. Open popup window and pass in parameters.
ClientMethod editMapping(selectedName) [ Language = javascript ]
{
}

/// Delete existing mapping.
ClientMethod deleteMapping(idRow) [ Language = javascript ]
{
}

/// Save current mappings.
ClientMethod doSave() [ Language = javascript ]
{
}

/// Cancel current mappings.
ClientMethod doDiscard() [ Language = javascript ]
{
}

/// Refresh table.
/// flag = 1: user has either Saved Changes or Canceled Changes.<br>
/// flag = 0: user returned from Edit or Delete. Leave changeMade flag to be true
ClientMethod refreshTable(flag) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Initialize CPF file/global
Method Init(CPFName As %String) As %Status
{
}

/// Call server save method.
ClassMethod SaveChanges(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Call server cancel method.
ClassMethod CancelChanges(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Call server delete method.
ClassMethod DeleteItem(Name As %String, pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

Method DrawCollation(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

/// Zen page notification of an HTTP request. This method can be overwritten
/// by subclasses.<br/>
/// This is called <em>before</em> the standard Zen pre-HTTP processing occurs.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Set the modified flag for the page.
ClientMethod setModified(flag) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod removeElement(el) [ Language = javascript ]
{
}

/// Overriden to add MapType to the page name to distinguish the type for the page.
ClientMethod navPageSizeChanged(value) [ Language = javascript ]
{
}

/// Overriden to add MapType to the page name to distinguish the type for the page.
ClientMethod navMaxRowsChanged(value) [ Language = javascript ]
{
}

/// Used to Save tableNavBar values, add MapType to the page name to distinguish the type for the page.
ClassMethod UpdateTableNavState(pFilter As %String, pPageSize As %Integer, pMaxRows As %Integer, pMapType As %String) [ ZenMethod ]
{
}

}
