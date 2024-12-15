/// System Management Portal - System Operations - Database Details
Class %CSP.UI.Portal.DatabaseDetails Extends %CSP.UI.Portal.Utils [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.DatabaseDetails.zen";

Parameter HELPADDRESS = "Home,Databases,Database Info";

/// Displayed name of this page.
Parameter PAGENAME = "Operation DatabaseDetails";

Parameter PARENTPAGE = "/csp/sys/op/%CSP.UI.Portal.OpDatabases.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Operate";

/// Database Directory
Property Directory As %String(ZENURL = "$ID1");

/// Database Name
Property DBName As %String(ZENURL = "DBName");

/// this page's link with Directory and DBName
Property DatabaseDetailsPage As %String;

Property BackgroundPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/%25CSP.UI.Portal.BackgroundTaskList.zen",,1)} ];

Property CompactDialog As %ZEN.Datatype.string [ InitialExpression = {..Link("%CSP.UI.Portal.Background.Dialog.DatabaseCompact.zen",,1)} ];

Property DefragDialog As %ZEN.Datatype.string [ InitialExpression = {..Link("%CSP.UI.Portal.Background.Dialog.DatabaseDefragment.zen",,1)} ];

/// parent page link
Property DatabasesPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/op/%CSP.UI.Portal.OpDatabases.zen")} ];

Property TaskInfoDialog As %String [ InitialExpression = {..Link("/csp/sys/%CSP.UI.Portal.Background.Dialog.TaskInfo.zen",,1)} ];

Property TruncateDialog As %ZEN.Datatype.string [ InitialExpression = {..Link("%CSP.UI.Portal.Background.Dialog.DatabaseTruncate.zen",,1)} ];

/// ID for Systems background task id
Property SysBGTaskId As %String;

/// Server-side reference to the pane object so that the head and body sections can be added to the page correctly.
Property %Pane As %CSP.Util.Pane [ ServerOnly = 1 ];

/// Flag to indicate whether <property>%Pane</property>'s OnDrawHEAD() method has been executed.
Property paneDone As %Boolean;

Property msgDismount As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to dismount database %1?")} ];

Property AllowMount As %ZEN.Datatype.boolean [ InitialExpression = "0" ];

Property AllowDismount As %ZEN.Datatype.boolean [ InitialExpression = "0" ];

Property BackgroundTasks As %ZEN.Datatype.integer [ InitialExpression = "0" ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doTableViewSwitch() [ Language = javascript ]
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

ClassMethod GetDBOBJ(pDir) As %String [ ZenMethod ]
{
}

/// Add to the contents of the tool ribbon.
Method OnDrawRibbon() As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod doDismount() [ Language = javascript ]
{
}

ClientMethod doMount() [ Language = javascript ]
{
}

ClientMethod doAction(action) [ Language = javascript ]
{
}

ClientMethod openTaskPage(SysBGTaskId) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// open task status info page after an action (such as Compact and Defragment) is commited and the page is closed.
ClientMethod taskTimeout() [ Language = javascript ]
{
}

/// For auto-refresh on this page.
ClientMethod updateView() [ Language = javascript ]
{
}

/// Dismount a DB.
ClassMethod Dismount(Dir As %String) As %String [ ZenMethod ]
{
}

/// Draw the contents of the ongoing tasks.
Method DrawTasks(pDirectory As %String) As %Status
{
}

/// Draw the contents of the diagram header, in the HTMLDashboard style.
Method DrawDetails(pSeed As %String) As %Status
{
}

/// Add the HEAD section for <property>%Pane</property> and override some CSS styles if HTML5 is enabled.
/// Without these overrides, the font size is calculated to be 0.8px and padding is calculated to be 0 for the header cells..
Method %OnDrawHTMLHead() As %Status
{
}

/// Set properties for HTMLDashboardPane to draw details.
ClassMethod GetDetailPane(pInstance As %CSP.Util.PageInstance) As %CSP.Util.Pane [ Language = objectscript ]
{
}

Method DrawSize(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

}
