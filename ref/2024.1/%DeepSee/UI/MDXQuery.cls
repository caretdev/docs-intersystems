/// This page lets users enter MDX queries and view the results
/// via a pivot table.
///
Class %DeepSee.UI.MDXQuery Extends %DeepSee.UI.standardPage [ System = 4 ]
{

Parameter PAGENAME = "MDX Query Tool";

Parameter DOCBOOKID = "D2GS_uis_query_tool";

Parameter RESOURCE = "%DeepSee_Admin,%Development";

/// Allow customization of number of rows.
Property rows As %ZEN.Datatype.string(ZENURL = "ROWS") [ InitialExpression = 8 ];

/// Name of initial subjectArea to query.
/// This is the full name of a subject area.
Property subjectArea As %ZEN.Datatype.string(ZENURL = "SUBJECTAREA");

XData Style
{
}

/// This XML defines the contents of the contents pane for this page.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the product name for the page.
Method %OnGetProductName() As %String
{
}

/// Get the (localized) name of the page.
Method %OnGetPageName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Draw additional stuff in the ribbon bar
Method OnDrawRibbon() As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Launch the subject area finder dialog.
ClientMethod changeSubjectArea() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Update style of text area.
ClientMethod updateTextStyle() [ Language = javascript ]
{
}

/// Execute query
ClientMethod execute() [ Language = javascript ]
{
}

/// Show plan for query.
ClientMethod showPlan() [ Language = javascript ]
{
}

/// reset
ClientMethod refreshTable() [ Language = javascript ]
{
}

/// pivot
ClientMethod pivot() [ Language = javascript ]
{
}

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
{
}

/// Provide contents of the dimension tree.
ClassMethod GetDimensionInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Provide contents of the function tree.
ClassMethod GetFunctionInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Adjust sizes of components on the page.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Adjust sizes of components on the page.
ClientMethod adjustSizes() [ Language = javascript ]
{
}

/// User has dropped an item on the textarea.
ClientMethod mdxDrop(textarea, dragData) [ Language = javascript ]
{
}

/// Change which tree is displayed.
ClientMethod setTreeMode(mode) [ Language = javascript ]
{
}

/// Export current query to excel
ClientMethod exportExcel() [ Language = javascript ]
{
}

/// Generate a nonce for an MDX query.
ClassMethod CreateQueryNonce(pQuery As %String) As %String [ Internal, ZenMethod ]
{
}

/// Test for additional resources.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
