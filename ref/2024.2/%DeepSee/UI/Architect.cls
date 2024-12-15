/// DeepSee Architect page.
Class %DeepSee.UI.Architect Extends (%DeepSee.UI.standardPage, %CSP.Portal.SourceControl.Base) [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Architect";

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE = "cube";

Parameter DOCBOOKID = "D2MODEL_intro_architect";

Parameter RESOURCE = "%DeepSee_Architect,%DeepSee_ArchitectEdit";

/// Name of Cube (with extension).
Property cubeFullName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Name of Cube being viewed.
Property cubeName As %ZEN.Datatype.string;

/// This will be true if the cube being loaded logged an error on the last compile.
Property compileErrorOnLoad As %ZEN.Datatype.boolean;

/// Name of the inherited cube, if it exists.
Property inheritsFrom As %ZEN.Datatype.string;

/// Class name of Cube being viewed.
/// This is determined from the cube name.
Property cubeClass As %ZEN.Datatype.string;

/// Description of Cube being viewed.
/// This is determined from the cube name.
Property cubeDescription As %ZEN.Datatype.string;

/// Domain of Cube being viewed.
/// This is handled seperately from json.
Property cubeDomain As %ZEN.Datatype.string;

/// DependsOn for cube class. If provided, this is used as the DependsOn value
/// of the generated cube. If not, the sourceClass for the cube is used.
/// This is handled seperately from json.
Property cubeDependsOn As %ZEN.Datatype.string;

/// Data source. This is a copy of the value in the cube model.
Property dataSource As %ZEN.Datatype.string;

/// ID (index number, 0-based) of current selected item.
Property currItem As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// Type of the current selected item.
Property currItemType As %ZEN.Datatype.string;

/// Local copy of cube model object.
Property %model As %DeepSee.Model.cube;

/// If true, user cannot modify the current cube definition.
Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, user can modify (non-read-only) cube definitions,
/// otherwise they can only view.
Property canWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property lblExpression As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("(expression)")} ];

Property lblDataLevel As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Level (type=data)")} ];

Property lblTimeLevel As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Level (type=time)")} ];

Property lblAgeLevel As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Level (type=age)")} ];

Property hlpRemove As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove this item")} ];

Property hlpMoveUp As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Move this item up")} ];

Property hlpMoveDown As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Move this item down")} ];

Property hlpShowHide As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Hide or show the properties box")} ];

Property msgCubeInherited As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("This cube inherits items from the %1 cube")} ];

Property msgItemInherited As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("This item has been inherited from the %1 cube")} ];

Property msgItemOverride As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("This is an override of an inherited cube item")} ];

Property msgInvalid As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Please click [Open] to select a model definition.")} ];

Property msgOpenModel As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Please open a model definition first.")} ];

Property hlpDropTooltip As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Create new %1")} ];

/// If true, the settings area (property sheet) is visible.
Property settingsExpanded As %Boolean [ InitialExpression = 1, Internal ];

/// Whether to expand all elements under each type. When user clicks Collapse All then this is set to 0. At end of renderTable it is set to 2.
Property expandAll As %Integer [ InitialExpression = 1 ];

Property DocumaticPage As %String;

Property timeFunctions As %ZEN.Datatype.string;

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
ClassMethod GetDataSourceInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Draw additional stuff in the ribbon bar
Method OnDrawRibbon() As %Status
{
}

/// Launch the cube finder dialog.
ClientMethod changeSubjectArea() [ Language = javascript ]
{
}

/// This function takes care of certain fields when their values are changed.
ClientMethod changeType(idfield) [ Language = javascript ]
{
}

/// User checked/unchecked the Use SQL field
ClientMethod changeUseSQL() [ Language = javascript ]
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

/// Callback to initiate window resize event
ClientMethod startDrag(engine, wrapper) [ Language = javascript ]
{
}

/// Callback to wrap up window resize event
ClientMethod endDrag(engine, wrapper) [ Language = javascript ]
{
}

/// Callback to limit horizontal resizing
ClientMethod constrainDragX(engine, wrapper, intendedX) [ Language = javascript ]
{
}

/// Callback to limit vertical resizing
ClientMethod constrainDragY(engine, wrapper, intendedY) [ Language = javascript ]
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

/// Render the actual items in a given group type in the table. This does not draw the
/// title bars.
ClientMethod renderCubeItems(cube, itemGroupType, html) [ Language = javascript ]
{
}

ClientMethod isClosed(cube, item) [ Language = javascript ]
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

