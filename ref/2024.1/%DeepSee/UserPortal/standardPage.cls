/// Base class for pages within the DeepSee user portal.
Class %DeepSee.UserPortal.standardPage Extends (%ZEN.Component.page, %ZEN.Portal.abstractRefreshable) [ Abstract, System = 4 ]
{

Parameter JSINCLUDES = "zenCSLM.js,zenESVG.js,DeepSee.js";

/// Set this to the appropriate application class.
Parameter APPLICATION = "%DeepSee.UserPortal.Application";

/// DeepSee favorite icon.
Parameter FAVORITEICON = "portal/ISC_IRIS_icon.ico";

/// Set this to the correct domain.
Parameter DOMAIN = "%DeepSee";

/// All DeepSee pages require %DeepSee_Portal USE.
Parameter RESOURCE = "%DeepSee_Portal,%DeepSee_PortalEdit";

/// Name of this page.
Parameter PAGENAME = "User Portal";

/// URL of home page (used in links).
Parameter HOMEPAGE = "_DeepSee.UserPortal.Home.zen";

/// Starting mode for worklist 1: html or group.
Parameter WORKLIST1MODE = "html";

/// Starting mode for worklist 2: html or group.
Parameter WORKLIST2MODE = "html";

/// Define the title that will be displayed within subclasses
Property StdTitle As %ZEN.Datatype.string [ InitialExpression = {..#PAGENAME} ];

/// URL of the Home Page.
Property homePage As %ZEN.Datatype.string [ InitialExpression = {..#HOMEPAGE} ];

/// About page URL
Property aboutPage As %ZEN.Datatype.string [ InitialExpression = {..Link("_CSP.UI.Portal.About.zen?USERPORTAL=1")} ];

/// ID of alert that launched this page, if any.
Property alertId As %ZEN.Datatype.string(ZENURL = "ALERT");

/// Current search key.
Property searchKey As %ZEN.Datatype.string;

/// URL of viewer page.
Property viewerURL As %ZEN.Datatype.uri;

/// Number of worklist panels to display: 0,1,or 2.
Property worklistCount As %ZEN.Datatype.integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 2 ];

/// If true, send e-mail using client-side mailto application.
Property useClientEmail As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Convenience property. Setting this true is equivalent to
/// NOTITLE=1,NOBORDER=1,NOMODIFY=1,WORKLISTS=0
Property isEmbedded As %ZEN.Datatype.boolean(ZENURL = "EMBED");

/// If true, then do not display the title area of this page.
Property noTitle As %ZEN.Datatype.boolean(ZENURL = "NOTITLE");

/// If true, then do not display the outer border around the desktop area of this page.
Property noBorder As %ZEN.Datatype.boolean(ZENURL = "NOBORDER");

/// If true, then do not allow user to modify this page (this is only a convenience, it is
/// not enforced by privileges).
Property noModify As %ZEN.Datatype.boolean(ZENURL = "NOMODIFY");

/// If set override the worklist count (number of worklist boxes on side of page). This
/// can be 0,1, or 2.
Property urlWorklistCount As %ZEN.Datatype.integer(ZENURL = "WORKLISTS");

/// If true, user can modify this page.
Property canWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Chart series color scheme.
Property chartSeriesScheme As %ZEN.Datatype.string;

/// Chart series color list.
Property chartSeriesColors As %ZEN.Datatype.string;

/// Local override of company name.
Property companyName As %ZEN.Datatype.string;

/// Local override of company logo.
Property companyLogo As %ZEN.Datatype.string;

/// Local override of company cell style.
Property companyStyle As %ZEN.Datatype.string;

/// Set to true to suppress hyperevent error pop-ups in
/// the event of a connectitivity failure.
Property limitPopups As %ZEN.Datatype.boolean [ InitialExpression = {##class(%CSP.Portal.Utils).%IsConnectivityPopupDisabled()} ];

XData Style
{
}

/// Contents of this page:
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
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

/// Draw the contents of the title area.
/// Dispatch to application class.
Method DrawTitle(pSeed As %String) As %Status
{
}

/// Add include files to support color schemes.
Method %OnDrawHTMLHead() As %Status
{
}

/// Draw the contents of the worklist title area.
Method DrawWorklistTitle(pSeed As %String) As %Status
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

/// Draw the header for worklist 1.
Method DrawWorklistHeader1(pSeed As %String) As %Status
{
}

/// Draw the contents of the worklist 1.
Method DrawWorklist1(pSeed As %String) As %Status
{
}

/// Draw the the header for worklist 2.
Method DrawWorklistHeader2(pSeed As %String) As %Status
{
}

/// Draw the contents of the worklist 2.
Method DrawWorklist2(pSeed As %String) As %Status
{
}

/// Define any quick links for the page
ClassMethod GetQuickLinks(Output pLinks) As %Status
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

/// Get the contents of the small menu in the title area.
Method %OnGetSmallMenu(Output pMenu)
{
}

/// Go to the home page.
ClientMethod goHome() [ Language = javascript ]
{
}

/// Go to the home page.
ClientMethod showAbout() [ Language = javascript ]
{
}

/// Show documentation.
ClientMethod showHelp() [ Language = javascript ]
{
}

/// End the current session.
ClientMethod logout() [ Language = javascript ]
{
}

ClassMethod DoLogout() As %Boolean [ ZenMethod ]
{
}

/// Return the height of the title area (titleBar plus locator).
ClientMethod getTitleAreaHeight() [ Language = javascript ]
{
}

/// Navigate to a new page in the portal.
ClientMethod navigate(url) [ Language = javascript ]
{
}

/// Navigate to a new namespace in the portal.
ClientMethod gotoNamespace(url) [ Language = javascript ]
{
}

/// View the given alert.
ClientMethod gotoAlert(url) [ Language = javascript ]
{
}

/// View the given favorite.
ClientMethod gotoFavorite(url) [ Language = javascript ]
{
}

/// Add item to favorites
ClientMethod addToFavorites(name) [ Language = javascript ]
{
}

/// Remove item from favorites
ClientMethod removeFromFavorites(name) [ Language = javascript ]
{
}

/// Remove item from recent list.
ClientMethod removeFromRecentList(name) [ Language = javascript ]
{
}

/// Remove item from alerts.
ClientMethod removeFromAlerts(alertId) [ Language = javascript ]
{
}

/// Update the all worklists showing the given type.
ClientMethod updateWorklistType(mode) [ Language = javascript ]
{
}

/// Called when user updates or clicks on an icon in a worklist.
ClientMethod setWorklistView(id, mode, type) [ Language = javascript ]
{
}

ClassMethod AddFavorite(pName As %String) As %Boolean [ ZenMethod ]
{
}

ClassMethod RemoveFavorite(pName As %String) As %Boolean [ ZenMethod ]
{
}

ClassMethod RemoveAlert(pAlertId As %String) As %Boolean [ ZenMethod ]
{
}

ClassMethod RemoveRecentItem(pName As %String) As %Boolean [ ZenMethod ]
{
}

/// Update the title for the worklist.
ClientMethod updateWorklistTitle() [ Language = javascript ]
{
}

/// Adjust sizes of components on the page.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Adjust sizes of components on the page.
ClientMethod adjustSizes(load) [ Language = javascript ]
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

/// Draw the contents of a worklist panel within the user portal.<br/>
/// <var>pMode</var> indicates the type of contents to display.<br/>
/// <var>pPanelId</var> is the id of the html component displaying the panel.<br/>
/// <var>pPanelNo</var> is the worklist number.<br/>
/// <var>pOptions</var> is a list of the available options:<br/>
/// pOptions(n) = $LB(name,type,class)
ClassMethod %DrawWorklistHeader(pMode As %String, pPanelId As %String, pPanelNo As %Integer, ByRef pOptions As %List) As %Status [ Final ]
{
}

/// Draw the contents of a worklist panel within the user portal.<br/>
/// <var>pMode</var> indicates the type of contents to display (which item in the options list).<br/>
/// <var>pPanelId</var> is the id of the html component displaying the panel.<br/>
/// <var>pPanelNo</var> is the worklist number.<br/>
/// <var>pOptions</var> is a list of the available options:<br/>
/// pOptions(n) = $LB(name,type,class)
ClassMethod %DrawWorklist(pMode As %String, pPanelId As %String, pPanelNo As %Integer, ByRef pOptions As %List) As %Status [ Final ]
{
}

/// Move the given folder item to the trash folder.
Method SendItemToTrash(pName As %String) As %String [ ZenMethod ]
{
}

/// Toggle display of work lists.
ClientMethod toggleWorklists() [ Language = javascript ]
{
}

/// Launch the send alert dialog.
ClientMethod sendAlert() [ Language = javascript ]
{
}

/// Launch the send email dialog.
ClientMethod sendMail(url, title) [ Language = javascript ]
{
}

/// Expand or contract of navigator.
ClientMethod navExpand() [ Language = javascript ]
{
}

/// Return an object describing what to display for this level within the navigator.
ClientMethod navGetContentForLevel(level, key) [ Language = javascript ]
{
}

/// Change of data value in navigator.
ClientMethod navDataChange(key, value, final) [ Language = javascript ]
{
}

/// Re-arrange of a list in navigator.
ClientMethod navDataArrange(key, swap, final) [ Language = javascript ]
{
}

/// Click on header button in navigator.
ClientMethod navHeaderButtonClick(key) [ Language = javascript ]
{
}

/// Click on close button in navigator.
ClientMethod navCloseButtonClick(key) [ Language = javascript ]
{
}

/// Popup action in navigator.
ClientMethod navPopupAction(key, value) [ Language = javascript ]
{
}

/// Select of item within the navigator.
ClientMethod navSelectItem(key, value, which) [ Language = javascript ]
{
}

/// Get the navigator component.
ClientMethod getNavigator() [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

Method %OnDrawHTMLMeta() As %Status
{
}

/// Set the contents of the small message box in the title.
ClientMethod setPortalTitleMsg(msg) [ Language = javascript ]
{
}

/// Set the HTML contents of the company logo cell in the title.
/// If content is null, restore original content.
ClientMethod setCompanyCell(content) [ Language = javascript ]
{
}

/// Update the contents of the company cell in the title (if present) to
/// match the local settings of this page.
ClientMethod updateCompanyCell(load) [ Language = javascript ]
{
}

/// Reload this page in an IE-friendly way!
ClientMethod reloadPage() [ Language = javascript ]
{
}

/// Custom handler for hyperEvent handlers to be (optionally) less
/// intrusive if the cause of the error was an auto-refresh timer
/// losing commectivity with the host.
ClientMethod onServerMethodError(err, errObject) [ Language = javascript ]
{
}

ClientMethod testConnectivity() [ Internal, Language = javascript ]
{
}

ClientMethod setConnectivityStatusMsg(msg) [ Language = javascript ]
{
}

}
