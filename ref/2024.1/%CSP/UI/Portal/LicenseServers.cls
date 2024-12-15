/// System Management Portal - System Administration - License Key
Class %CSP.UI.Portal.LicenseServers Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.LicenseServers.zen";

Parameter HELPADDRESS = "Home,Licensing,License Server";

Parameter EMSSERVICE = "License";

/// Displayed name of this page.
Parameter PAGENAME = "License Servers";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property TitleCreate As %ZEN.Datatype.string [ InitialExpression = {$$$Text("Create New License Server")} ];

Property TitleEdit As %ZEN.Datatype.string [ InitialExpression = {$$$Text("Edit License Server")} ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
{
}

/// Edit an existing one - load current values
ClientMethod doEdit(name, address, port, dir) [ Language = javascript ]
{
}

/// Cancel the current edit - hide edit form.
ClientMethod doCancel() [ Language = javascript ]
{
}

ClientMethod afterSave(result As %ZEN.proxyObject) [ Language = javascript ]
{
}

/// Delete a license server.
ClientMethod doDelete(name, address, port) [ Language = javascript ]
{
}

/// Save edit
ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod validate() [ Language = javascript ]
{
}

/// User clicked the Browse button.
ClientMethod browseSelect(name) [ Language = javascript ]
{
}

/// The id of the field that needs to be updated is saved in "dialogClicked".
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClassMethod DeleteData(Name As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Saves license server. pProxy.OldName not null indicate this is a modify.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

///  Return the array of links to show in the locator bar.<br/>
///  pLink(n)=$LB(caption,link)
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

}
