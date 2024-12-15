/// Home page for the User Portal.<br/>
/// This provides end users a way to access reports, dashboards etc.
Class %DeepSee.UserPortal.Home Extends %DeepSee.UserPortal.standardPage [ System = 4 ]
{

/// Name of this page.
Parameter PAGENAME = "UserPortal Home";

/// URL of home page (used in links).
Parameter HOMEPAGE = "_DeepSee.UserPortal.Home.zen";

/// Starting view for worklist 1.
Parameter WORKLIST1VIEW;

/// Starting view for worklist 2.
Parameter WORKLIST2VIEW;

/// Current folder name.
Property folderName As %ZEN.Datatype.string;

/// Name of the new dashboard.
Property dashboardName As %ZEN.Datatype.string;

/// Title of the new dashboard.
Property dashboardTitle As %ZEN.Datatype.string;

/// Description of the new dashboard.
Property dashboardDescription As %ZEN.Datatype.string;

/// Owner of the currently displayed dashboard.
Property dashboardOwner As %ZEN.Datatype.string;

/// Resource for the currently displayed dashboard.
Property dashboardResource As %ZEN.Datatype.string;

/// If true, the dashboard uses the new snapGrid desktop and ignores the
/// the <property>dashboardSnapTo</property> property.
Property dashboardSnapGrid As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Is dashboard in "snap to" mode.
Property dashboardSnapTo As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If dashboard uses snap grid, then this is then number of grid rows.
Property dashboardGridRows As %ZEN.Datatype.integer [ InitialExpression = 2 ];

/// If dashboard uses snap grid, then this is then number of grid columns.
Property dashboardGridCols As %ZEN.Datatype.integer [ InitialExpression = 2 ];

/// Does this dashboard allow the user to move and resize widgets.
Property dashboardResize As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Does this dashboard allow the user to modify widgets.
Property dashboardModify As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Keywords for the new dashboard.
Property dashboardKeywords As %ZEN.Datatype.string;

/// Locked state of the currently displayed dashboard.
Property dashboardLocked As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Public state of the currently displayed dashboard.
Property dashboardPublic As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Category for the new dashboard.
Property dashboardCategory As %ZEN.Datatype.string;

/// Name of selected item.
Property selectedItemName As %ZEN.Datatype.string;

/// Current folder category (used for filtering).
Property folderCategory As %ZEN.Datatype.string [ InitialExpression = "all" ];

/// How to display items.
Property folderView As %ZEN.Datatype.string [ InitialExpression = "covers" ];

/// Style applied to coverView background;
Property desktopStyle As %ZEN.Datatype.style;

/// Current namespace.
Property namespace As %ZEN.Datatype.string [ InitialExpression = {$namespace} ];

XData Style
{
}

/// This XML defines the menu for this page.
XData menuPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML defines the main display area.
XData contentsRightPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Draw the contents of the worklist title area.
Method DrawWorklistTitle(pSeed As %String) As %Status [ Final ]
{
}

/// Draw the contents of the Folders Header area.
Method DrawFoldersHeader(pSeed As %String) As %Status [ Final ]
{
}

/// Draw the contents of the Folders Footer area.
Method DrawFoldersFooter(pSeed As %String) As %Status [ Final ]
{
}

/// Draw the contents of the Folders area.
ClientMethod renderFoldersList() [ Language = javascript ]
{
}

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
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

/// Refresh the folder list.
ClientMethod refreshFolders(reload) [ Language = javascript ]
{
}

/// Activate the search text box;
ClientMethod activateSearchBox() [ Language = javascript ]
{
}

/// Key press in search box.
ClientMethod searchKeyPress(evt) [ Language = javascript ]
{
}

/// Perform a search.
ClientMethod doSearch() [ Language = javascript ]
{
}

/// Hide/show folders in list.
ClientMethod toggleFolder(index) [ Language = javascript ]
{
}

/// Adjust sizes of content area.
ClientMethod onAdjustSizes(load, contentWidth, contentHeight) [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Create a new dashboard.
ClientMethod newDashboard() [ Language = javascript ]
{
}

/// Edit a dashboard.
ClientMethod editDashboard(info) [ Language = javascript ]
{
}

/// Create a new link.
ClientMethod newLink() [ Language = javascript ]
{
}

/// Edit a link.
ClientMethod editLink(info) [ Language = javascript ]
{
}

/// Edit a pivot.
ClientMethod editPivot(info) [ Language = javascript ]
{
}

/// Create a new report shortcut.
ClientMethod newReport() [ Language = javascript ]
{
}

/// Edit a report shortcut.
ClientMethod editReport(info) [ Language = javascript ]
{
}

/// Save the bookcover for the given dashboard.
Method SaveBookCover(pName As %String, pSpec As %String) As %String [ ZenMethod ]
{
}

/// Save the new dashboard.
Method SaveDashboardToFolder() As %String [ ZenMethod ]
{
}

/// Delete the given item.
ClientMethod deleteItem(name) [ Language = javascript ]
{
}

/// Select the given item.
ClientMethod selectItem(name) [ Language = javascript ]
{
}

/// Show the analyzer page.
ClientMethod gotoAnalyzer() [ Language = javascript ]
{
}

/// Show the System Management portal.
ClientMethod gotoSMP() [ Language = javascript ]
{
}

/// Show the register user dialog.
ClientMethod registerUser() [ Language = javascript ]
{
}

/// Update the title for the dashboard.
ClientMethod updateWorklistTitle() [ Language = javascript ]
{
}

/// Return list of options for work list 1.
Method %OnGetWorklistOptions1(Output pOptions, Output pDefaultMode) As %Status
{
}

/// Return list of options for work list 2.
Method %OnGetWorklistOptions2(Output pOptions, Output pDefaultMode) As %Status
{
}

/// Get contents for the item details box.
ClientMethod getDetailsHTML() [ Language = javascript ]
{
}

/// Get details on selected item.
ClassMethod GetItemDetails(pName As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Change the folder category
ClientMethod setFolderCategory(evt, cat) [ Language = javascript ]
{
}

/// Change the folder view.
ClientMethod setFolderView(evt, view) [ Language = javascript ]
{
}

/// Toggle display of worklist area.
ClientMethod toggleLayout() [ Language = javascript ]
{
}

/// Get popup details for a book cover.
ClientMethod getCoverDetails(index) [ Language = javascript ]
{
}

/// Get $var context for a book cover.
ClientMethod getCoverContext(index) [ Language = javascript ]
{
}

/// User action on a book cover.
ClientMethod activateCover(index, action) [ Language = javascript ]
{
}

/// Get the JSON item list.
/// Apply search filtering.
ClientMethod getItemList() [ Language = javascript ]
{
}

/// Get list of items for JSON provider.
Method GetItemArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Store a persistent cookie.
ClientMethod storeCookie(property, value) [ Internal, Language = javascript ]
{
}

/// Launch the book cover editor.
ClientMethod designBookCover(name, spec) [ Language = javascript ]
{
}

/// Return an object describing what to display for this level within the navigator.
ClientMethod navGetContentForLevel(level, key, value) [ Language = javascript ]
{
}

/// Select of item within the navigator.
ClientMethod navSelectItem(key, value, which) [ Language = javascript ]
{
}

/// Show add item menu.
ClientMethod addNewItem() [ Language = javascript ]
{
}

/// Change of data value in navigator.
ClientMethod navDataChange(key, value, final) [ Language = javascript ]
{
}

/// Test if there are background style overrides.
ClientMethod hasOverrides() [ Language = javascript ]
{
}

/// Reset any background style overrides.
ClientMethod resetOverrides() [ Language = javascript ]
{
}

/// Launch the dashboard finder.
ClientMethod openDashboard() [ Language = javascript ]
{
}

}
