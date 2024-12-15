/// System Management Portal - System Administration - Resources
Class %CSP.UI.Portal.Resources Extends %CSP.UI.Template.List [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Resources.zen";

Parameter HELPADDRESS = "System Administration,Security,Resources";

Parameter EMSSERVICE = "Security";

Property FILETYPE As %String [ InitialExpression = "Resource" ];

/// Displayed name of this page.
Parameter PAGENAME = "Managing Resources";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property msgConfirm As %String [ InitialExpression = {$$$TextJS("Are you sure you want to delete resource code %1?")} ];

Property msgDeleteMsgs As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to delete the selected %1 resource(s)?")} ];

Property msgDBDefault As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("(%DB_%DEFAULT cannot be deleted.)")} ];

/// Resource Name Spec on the Search pane. User can enter any of the following:<br/>
/// <ul>Names - Comma separated list of resource names
/// <li>"*" - All records match</li>
/// <li>"String,String1" - Any records matching one of these elements</li>
/// <li>"String*" - Any record starting with "String"</li>
/// <li>"String,String1*,String2" - Any record matching one of these elements, or starting with "String1"</li>
/// </ul>
Property Spec As %ZEN.Datatype.string [ InitialExpression = "*" ];

/// Read public permission on the Search pane. Default to checked.
Property PermissionRead As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Write public permission on the Search pane. Default to checked.
Property PermissionWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Use public permission on the Search pane. Default to checked.
Property PermissionUse As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// No public permission on the Search pane. Default to checked.
Property PermissionNo As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Store translated targetCol linkCaption for <condition>
Property colDelete As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete")} ];

XData Style
{
}

/// This pane displays the search criteria. We provide defaults and user can change them.
/// User's values are saved and used as future defaults for this user.
/// Subclass to override.
XData searchPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData resultPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked Go to start search.
ClientMethod doSearch() [ Language = javascript ]
{
}

/// Check if user hit [Enter].
ClientMethod keyUp(zenEvent) [ Language = javascript ]
{
}

Method GetLastSearch() As %String
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

/// Method for executing the query.
Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// Delete selected resource(s).
ClientMethod doDelete(resource) [ Language = javascript ]
{
}

ClientMethod doEdit(resource) [ Language = javascript ]
{
}

ClientMethod doExport() [ Language = javascript ]
{
}

ClientMethod doImport() [ Language = javascript ]
{
}

ClientMethod doProfile() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod reloadTable() [ Language = javascript ]
{
}

/// Draw the contents of the Table Header (the region between the diagram and the table).
Method DrawTableHeader(pSeed As %String) As %Status
{
}

/// Delete selected resource/s now.
ClassMethod Delete(resource As %String) As %String [ ZenMethod ]
{
}

/// When page is loaded, check if this is a ReadOnly for EMS. If it is then disable the multiple select.<br/>
/// Else disable the checkbox for %DB_%DEFAULT.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
