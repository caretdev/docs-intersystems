/// This class help users open the selected iKnow domain and text classifiers
Class %iKnow.UI.Dialog.openDomain Extends %ZEN.Dialog.finderDialog [ Deprecated, System = 4 ]
{

Parameter AUTONS As BOOLEAN = 1;

Parameter DOMAIN = "%iKnow";

/// Security requirement
Parameter RESOURCE = "%Development";

/// Provide the source data (as an array) that will drive the finder.
Method GetFinderArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
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

/// Zen page notification of an HTTP request.
ClassMethod %OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Look up additional information for a given item.
ClassMethod GetItemInfo(pMode As %String, pItemName As %String, pItemCategory As %String = "") As %ZEN.proxyObject [ Internal, ZenMethod ]
{
}

Method %OnDrawHTMLHead() As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String) As %Status
{
}

}
