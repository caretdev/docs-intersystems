/// DeepSee CubeRegistry page.
/// This UI allows you to register a "Group" by drag and drop:
///    Drag a group from the tree and drop it on the header for the "Registered" groups.
/// The tree reprsents Unregistered groups. The center table represents Registered groups.
/// You can also register and merge at the same time:
///    Drag a group from the tree and drop it on a registered group in the center table. A confirmation box will display.
///    If confirmed the cubes from the tree will be merged into the registered group.
/// To Unregister, click the "x" image.
/// The map object will be saved immediately after a drag and drop or a unregister.
/// To modify properties for a registered group and cubes, click a row from the center table and modify the properties on the right in the Details pane.
/// After your modification is done, you can click the Save button. If you do a drag & drop or a unregister, these changes will also be saved automatically.
///
Class %DeepSee.UI.CubeRegistry Extends %DeepSee.UI.standardPage [ System = 4 ]
{

Parameter JSINCLUDES = "zenMenusSMP.js";

/// Displayed name of this page.
Parameter PAGENAME = "Cube Registry";

Parameter RESOURCE = "%DeepSee_Admin";

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE = "cube";

Parameter DOCBOOKID = "D2IMP_current_cubemgr";

/// [NO LONGER USED ON THIS PAGE]
/// Name of Cube being viewed.
Property cubeName As %ZEN.Datatype.string;

/// [NO LONGER USED ON THIS PAGE]
/// Class name of Cube being viewed.
/// This is determined from the cube name.
Property cubeClass As %ZEN.Datatype.string;

/// Data source. This is a copy of the value in the cube model.
Property tree As %ZEN.Datatype.string;

/// ID (index number, 0-based) of current selected item.
Property currItem As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// Type of the current selected item.
Property currItemType As %ZEN.Datatype.string;

/// Local copy of cube map model object.
Property %model As %RegisteredObject;

/// Set to 1 if server should reload json map after merge.
Property reloadMap As %Boolean [ InitialExpression = 0 ];

/// If true, user cannot modify the current cube definition.
Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, user can modify (non-read-only) cube definitions,
/// otherwise they can only view.
Property canWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property hlpRemove As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove this item")} ];

Property hlpDropTooltip As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Register %1")} ];

Property hlpMoveUp As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Move this group up")} ];

Property hlpMoveDown As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Move this group down")} ];

Property hlpShowHide As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Hide or show the properties box")} ];

Property msgSystemUpdates As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("This update schedule is managed by an external application")} ];

Property msgInvalid As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Cube Registry map is empty.")} ];

Property msgMerge As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to merge group %1 to group %2?")} ];

Property imgArrow1D As %String [ InitialExpression = {..Link("/csp/broker/images/arrow1D.gif")} ];

Property imgArrow1R As %String [ InitialExpression = {..Link("/csp/broker/images/arrow1R.gif")} ];

/// Group name for the currently selected cube.
Property detailCubeGroupName As %String;

/// If true, the settings area (property sheet) is visible.
Property settingsExpanded As %Boolean [ InitialExpression = 1, Internal ];

/// Whether to expand all elements under each type. When user clicks Collapse All then this is set to 0. At end of renderTable it is set to 2.
Property expandAll As %Integer [ InitialExpression = 1 ];

/// Last cube save time when the cube is loaded.
Property SavedTime As %ZEN.Datatype.string;

/// The cube is currently locked by someone when the cube is opened in Architect
Property isLocked As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property DocumaticPage As %String;

Property activeRegistryExists As %Boolean;

/// This Style block contains page-specific CSS style definitions.
XData CSS3Style
{
}

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

Method GetTitle() As %String [ ZenMethod ]
{
}

/// Get the title string to add to the locator row.
/// This should be implemented in a subclass.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

/// Get the (localized) name of the page.
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

/// Draw the contents of the Table Header (the region between the diagram and the table).
Method DrawTableHeader(pSeed As %String) As %Status
{
}

/// Provide contents of the data source tree.
ClassMethod GetTreeInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Draw additional stuff in the ribbon bar
Method OnDrawRibbon() As %Status
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

/// Update the contents of the model table.
ClientMethod updateTable() [ Language = javascript ]
{
}

/// Update the contents of the model table.
ClientMethod renderTable() [ Language = javascript ]
{
}

/// Exempting the synchronize from relationship dependencies is not recommended. When the user
/// attempts to turn this setting off, inform that this is not recommended and confirm that this
/// is really what the user wants to do.
ClientMethod confirmSyncExemption() [ Language = javascript ]
{
}

/// return what to display for day of month or day of week in center pane
ClientMethod getDayOf(item) [ Language = javascript ]
{
}

ClientMethod isClosed(map, item) [ Language = javascript ]
{
}

ClientMethod moveItemUp(type, row, index) [ Language = javascript ]
{
}

ClientMethod moveItemDown(type, row, index) [ Language = javascript ]
{
}

/// user clicked Expand All (flag=1) or Collapsed All (flag=0).
ClientMethod toggleExpand(flag) [ Language = javascript ]
{
}

/// Find the row number in the table for the given model item.
/// This must be called after the table has been rendered.
ClientMethod findRowForItem(item) [ Language = javascript ]
{
}

/// This class method callback is called just before the server-side page
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

