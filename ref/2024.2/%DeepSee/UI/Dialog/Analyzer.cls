/// Special version of the analyzer that runs within a dialog.
/// This is displayed when a user uses the Analyze option in a widget.
Class %DeepSee.UI.Dialog.Analyzer Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 1;

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE = "pivot";

/// If this page has "views", this is the current view type.
Property currViewMode As %ZEN.Datatype.string [ InitialExpression = {..#DEFAULTVIEWMODE} ];

/// Name of cube to explore.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Key (within its dashboard) of widget that launched this dialog.
Property widgetKey As %ZEN.Datatype.string(ZENURL = "KEY");

/// Name of saved pivotTable to view (overrides CUBE if present).
Property pivotName As %ZEN.Datatype.string(ZENURL = "PIVOT");

/// If provided, use this name to save the pivot.
Property localPivotName As %ZEN.Datatype.string(ZENURL = "LOCALNAME");

/// If provided, state of filters on widget that launched this dialog.
Property filterState As %ZEN.Datatype.string(MAXLEN = 5000, ZENURL = "FILTERSTATE");

/// Description of the saved pivot (if any).
Property pivotDescription As %ZEN.Datatype.string;

/// Keywords of the saved pivot (if any).
Property pivotKeywords As %ZEN.Datatype.string;

/// If true, reset the data source when the dialog is applied.
Property resetData As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

/// Provide contents of the dimension tree.
ClassMethod GetDimensionInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// User has double-clicked on an element in the tree control.
/// This is copied from the same method in the main Analyzer page.
ClientMethod treeDoubleClick(tree) [ Language = javascript ]
{
}

/// Return the current pivot table.
ClientMethod getPivot() [ Language = javascript ]
{
}

/// Adjust sizes of analyzer components on the page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Save the pivot table.
Method SavePivotTable(pResetData As %Boolean = 0) As %String [ ZenMethod ]
{
}

/// Launch the cell format options dialog.
ClientMethod showFormatOptions() [ Language = javascript ]
{
}

/// Called from client to update list of filters.
ClassMethod UpdateFilterControls(pCubeName As %String, pGroup As %ZEN.Component.group, pPivotTable As %DeepSee.Component.pivotTable) As %String [ ZenMethod ]
{
}

/// User has changed a filter control value.
ClientMethod filterChangeHandler(ctrl, filterNo) [ Language = javascript ]
{
}

/// Launch the show query dialog.
ClientMethod showQuery() [ Language = javascript ]
{
}

/// Launch the pivot options dialog.
ClientMethod showPivotOptions() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Drop down is about to appear for filter control.
ClientMethod filterDropDown(ctrl) [ Language = javascript ]
{
}

/// Reset the local data source for our widget.
ClientMethod resetLocalDataSource() [ Language = javascript ]
{
}

/// Generate a nonce for an MDX query.
ClassMethod CreateQueryNonce(pQuery As %String) As %String [ Internal, ZenMethod ]
{
}

}
