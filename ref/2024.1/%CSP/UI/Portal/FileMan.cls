/// Zen page for System Management Portal - FileMan wizard
/// <p>Note: The FileMan toolset is available and fully supported in InterSystems IRIS for existing FileMan users.
/// InterSystems recommends against starting new development projects using FileMan.</p>
Class %CSP.UI.Portal.FileMan Extends (%CSP.UI.Portal.FileManTemplate, %CSP.UI.Portal.UtilsNav) [ Deprecated, System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "FileMan Wizard";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.FileMan.zen";

Parameter HELPADDRESS = "Home,SQL,FileMan Wizard";

/// Cancel return to this parent page
Parameter PARENTPAGE = "/csp/sys/exp/%CSP.UI.Portal.SQL.Home.zen";

/// Security requirement
Parameter RESOURCE = "%Development";

/// Switch namespace for this page
Parameter AUTONS As BOOLEAN = 1;

Property msgConfirmCancel As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Do you want to keep your file selections in the cart for future use in this session? Click [OK] to keep or [Cancel] to discard selections.")} ];

Property msgSelectAll As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("All files shown in table added to cart.")} ];

Property msgMapAll As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to map all files shown in the current table to classes?")} ];

Property DefaultLogFile As %ZEN.Datatype.string;

Property LogsPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/exp/UtilFileManLog.csp")} ];

Property TasksPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/%25CSP.UI.Portal.BackgroundTaskList.zen")} ];

XData Style
{
}

/// The page contains three blocks:
/// 1. The titleBar, which is drawn here
/// 2. The locatorBar, which is drawn here the Home page. You may add more locator links in subsequent pages
/// 3. The detailPane, which is the main content of your page.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData detailPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Add selected FileNumber to cart.
/// Check to see if User unselected any to not to map. If yes, then save the selected fields.
ClientMethod doAddCart() [ Language = javascript ]
{
}

/// Moving a list item from one box to the next, then remove it from the original box
ClientMethod arrowClick(from, to) [ Language = javascript ]
{
}

ClientMethod arrowClicked(id) [ Language = javascript ]
{
}

/// Moving the entire list from one box to the next, then remove it from the original box
ClientMethod arrowClickAll(from, to) [ Language = javascript ]
{
}

/// User double clicked one of the listboxes. Update imply message.
ClientMethod arrowMoved(thisObj) [ Language = javascript ]
{
}

/// User clicked Cancel. Check if user has selected any files. If yes, prompt user
/// whether they want to keep the selection.
ClientMethod doCancel() [ Language = javascript ]
{
}

/// Delete one selection from tree.
/// If no selections left then go back to previous page.
ClientMethod doDelete() [ Language = javascript ]
{
}

/// User clicked "Clear Cart". Clear all items in the cart and return to previous page.
ClientMethod doDeleteAll() [ Language = javascript ]
{
}

/// User clicked "Finish". Map selected items in the cart - call server method to job off in the background.
ClientMethod doFinish(isFinish) [ Language = javascript ]
{
}

/// User clicked "Map All". Map All that are shown in the current table.
ClientMethod doMapAll() [ Language = javascript ]
{
}

/// User clicked "Next" or "Back". page number pass in is the target page number.
ClientMethod doNext(page) [ Language = javascript ]
{
}

/// User clicked "Select All". Add all that are shown in the current table to the cart.
ClientMethod doSelAll() [ Language = javascript ]
{
}

/// User clicked "Search". Get user file name (partial is okay) and refresh table.
ClientMethod doSearch() [ Language = javascript ]
{
}

/// User clicked "Select". Show Fields for the selected File Number.
ClientMethod doSelect(id) [ Language = javascript ]
{
}

ClientMethod doView(option) [ Language = javascript ]
{
}

/// disable or enable buttons for MapAll and SelectAll
ClientMethod toggleMapAll(flag) [ Language = javascript ]
{
}

/// Show or hide tree.
ClientMethod expandNode(node) [ Language = javascript ]
{
}

/// load tree
ClientMethod treeLoad() [ Language = javascript ]
{
}

/// After running action, display error message or refresh page.
ClientMethod displayResult(ok) [ Language = javascript ]
{
}

/// Update action result. If text is passed in, show it. Otherwise set it to nothing.
ClientMethod showResult(text) [ Language = javascript ]
{
}

/// Set Locator bar and determine whether to show change password option.
Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Actually write out result.
/// When the page is first opened, seed is null.
/// When it's called from Prepare, seed = action^the selected locale.
Method DrawResult(seed As %String) As %Status
{
}

/// Clear cart completely.
ClassMethod ClearCart() As %Boolean [ ZenMethod ]
{
}

/// Remove a selection from cart.
ClassMethod RemoveCart(pid) As %String [ ZenMethod ]
{
}

ClassMethod HasSelection() As %Boolean [ ZenMethod ]
{
}

/// Select all files based on partial filename match.
ClassMethod SelectAll(filename As %String) As %String [ ZenMethod ]
{
}

/// Start background job to map one of the following:
/// 1) user has specific file selections (isFinish=1); or
/// 2) user clicked "Map All" to map all files in a particular (search) table (isFinish=0 and filename is not null).
ClassMethod MapSelected(proxy As %ZEN.proxyObject, isFinish, filename) As %String [ ZenMethod ]
{
}

/// Final call from the background job to create classes.
ClassMethod CreateClasses(ByRef pParms As %String, ByRef pItems As %String) As %Status
{
}

/// If pSelected is null, then map all fields.
/// pSelected is a string with fields delimited by "^" with the first piece to be the NAME of the file.
ClassMethod SaveToCart(pid, pSelected) [ ZenMethod ]
{
}

/// Load fields into Available/Selected list boxes.
ClassMethod UpdateDetails(pid) As %Boolean [ ZenMethod ]
{
}

ClassMethod GetText(pid) As %String [ ZenMethod ]
{
}

/// Build tree for cart. If specific numbers are selected show them in sub tree.
/// The first piece of %session.Data("FileMan",t) is NAME of the file
ClassMethod GetTreeInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// check total Abstract Syntax tree count for presentation context.
/// this method is triggled from onupdate from the tree control.
ClientMethod treeCount() [ Language = javascript ]
{
}

/// show or hide image and link Delete for presentation context
ClientMethod toggleDelete(flag) [ Language = javascript ]
{
}

/// Examine if user hit the Return key. If yes, start the search.
/// This method handles all keydown events on the window.
ClientMethod onkeydownHandler(evt) [ Language = javascript ]
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}
