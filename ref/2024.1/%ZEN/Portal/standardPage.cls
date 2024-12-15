/// This base class provides a standard template for portal pages
/// implemented using Zen.
Class %ZEN.Portal.standardPage Extends (%ZEN.Component.page, %ZEN.Portal.abstractRefreshable) [ Abstract, Deprecated, System = 4 ]
{

Parameter JSINCLUDES = "zenMenusSMP.js";

/// Set this to the appropriate application class.
Parameter APPLICATION = "%ZEN.Portal.Application";

/// SMP favorite icon.
Parameter FAVORITEICON As COSEXPRESSION = "$$$ISCFAVORITEICON";

/// If true, auto-switch namespace to whatever $NAMESPACE is passed in.
Parameter AUTONS As BOOLEAN = 1;

/// Set this to the correct domain.
Parameter DOMAIN = "%Utility";

/// Name of this page.
Parameter PAGENAME = "Standard Portal Page";

/// URL of home page (used in links by many pages via <property>homePage</property>.)
Parameter HOMEPAGE = "/csp/sys/%25CSP.Portal.Home.zen";

/// If true, register visits to this page in the recent list.
Parameter RECENT As BOOLEAN = 1;

/// If true, show the Namespace dropdown.
Parameter SHOWNAMESPACE As BOOLEAN = 1;

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE = "columns";

/// If this page has sort options, this is its initial sort mode.
Parameter DEFAULTSORTMODE = "name";

/// Allow pages to have iframes by not setting x-frame-options: same origin.
/// Set default for Management Portal as iframes are not allowed.
Parameter IFRAMEALLOWED As BOOLEAN = 0;

/// Include the session Language in the html "lang" attribute.
Parameter USESESSIONLANG As BOOLEAN = 1;

/// Define the title that will be displayed within subclasses
Property StdTitle As %ZEN.Datatype.string [ InitialExpression = {$P($ZU(86),"*",2) _" - "_..#PAGENAME} ];

/// Product home page URL.
/// Note that multiple portal pages rely on this being a fully formed link.
Property homePage As %ZEN.Datatype.string [ InitialExpression = {..Link(..#HOMEPAGE,,1)_$select('$data(%response.Context("$NAMESPACE")): "$NAMESPACE="_$zcvt($namespace,"O","URL"), 1: "")} ];

/// About page URL
Property aboutPage As %ZEN.Datatype.string [ InitialExpression = {..Link("_CSP.UI.Portal.About.zen")} ];

Property contactPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/%25CSP.UI.Portal.Contact.cls")} ];

/// For pages with steps, this is the current step (1-based).
Property currStep As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// If this page has "views", this is the current view type.
Property currViewMode As %ZEN.Datatype.string [ InitialExpression = {..#DEFAULTVIEWMODE} ];

/// Current sort mode for this page (if applicable).
Property currSortMode As %ZEN.Datatype.string [ InitialExpression = {..#DEFAULTSORTMODE} ];

/// Current search key value (if applicable).
Property searchKey As %ZEN.Datatype.string;

/// True if the contents of this page need to be saved.
Property pageModified As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

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

/// Draw the contents of the title area.
/// Dispatch to application class.
Method DrawTitle(pSeed As %String) As %Status [ Final ]
{
}

/// This method rebuilds context menu on the top left corner.
Method BuildMenu() As %Status
{
}

/// Define any context links for the page. Sub-class to override.
/// Note that the subclass should call <method>CheckContextLinks</method>() to
/// ensure that the user is actually permitted to access all of the links - the pages
/// may have custom resources defined that would prevent the user from seeing the page.
ClassMethod GetContextLinks(Output pLinks) As %Status
{
}

/// Helper method to ensure that the user has sufficient privileges to access the links
/// returned in <method>GetContextLinks</method>(). This is especially important for cases where
/// system administrators have specified custom resources for pages in the portal, as we
/// need to check the custom resources before adding the option to the context menu.
ClassMethod CheckContextLinks(ByRef pLinks) As %Status
{
}

/// Define any quick links for the page
ClassMethod GetQuickLinks(Output pLinks) As %Status
{
}

/// Register this visit to the recent items list.
Method %Register() As %Status
{
}

Method CheckEnterpriseManager() As %Status
{
}

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
{
}

/// Use soft modals for the portal.
ClassMethod %OnUseSoftModals() As %Boolean [ CodeMode = expression ]
{
}

Method %OnDrawHTMLMeta() As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
/// Sub-class can override to include extra levels.
Method %GetLocatorLinks(Output pLink) As %Status
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

/// Get the product name for the page.
Method %OnGetProductName() As %String
{
}

/// Get the contents of the small menu in the title area.
Method %OnGetSmallMenu(Output pMenu)
{
}

/// Draw additional content in the locator bar.
Method DrawLocator(pSeed As %String) As %Status
{
}

/// Generic method to get namespaces from the ACTIVE Configuration file.<br>
/// Namespace array is returned by reference.<br>
/// Namespaces that have database dismounted, or Status = 0, are not included.<br>
/// Remote namespaces are included assuming they are active.<br>
ClassMethod %GetAllNamespaces(ByRef pNamespaces As %String) As %Integer [ Internal ]
{
}

/// Draw the contents of the tool ribbon.
/// This is displayed if a subclass implements the <method>OnGetRibbonInfo</method> callback.
Method DrawRibbon(pSeed As %String) As %Status
{
}

/// This callback, if implemented returns information used to display
/// the standard ribbon bar.<br/>
/// <var>pDisplay</var> is true if the ribbon should be displayed.<br/>
/// <var>pViewIcons</var> is an array describing "view" buttons to display:
/// pViewIcons(n) = $LB(id,help,icon)<br/>
/// <var>pSortOptions</var> is an array describing "sort" options to display:
/// pSortOptions(n) = $LB(id,caption,help)<br/>
/// <var>pSearch</var> is true if a search box is displayed.<br/>
/// <var>pRibbonTitle</var> is a title to display.<br/>
/// <var>pCommands</var> is an array of command buttons to display:
/// pCommands(n) = $LB(id,caption,help,onclick)
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// This is called in the middle of rendering the tool ribbon.
/// Subclasses can inject their own content into the ribbon by writing it out in this method.
/// This content is best wrapped within a single td element.
/// It can also consist of multiple td elements.
/// <p>
/// To achieve a fixed position for elements within the ribbon, for a fixed width page you can
/// use a single enclosing td that contains a table and a single tr,
/// with td elements inside that single tr that contain your content for the ribbon.
/// <p>
/// To achieve a fixed position for elements within the ribbon,
/// for a page whose width varies depending on its contents (thereby stretching the ribbon)
/// you can use multiple td elements to contain your content and then a final
/// td element that is empty and has width 40% (or so) to push your contents towards the left
/// and keep them in their proper locations.
Method OnDrawRibbon() As %Status
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

/// Go to the home page.
ClientMethod goHome() [ Language = javascript ]
{
}

/// Go to the menu link.
ClientMethod goMenu(link) [ Language = javascript ]
{
}

/// Go to the about page.
ClientMethod showAbout() [ Language = javascript ]
{
}

/// Go to the about page.
ClientMethod showContact() [ Language = javascript ]
{
}

/// Show documentation.
ClientMethod showHelp() [ Language = javascript ]
{
}

/// This client method, if defined and the AUTOLOGOUT parameter for this
/// page is true, is invoked when the logout timer for this
/// page fires.<br/>
/// If this method return true then the normal page logout behavior will fire.
/// That is, the page will be reloaded causing a login page to appear if the
/// current session has ended.
ClientMethod onlogoutHandler() [ Language = javascript ]
{
}

/// End the current session. If user has unsaved changes, prompt to save before process logout.
ClientMethod logout() [ Language = javascript ]
{
}

ClassMethod DoLogout() As %String [ ZenMethod ]
{
}

/// Return the height of the title area (titleBar plus locator).
ClientMethod getTitleAreaHeight() [ Language = javascript ]
{
}

/// Change the current display mode for this page.
/// This is called by the icon buttons on the ribbon.
/// This will call the <method>setViewModeHandler</method> within a subclass.
ClientMethod setViewMode(mode) [ Language = javascript ]
{
}

/// Do the actual work of updating the view to match the current view mode.
ClientMethod setViewModeHandler(mode, oldmode) [ Language = javascript ]
{
}

/// Change the current sort mode for the page.
ClientMethod setSortMode(mode) [ Language = javascript ]
{
}

/// Do the actual work of updating the view to match the current sort mode.
ClientMethod setSortModeHandler(mode) [ Language = javascript ]
{
}

/// Set the modified flag for the page.
ClientMethod setModified(flag) [ Language = javascript ]
{
}

/// Set the document name for the page.
ClientMethod setPageTitle(name) [ Language = javascript ]
{
}

ClientMethod onunloadHandler() [ Language = javascript ]
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

/// Show dialog to switch namespace
ClientMethod switchNamespace() As %String [ Language = javascript ]
{
}

/// Show dialog to change password
ClientMethod changePassword() As %String [ Language = javascript ]
{
}

/// Show dialog to login to an escalated role
ClientMethod escalateLogin() As %String [ Language = javascript ]
{
}

/// Subclass need to include the case "switchNamespace" if it is enabling "Switch" next to namespace.<br>
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Given new namespace, return new URL with new $NAMESPACE. When changing namespace, always go back to Home page <br>
/// because you don't know if the new namespace has or allows your current page.
ClassMethod GetNewURL(pNS As %String, pPage As %String = "%25CSP.Portal.Home.zen") As %String [ ZenMethod ]
{
}

/// Given a HelpAddress, this method finds the DocBook Link and constructs the proper URL for the Doc page and return to the client to be displayed.
ClassMethod GetDocURL(pHelpAddress As %String) As %String [ ZenMethod ]
{
}

/// Key press in search box.
ClientMethod searchKeyPress(evt) [ Language = javascript ]
{
}

/// Key down in search box.
ClientMethod searchKeyDown(evt) [ Language = javascript ]
{
}

/// Change in search box value. Can be overridden by subclasses.
ClientMethod searchBoxHandler(searchKey) [ Language = javascript ]
{
}

/// Blur event in search box.
ClientMethod searchFocus(evt) [ Language = javascript ]
{
}

/// Blur event in search box.
ClientMethod searchBlur(evt) [ Language = javascript ]
{
}

/// Tranforms the link specified by <VAR>link</VAR> into a URL and returns it as a string
ClassMethod GetCSPURL(link As %String) As %String [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
/// This should be implemented in a subclass.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod clearEscalation() [ Language = javascript ]
{
}

ClassMethod ReallyClearEscalation() As %Boolean [ ZenMethod ]
{
}

}