/// Get Registry Map definition for JSON provider.
Method GetMapDefinition(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// CHUI quick view
ClassMethod ShowMap(showTable = 0)
{
}

/// Return the cube definition object.
ClientMethod getCubeObject() [ Language = javascript ]
{
}

/// Return the current selected item.
ClientMethod getSelectedItem() [ Language = javascript ]
{
}

/// Launch a popup window to create a new Cube Registry document.
ClientMethod createNewRegistry() [ Language = javascript ]
{
}

/// Client-side call to switch the active registry
Method SwitchActiveRegistry(pClassName = "") As %Status [ ZenMethod ]
{
}

/// Do the actual work of updating the view to match the current view mode.
ClientMethod setViewModeHandler(mode) [ Language = javascript ]
{
}

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Do save now.
ClientMethod saveMap() [ Language = javascript ]
{
}

/// Preparation for Merging two groups
ClientMethod mergeGroups(mergeFromText, mergeTo, map, index) [ Language = javascript ]
{
}

/// User click on a row in the table.
ClientMethod rowClick(type, row) [ Language = javascript ]
{
}

/// User clicked "Apply to All Cubes in Group" button to save changes to all cubes for that group.
ClientMethod doApplyGroupChange() [ Language = javascript ]
{
}

/// User checked the Merge checkbox. We now load the registered groups into the drop-down and show it.
ClientMethod doMergeLoadList() [ Language = javascript ]
{
}

/// User clicked Merge from "Merge to Group..."
ClientMethod doMerge() [ Language = javascript ]
{
}

/// User clicked "Register Group" button to register all cubes for a group when view mode is "table".
ClientMethod doRegister() [ Language = javascript ]
{
}

ClientMethod findTableItem(cubeName) [ Language = javascript ]
{
}

/// User selected a row from the table view
ClientMethod selectTableItem(cubeName) [ Language = javascript ]
{
}

/// Select a row in the table.
ClientMethod selectItem(type, row, force) [ Language = javascript ]
{
}

ClientMethod loadCubeDetails(item, systemLock) [ Language = javascript ]
{
}

/// This method shows and hide Build/Synch fields based on the item's UpdatePlan
ClientMethod showUpdatePlan(type, UpdatePlan, BuildTimeUnit) [ Language = javascript ]
{
}

ClientMethod buildAllRegisteredGroups() [ Language = javascript ]
{
}

ClientMethod buildOneRegisteredGroup() [ Language = javascript ]
{
}

ClientMethod repairBuild() [ Language = javascript ]
{
}

/// Find the css class for the given row type.
ClientMethod getCSSForType(type) [ Language = javascript ]
{
}

/// Apply changes from detail form.
ClientMethod applyDetails() [ Language = javascript ]
{
}

/// Enable/disable a row in the table.
ClientMethod enableItem(row, flag) [ Language = javascript ]
{
}

/// Remove a row from the table.
ClientMethod removeItem(type, row, index) [ Language = javascript ]
{
}

/// Return true if it is possible to undo an action
ClientMethod canUndo() [ Language = javascript ]
{
}

/// Undo the most recent change.
ClientMethod undo() [ Language = javascript ]
{
}

ClientMethod clearUndoBuffer() [ Language = javascript ]
{
}

/// Change Undo button state and View button state (opposite of Undo button)
ClientMethod changeUndoState(undostate) [ Language = javascript ]
{
}

/// Remember the current state in the undo buffer.
ClientMethod addUndoAction() [ Language = javascript ]
{
}

/// Create a clone of the given object.
ClientMethod cloneObject(obj, clone) [ Language = javascript ]
{
}

/// User click on disclosure icon in table.
ClientMethod toggleDisclosure(key) [ Language = javascript ]
{
}

/// Drop handler for model table. dragData.text is the GroupName; dragData.value is "group" or "cube" to indicate what is dragged here.
ClientMethod tableDropHandler(dragData) [ Language = javascript ]
{
}

/// Thid method will save changes and reload tree. If reloadMap is set to 1 then reload content from server for table.
/// reloadMap is 1 for drag&drop merge and remove.
ClientMethod updateMap(reloadMap) [ Language = javascript ]
{
}

/// Save the map.
ClientMethod save() [ Language = javascript ]
{
}

/// Object submit handler JSON provider.
/// This is called when the client submits the Cube definition.
Method SubmitMap(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status
{
}

/// Test if the user has write privilege.
ClientMethod canUserModify() [ Language = javascript ]
{
}

/// Toggle display of settings (property tabs) box.
ClientMethod toggleSettings() [ Language = javascript ]
{
}

/// Show a selected tool in a new window. pageName="Analyzer", "Architect", "MDXQuery", or "ModelBrowser".
ClientMethod toolMenu(pageName) [ Language = javascript ]
{
}

/// Toggle to show/hide Description textarea; set what's in text into textarea.
ClientMethod editDescription(what) [ Language = javascript ]
{
}

/// Set textarea description back into the text description field.
ClientMethod applyDescription(what) [ Language = javascript ]
{
}

/// method for when user mouse over a row in the table
ClientMethod rowMouseOver(element, div) [ Language = javascript ]
{
}

/// method for when mouse out
ClientMethod rowMouseOut(div) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
