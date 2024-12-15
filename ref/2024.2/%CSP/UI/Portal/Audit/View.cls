/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Zen page for System Management Portal - View Audit Database
Class %CSP.UI.Portal.Audit.View Extends %CSP.UI.Template.List [ System = 4 ]
{

/// Allow to change namespaces for this page.
Parameter AUTONS As BOOLEAN = 0;

/// Displayed name of this page.
Parameter PAGENAME = "AuditList";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Audit.View.zen";

Parameter HELPADDRESS = "System Administration,Security,Auditing";

Property FILETYPE As %String [ InitialExpression = "Audit" ];

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

Property ColorBy As %String;

Property SQLEventName As %String;

Property JSONSearch As %String;

Property EventName As %String;

Property EventSource As %String;

Property EventType As %String;

Property PID As %String;

Property SystemID As %String;

Property Users As %String;

Property Authentications As %String;

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

/// Method for executing the audit list query.
Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Check if user hit [Enter].
ClientMethod keyUp(zenEvent, ctl) [ Language = javascript ]
{
}

/// User clicked reset link
ClientMethod doReset() [ Language = javascript ]
{
}

/// User clicked Search button.
ClientMethod doSearch() [ Language = javascript ]
{
}

ClientMethod navPageSizeChanged(pageSize) [ Language = javascript ]
{
}

/// Overriding to remove refresh timer update
ClientMethod updateView() [ Language = javascript ]
{
}

ClientMethod launchDetails(timestamp, ID, index) [ Language = javascript ]
{
}

ClassMethod DrawDetailLink(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status [ Internal ]
{
}

Method SaveAuditSelections(FILETYPE As %String, PageSize As %String) As %String [ ZenMethod ]
{
}

ClassMethod GetLastSearch(FILETYPE As %String) As %String
{
}

ClassMethod GetEventList(Box As %String) As %String
{
}

ClientMethod EventChange(Box As %String) [ Language = javascript ]
{
}

Method EventChangeOS(Box As %String, newval As %String) As %String [ ZenMethod ]
{
}

ClientMethod EventNameChange() [ Language = javascript ]
{
}

ClientMethod SQLEventNameChange() [ Language = javascript ]
{
}

/// Draw the contents of the Table Header (the region between the diagram and the table).
Method DrawTableHeader(pSeed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

Method WelcomeText(pSeed As %String) As %Status
{
}

}
