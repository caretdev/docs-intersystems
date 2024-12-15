/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// <p>This is the template for SMP pages with a Search pane on the left and Result pane on the right.
/// It is primarily used by the System Explorer's Classes/Routines/Globals list pages.</p>
Class %CSP.UI.Template.List Extends %CSP.UI.Portal.Utils [ Abstract, System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Template List";

/// If true, the search area is visible.
Property searchExpanded As %Boolean [ InitialExpression = 1, Internal ];

Property ShowSys As %Boolean [ InitialExpression = "0" ];

Property ShowGen As %Boolean [ InitialExpression = "0" ];

Property ShowMap As %Boolean [ InitialExpression = "1" ];

Property BeginDate As %String;

Property EndDate As %String;

Property MaxRows As %String;

Property ClassURL As %String;

Property GlobalURL As %String;

Property RoutineURL As %String;

Property DocPage As %String;

Property NamespaceList As %String;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this pane.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This pane displays the search criteria. We provide defaults and user can change them.
/// User's values are saved and used as future defaults for this user.
/// Subclass to override.
XData searchPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Subclass to override. Always include code in this method.
Method %OnAfterCreatePage() As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Toggle display of propertis pane.
ClientMethod toggleDetails() [ Language = javascript ]
{
}

/// Adjust sizes of components on the page.
ClientMethod adjustSizes() [ Language = javascript ]
{
}

ClientMethod showExpand() [ Language = javascript ]
{
}

/// Toggle display of search pane.
ClientMethod toggleSearch() [ Language = javascript ]
{
}

ClientMethod doDoc(className) [ Language = javascript ]
{
}

/// User clicked Go to start search.
ClientMethod doSearch() [ Language = javascript ]
{
}

/// Return Namespace list for UI's valueList.
ClassMethod GetNSList() As %String [ ZenMethod ]
{
}

/// Return Database list for UI's displayList. valueList (should not be loaded into <select> due to directory delimiters)
/// is saved into %session for later use.
ClassMethod GetDBList() As %String [ ZenMethod ]
{
}

/// Get recent list for file spec. FILETYPE = "Class", "Routine", or "Global".
ClassMethod GetRecentList(FILETYPE) As %String [ ZenMethod ]
{
}

/// return true namespace value or implied namespace value.
ClientMethod getSelectedNamespace() [ Language = javascript ]
{
}

/// In case user clicked the browser's Back button we need to make sure the value in drop-down is correct
/// This method is called from onloadHandler for ClassList/RoutineList/GlobalList...that has Lookin and namespace/database list
ClientMethod checkURLNamespace() [ Language = javascript ]
{
}

/// See if the DBName passed in can be found in the namespace list.<br/>
/// This is used when changing from "Database" to "Namespace".<br/>
/// So we can use the same name if there is a match.
ClientMethod findNSMatch(DBName) [ Language = javascript ]
{
}

/// Given a DBName, return the DBDirectory. If we cannot find it, then return the first one we can find.
ClassMethod FindDBDir(DBName) As %String [ ZenMethod ]
{
}

/// Given a DBDirectory, return the DBName
ClassMethod FindDBName(DBDirectory) As %String [ ZenMethod ]
{
}

/// If at least one subject (Class/Routine/Global/Integ/IntegGlobals, etc) is selected, then save it into session
ClassMethod PrepareAction(FILETYPE, selectedRows) As %String [ ZenMethod ]
{
}

/// Save user selection from Search Pane for Classes, Routines, and Globals, etc.
ClassMethod SaveSelections(FILETYPE, selType, spec, showsys, showgen, begindate, enddate, maxRows, AllowSelectRow = 0, showmap = 0, AlwaysFullView = 0) As %String [ ZenMethod ]
{
}

ClassMethod SaveExpandState(FILETYPE, searchExpanded) [ ZenMethod ]
{
}

ClassMethod GetExpandState(FILETYPE) As %String
{
}

/// Proposed change to override %ChangeNS in %ZEN.Controller
/// For SMP Explorer, we need to override the behavior of changing Namespace so that the error reporting is more appropriate.
ClassMethod %ChangeNS(pNS As %String) As %Status
{
}

}
