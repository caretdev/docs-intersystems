/// DeepSee Caption Editor page.
///
Class %DeepSee.UI.CaptionEditor Extends %DeepSee.UI.standardPage [ System = 4 ]
{

Parameter PAGENAME = "Caption Editor";

/// Parameter DOCBOOKID = "D2ANLY_ch_intro";
/// Name of Cube (with extension).
Property cubeFullName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Name of cube to explore.
Property cubeName As %ZEN.Datatype.string;

/// If true, user can modify (non-read-only) pivots.
Property canWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, user cannot modify captions.
Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Current context.
Property currContext As %ZEN.Datatype.string;

/// Current dimension.
Property currDim As %ZEN.Datatype.string;

/// Current hierarchy.
Property currHier As %ZEN.Datatype.string;

/// Current level.
Property currLevel As %ZEN.Datatype.string;

/// Current property.
Property currProp As %ZEN.Datatype.string;

/// Current caption.
Property currCaption As %ZEN.Datatype.string;

XData Style
{
}

/// This XML defines the contents of the contents pane for this page.
XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the page.
Method %OnGetTitle() As %String
{
}

/// Get the name for the page.
Method %OnGetPageName() As %String
{
}

/// Get the product name for the page.
Method %OnGetProductName() As %String
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

/// Draw cube name above member tree.
Method DrawCubeName(pSeed As %String) As %Status
{
}

/// Launch the subject area finder dialog.
ClientMethod changeSubjectArea() [ Language = javascript ]
{
}

/// This client event is fired when a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Provide contents of the dimension tree.
ClassMethod GetDimensionInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
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

/// This class method callback is called just before the server-side page
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

/// User has selected a new context.
ClientMethod contextChange(ctx) [ Language = javascript ]
{
}

/// User has selected a new element in the tree control.
ClientMethod treeChange(tree) [ Language = javascript ]
{
}

/// Pull apart the given member spec.
ClassMethod ParseValue(pCube As %String, pContext As %String, pValue As %String) As %String [ ZenMethod ]
{
}

/// Delete the current caption.
ClientMethod deleteCaption() [ Language = javascript ]
{
}

/// Delete a caption.
ClassMethod DeleteItem(pCube As %String, pContext As %String, pDim As %String, pHier As %String, pLevel As %String, pProp As %String) As %String [ ZenMethod ]
{
}

/// Save the current caption.
ClientMethod saveCaption() [ Language = javascript ]
{
}

/// Save a caption.
ClassMethod SaveItem(pCube As %String, pContext As %String, pDim As %String, pHier As %String, pLevel As %String, pProp As %String, pCaption As %String) As %String [ ZenMethod ]
{
}

}