/// Find the row number in the table for the given model item name.
/// If <var>itemGroup</var> is defined, return the first occurence of
/// <var>name</var> within the particular group of model items.
/// This must be called after the table has been rendered.
ClientMethod findRowForItemName(name, itemGroup) [ Language = javascript ]
{
}

/// This class method callback is called just before the server-side page
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

/// Return Data Connector list
Method LoadListingSource() As %String
{
}

/// Get Cube definition for JSON provider.
Method GetCubeDefinition(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// Get the inherited Cube definition for JSON provider.
Method GetInheritedCubeDefinition(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// Report the supported functions for a given calendar.
ClientMethod getTimeFunctionsForCalendar(calendar) [ Language = javascript ]
{
}

/// Produces a list of Time level class delimited by commas.
ClassMethod GetTimeLevelClasses(pSubClass, pCalendar = "gregorian") As %String
{
}

/// Return the cube definition object.
ClientMethod getCubeObject() [ Language = javascript ]
{
}

/// Return the cube definition object for the inherited cube.
ClientMethod getInheritedCubeObject() [ Language = javascript ]
{
}

/// Return the current selected item.
ClientMethod getSelectedItem() [ Language = javascript ]
{
}

/// Return a list of iKnow measures
ClientMethod getiKnowMeasures() [ Language = javascript ]
{
}

/// Cancel changes from detail form.
ClientMethod cancelDetailForm() [ Language = javascript ]
{
}

/// Do the actual work of updating the view to match the current view mode.
ClientMethod setViewModeHandler(mode) [ Language = javascript ]
{
}

/// Launch the data source dialog.
ClientMethod changeDataSource() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Do save now. This method is called from compile also.
ClientMethod saveCube() [ Language = javascript ]
{
}

/// Set the dataSource for the current cube.
ClientMethod setDataSource(cls) [ Language = javascript ]
{
}

/// Invoke dialog to add a new cube.
ClientMethod newCube() [ Language = javascript ]
{
}

/// Open CubeView page to view all details (if user has not modified anything).
ClientMethod viewCube() [ Language = javascript ]
{
}

/// Open Documatic page to view all details (if user has not modified anything).
ClientMethod doDocument() [ Language = javascript ]
{
}

/// Invoke dialog to add a new item to the model.
ClientMethod addItem() [ Language = javascript ]
{
}

/// Add a new item to the model and select it.
ClientMethod addNewItemToModel(typenewname) [ Language = javascript ]
{
}

/// Add a new item to the model and select it. Designed for adding an overriden item from
/// an inherited cube
ClientMethod addInheritedItemToModel(type, inheritedItem) [ Language = javascript ]
{
}

/// Create a new measure. 'type' passed in is 'number', 'date', 'boolean' or 'string'
ClientMethod createMeasure(newname, newsource, type) [ Language = javascript ]
{
}

/// Create new dimension. If drag & drop, sourceprop passed in will not be null.
ClientMethod createDim(newname, dimtype, sourceprop, caption) [ Language = javascript ]
{
}

/// Create new hierarchy.
ClientMethod createHier(newname) [ Language = javascript ]
{
}

/// Create new level If drag & drop, newsource passed in will not be null.
ClientMethod createLevel(newname, newsource) [ Language = javascript ]
{
}

/// Create new property. If drag & drop, newsource passed in will not be null.
ClientMethod createProp(newname, newsource) [ Language = javascript ]
{
}

/// Create new listing object. If drag & drop, fieldName passed in will not be null.
ClientMethod createListing(newname, fieldName) [ Language = javascript ]
{
}

/// Create new listing object. If drag & drop, fieldExpression passed in will not be null.
ClientMethod createListingField(newname, fieldExpression) [ Language = javascript ]
{
}

/// Create new relationship object.
ClientMethod createRelationship(newname) [ Language = javascript ]
{
}

/// Invoke class finder dialog. popupName="sourceclasses" or "cubes"
ClientMethod browseClass(popupName) [ Language = javascript ]
{
}

/// Invoke dialog to edit certain items: RangeExpression, FormatString, SourceProperty, SourceExpression, CubeResource, ListingResource, ListingField.
ClientMethod editItem(what) [ Language = javascript ]
{
}

ClientMethod toggleSource(element, type) [ Language = javascript ]
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

/// Invoke dialog to reorder certain elements of the model.
ClientMethod reorder() [ Language = javascript ]
{
}

/// This method is called from child pages (reorder) to get a live javaScript object of the cube
ClientMethod fetchCube() [ Language = javascript ]
{
}

/// Helper method: select an item, make sure it is visible
/// and give focus to the details panel.
ClientMethod selectNewItem(newItem, newType) [ Language = javascript ]
{
}

/// User click on a row in the table.
ClientMethod rowClick(type, row) [ Language = javascript ]
{
}

/// Select a row in the table.
ClientMethod selectItem(type, row, force) [ Language = javascript ]
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

/// user modified DependsOn. Since it is not part of json, handle it seperately.
ClientMethod applyDependsOn(value) [ Language = javascript ]
{
}

/// user modified Domain. Since it is not part of json, handle it seperately.
ClientMethod applyDomain(value) [ Language = javascript ]
{
}

/// Enable/disable a row in the table.
ClientMethod enableItem(row, flag) [ Language = javascript ]
{
}

ClientMethod moveItemUp(type, row, index, hier, level, prop) [ Language = javascript ]
{
}

ClientMethod moveItemDown(type, row, index, hier, level, prop) [ Language = javascript ]
{
}

/// Remove a row from the table.
ClientMethod removeItem(type, row, index, hier, level, prop) [ Language = javascript ]
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

/// Drop handler for model table.
ClientMethod tableDropHandler(dragData) [ Language = javascript ]
{
}

/// Given the base name, return the new name with proper index number
ClientMethod getMeaName(item, name) [ Language = javascript ]
{
}

/// Given the base name, return the new name with proper index number
ClientMethod getDimName(item, name) [ Language = javascript ]
{
}

/// Given the base name, return the new name with proper index number
ClientMethod getHierName(item, name) [ Language = javascript ]
{
}

/// Given the base name, return the new name with proper index number
ClientMethod getLevName(item, name) [ Language = javascript ]
{
}

/// Given the base name, return the new name with proper index number
ClientMethod getPropName(item, name) [ Language = javascript ]
{
}

/// Return new list name. Starting "New_listing1".
ClientMethod getListName() [ Language = javascript ]
{
}

/// Return new list name. Starting "New_listing1".
ClientMethod getListingFieldName(cube, name) [ Language = javascript ]
{
}

/// Save the cube.
ClientMethod save() [ Language = javascript ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Object submit handler JSON provider.
/// This is called when the client submits the Cube definition.
Method SubmitCube(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status
{
}

/// Set the modified flag for the page.
ClientMethod setModified(flag) [ Language = javascript ]
{
}

/// Timeout for the timer managing the compile button
ClientMethod commandBtnTimeout() [ Language = javascript ]
{
}

/// This method is responsible for controlling the Compile button's availability
/// according to the build lock.
ClientMethod setCommandsFromBuildState() [ Language = javascript ]
{
}

/// Check to see if the current cube has a build lock, indicating there is an update underway
ClassMethod CheckBuildLock(pCubeName) As %Boolean [ ZenMethod ]
{
}

/// Compile the cube.
ClientMethod compile() [ Language = javascript ]
{
}

/// Rebuild the cube.
ClientMethod buildCube() [ Language = javascript ]
{
}

/// Test if the user has write privilege.
ClientMethod canUserModify() [ Language = javascript ]
{
}

/// Test if the user has build privileges.
ClientMethod canUserBuild() [ Language = javascript ]
{
}

/// Toggle display of settings (property tabs) box.
ClientMethod toggleSettings() [ Language = javascript ]
{
}

/// Show analyzer in a new window.
ClientMethod toolAnalyzer() [ Language = javascript ]
{
}

/// Show query tool in a new window.
ClientMethod toolQuery() [ Language = javascript ]
{
}

/// Add check to ensure that we correctly load documents on the client when source control hooks are in use.
/// Also set up a timer to ensure we don't hit timeouts while editing documents in Studio, as well as
/// When in Studio mode, also detect whether we are running IE10, as we need to save documents differently if that
/// is the case.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Adds a coverpane to the details tab in the DOM. This is used to disable the entire details section
/// while still being able to read the items.
ClientMethod addDetailCoverPane() [ Internal, Language = javascript ]
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

/// This method returns the following values via proxy object:<br>
/// 1) IsDate is set to 1 if the property type is a date format. Verified against the ODBC type.<br>
/// 2) IsNumeric is set to 1 if the property type is any kind of numeric format. Verified against the ODBC type.<br>
/// 3) Caption is the property's parameter CAPTION.</br>
/// 4) SQLNames in the fashion of Prop1 -> Prop2 -> Prop3.</br>
/// 5) IsBoolean is set to 1 if the property type is a boolean. Verified against the ODBC type.
///
ClassMethod GetPropInfo(sourceClass, fullName) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Return the internal name of the current document, including the three letter
/// extension in upper-case. For example, MyPackage.MyClass.CLS would be the internal name
/// for the class MyPackage.MyClass.
Method GetInternalName() As %String
{
}

/// Return the current name of the class/object being modified.
ClientMethod getCurrentName() [ Language = javascript ]
{
}

/// Get the title string to add to the locator row.
/// This should be implemented in a subclass.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

/// Get the jsonProvider object on the client.
ClientMethod getClientModel() [ Language = javascript ]
{
}

/// Callback method invoked after we have successfully loaded the current document.
ClientMethod onDocumentLoadComplete() [ Language = javascript ]
{
}

/// This callback is called at the end of the HTML HEAD section of the page.<br/>
Method %OnDrawHTMLHead() As %Status
{
}

/// method used by Source Control to set the value of the readOnly flag.
ClientMethod setReadOnly(readOnly) [ Language = javascript ]
{
}

ClientMethod transformToSQLExpression(expr) [ Language = javascript ]
{
}

ClientMethod dropDetailListingFieldExpression(dragData) [ Language = javascript ]
{
}

/// Called by the Override button to override an inherited item in the local cube definition.
ClientMethod overrideInheritedItem() [ Language = javascript ]
{
}

/// This prevents a user from making changes to the item details using the cover pane.
ClientMethod setDetailContentDisabled(setDisabled) [ Language = javascript ]
{
}

/// If it exists, search the inherited cube object for the same
/// logical definition as <var>item</var>.
ClientMethod itemIsOverride(item) [ Language = javascript ]
{
}

/// Handle a source control menu selection.
ClientMethod chooseSCMenu(menuName, commandName, saveFlags) [ Language = javascript ]
{
}

/// Pass in an item and type and test if the settings substantial to data storage definition
/// (eg: values, type, etc.) have changed.
ClientMethod checkItemModified(item, type) [ Language = javascript ]
{
}

/// Examine the cube definition object. If the cube's namedFactNums property is set, automatically assign a factNumber to
/// any structural element that does not already have one defined.
ClientMethod assignFactNumbers() [ Language = javascript ]
{
}

/// This will compare the current cube model with the compiled definition. It will return two arrays
///  <var>definedMsrNums</var>, <var>definedFactNums</var>
/// containing the known factNumbers that have been used in measures and levels/relationships, respectively.
/// For those items that have factNumbers assigned, the mapping between column sources and factNumbers
/// is returned in <var>sourceIndex</var>. Anything that has been modified in the current session or did not
/// previously have a compiled fact number will be returned in the <var>missing</var> index.<br><br>
/// If factNumbers of the model elements have not been explicitly set but have been previously assigned internally
/// via the compile, the factNumbers in the current cube model will be set to those numbers.
/// In the case of inherited cubes, only the compiled factNumbers of the supercube will be held constant.
ClientMethod analyzeCubeModel(cube, definedMsrNums, definedFactNums, sourceIndex, missing) [ Language = javascript ]
{
}

/// Set or Clear all isModified flags in the cube definition according to <var>value</var>.
ClientMethod setFactsModified(value) [ Language = javascript ]
{
}

/// Fetch the list of dimensions, measures, and relationships that are known to have been modified
/// since the last build.
ClientMethod getModifiedFactList(specList) [ Language = javascript ]
{
}

/// Given the objects representing a <var>dimension</var> and a <var>level</var>, produce
/// a string that can be used as an identifier in the sourceIndex when determining shared storage
/// for fact table columns.
ClientMethod getLevelSourceForIndex(dimension, level) [ Language = javascript ]
{
}

/// Return an index of the currently used fact numbers in the compiled metadata. This index is returned as a JSON object which takes the form:<br>
/// <example language=cos>
/// Set tCompiledFactNums = {
/// 		"measures":{
/// 		  "[MEASURES].[NAME]":"M1"
/// 		},
/// 		"dimensions":{
/// 		  "[DIM].[HIER].[LEVEL]":"2"
/// 		},
/// 		"relationships":{
/// 		  "[RELNAME]":"3"
/// 		}
/// 	}
/// </example>
ClassMethod GetCompiledFactNumbers(pCubeName) As %String [ ZenMethod ]
{
}

}
