/// System Management Portal - System Operations - Local Databases
Class %CSP.UI.Portal.OpDatabases Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.OpDatabases.zen";

Parameter HELPADDRESS = "Home,Databases";

/// Displayed name of this page.
Parameter PAGENAME = "Operation Local Databases";

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

Property msgDismount As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to dismount database %1?")} ];

/// Store translated targetCol linkCaption for <condition>
Property colDismount As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Dismount")} ];

Property colMount As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Mount")} ];

Property FreespacesOn As %String(ZENURL = "FreespacesOn");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// allow to open details page when clicking on a row anywhere.
ClientMethod doSelectRow(option) [ Language = javascript ]
{
}

/// Method to execute the query and show/hide the table according to user selected view type: General and Free space.<br>
/// This method is invoked when the page is first loaded, and when user click to change view.
ClientMethod doFreespaceSwitch() [ Language = javascript ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
{
}

/// Update / Reload table. This overrides the one in Portal.Utils.
ClientMethod updateView() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
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

/// User override of cell-display for tablePane.
Method DrawDB(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClientMethod doIntegrity() [ Language = javascript ]
{
}

ClientMethod doLog() [ Language = javascript ]
{
}

/// This is called in the middle of rendering the tool ribbon.
/// Subclasses can inject their own content into the ribbon by writing it out in this method.
/// This content should be wrapped within a td element.
Method OnDrawRibbon() As %Status
{
}

/// You may turn freespaces switch on (e.g. from EnsembleMonitor) on page opening
/// Otherwise it is off as default.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Save user's freespace selection value
ClassMethod SaveFreespaceOn(pValue As %String) [ ZenMethod ]
{
}

}
