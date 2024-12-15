/// DeepSee version of the Zen finder dialog.
/// Supports the following "modes":
/// <ul>
/// <li>"cubes" (only cubes)</li>
/// <li>"subjects" (only subjectAreas)</li>
/// <li>"subjectAreas" (cubes + subjectAreas as one list (for querying))</li>
/// <li>"models" (cubes + subjectAreas as separate lists (for modeling))</li>
/// <li>"modelsSA" (same as "models" but show subject areas by default)</li>
/// <li>"pivots"</li>
/// <li>"kpis"</li>
/// <li>"worksheets"</li>
/// <li>"dashboards"</li>
/// <li>"datasources" = "kpis"+"pivots"+"worksheets" (+metrics)</li>
/// <li>"sourceclasses" (for Architect: persistent,data connector, and collections)</li>
/// <li>"dataconnectors"</li>
/// <li>"termlists"</li>
/// <li>"qualityMeasures"</li>
/// <li>"pmmlModels"</li>
/// <li>"textClassifiers"</li>
/// <li>"listingGroups"</li>
/// <li>"ttModels"  (text transformation models)</li>
/// </ul>
///
Class %DeepSee.UI.Dialog.finderDialog Extends %ZEN.Dialog.finderDialog [ System = 4 ]
{

Parameter DOMAIN = "%DeepSee";

/// Provide the source data (as an array) that will drive the finder.
Method GetFinderArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// For the set of persistent classes in pList, create a list of projected collection classes.
Method %GetCollectionClasses(ByRef pList, ByRef pData) As %Status [ Internal ]
{
}

/// Return the icon for the item in "icons" mode.
ClientMethod getItemIcon(item) [ Language = javascript ]
{
}

/// Return the icon for a DeepSee item or null if this is not a DeepSee item.
ClientMethod getDeepSeeIcon(item) [ Language = javascript ]
{
}

/// Provide HTML for details on selected item in finder.
ClientMethod drawDetails(item, finder, index) [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Add components to page.
Method %OnAfterCreatePage() As %Status
{
}

/// Get information to display in the category box.
Method OnGetCategoryInfo(pCategory As %String, Output pDisplay As %Boolean, Output pIcons As %List) As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String) As %Status
{
}

/// Zen page notification of an HTTP request.
ClassMethod %OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// This method evaluates whether the subjectArea user selected has a compound baseCube.<br>
/// Returns message if it is a compound base cube. Otherwise return null.
ClassMethod IsCompound(subjectAreaFullName) As %String [ ZenMethod ]
{
}

/// Look up additional information for a given item.
ClassMethod GetItemInfo(pMode As %String, pItemName As %String, pItemCategory As %String = "") As %ZEN.proxyObject [ Internal, ZenMethod ]
{
}

}
