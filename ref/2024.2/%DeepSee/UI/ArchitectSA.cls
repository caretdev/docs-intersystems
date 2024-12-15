/// DeepSee SubjectArea Architect page.
/// This is a special version of the Architect for operating on Subject Areas.
Class %DeepSee.UI.ArchitectSA Extends (%DeepSee.UI.standardPage, %CSP.Portal.SourceControl.Base) [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Architect Subject Area";

Parameter DOCBOOKID = "D2MODEL_intro_architect";

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE = "cube";

/// Name of SubjectArea (with extension).
Property subjectAreaFullName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Name of SubjectArea being viewed.
Property subjectAreaName As %ZEN.Datatype.string;

/// Class name of SubjectArea being viewed.
/// This is determined from the SubjectArea name.
Property subjectAreaClass As %ZEN.Datatype.string;

/// Base cube name for the current subject area.
Property baseCube As %ZEN.Datatype.string;

/// Description of SubjectArea being viewed.
/// This is determined from the subjectArea name.
Property subjectAreaDescription As %ZEN.Datatype.string;

/// Domain of SubjectArea being viewed.
/// This is handled seperately from json.
Property subjectAreaDomain As %ZEN.Datatype.string;

/// DependsOn for subjectArea class. If provided, this is used as the DependsOn value
/// of the generated subjectArea. If not, the base cube for the subjectArea is used.
/// This is handled seperately from json.
Property subjectAreaDependsOn As %ZEN.Datatype.string;

/// Data source. This is a copy of the value in the base cube model.
Property dataSource As %ZEN.Datatype.string;

/// ID (index number, 0-based) of current selected item.
Property currItem As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// Type of the current selected item.
Property currItemType As %ZEN.Datatype.string;

/// Local copy of SubjectArea model object.
Property %model As %DeepSee.Model.SubjectArea.subjectArea;

/// Local copy of BaseCube model object.
Property %basecube As %DeepSee.Model.SubjectArea.subjectArea;

/// If true, user cannot modify the current SubjectArea definition.
Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, user can modify (non-read-only) SubjectArea definitions,
/// otherwise they can only view.
Property canWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property hlpRemove As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove this item")} ];

Property hlpShowHide As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Hide or show the properties box")} ];

Property lblMeasure As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("measure")} ];

Property lblDimension As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("dimension")} ];

Property lblHier As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("hierarchy")} ];

Property lblLevel As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("level")} ];

Property lblListing As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("listing")} ];

Property msgInvalid As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please click [Open] to select a model definition.")} ];

/// If true, the settings area (property sheet) is visible.
Property settingsExpanded As %Boolean [ InitialExpression = 1, Internal ];

Property DocumaticPage As %String;

/// This Style block contains page-specific CSS 3 style definitions.
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

/// Draw additional stuff in the ribbon bar
Method OnDrawRibbon() As %Status
{
}

/// Launch the subjectArea finder dialog.
ClientMethod changeSubjectArea() [ Language = javascript ]
{
}

/// User checked/unchecked the Use SQL field
ClientMethod changeUseSQL() [ Language = javascript ]
{
}

/// Add check to ensure that we correctly load documents on the client when source control hooks are in use.
/// Also set up a timer to ensure we don't hit timeouts while editing documents in Studio, as well as
/// When in Studio mode, also detect whether we are running IE10, as we need to save documents differently if that
/// is the case.
ClientMethod onloadHandler() [ Language = javascript ]
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

/// Return the cube definition object.
ClientMethod getCubeObject() [ Language = javascript ]
{
}

/// Update the contents of the model table.
ClientMethod renderTable() [ Language = javascript ]
{
}

/// Check overrides for Measure
ClientMethod diffMeasures(itemObj, baseObj) [ Language = javascript ]
{
}

/// Check overrides for Dimension
ClientMethod diffDimensions(itemObj, baseObj) [ Language = javascript ]
{
}

/// Check overrides for Hierarchies
ClientMethod diffHierarchies(itemObj, baseObj) [ Language = javascript ]
{
}

/// Check overrides for Levels
ClientMethod diffLevels(itemObj, baseObj) [ Language = javascript ]
{
}

ClientMethod updateDiff(diffString, propName) [ Language = javascript ]
{
}

ClientMethod maxDiff(diffString) [ Language = javascript ]
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

/// Return Data Connector list
Method LoadListingSource() As %String
{
}

/// Return Measure list or Listing list
Method LoadDefaultList(baseCube, pType) As %String
{
}

/// Get SubjectArea definition for JSON provider.
Method GetSubjectAreaDefinition(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// Get BaseCube definition for JSON provider.
Method GetCubeDefinition(ByRef pParms, Output pBase As %RegisteredObject) As %Status
{
}

/// Return the subject area definition object.
ClientMethod getSubjectAreaObject() [ Language = javascript ]
{
}

/// Return the current selected item.
ClientMethod getSelectedItem() [ Language = javascript ]
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

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Invoke dialog to add a new subjectArea.
ClientMethod newSubjectArea() [ Language = javascript ]
{
}

/// Open Documatic page to view all details (if user has not modified anything).
ClientMethod doDocument() [ Language = javascript ]
{
}

/// Open View Cube page to view all details (if user has not modified anything).
ClientMethod viewSub() [ Language = javascript ]
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

ClientMethod createLevel(newname) [ Language = javascript ]
{
}

ClientMethod createDim(newname) [ Language = javascript ]
{
}

ClientMethod createHier(newname) [ Language = javascript ]
{
}

/// Invoke class finder dialog. popupName="sourceclasses" or "cubes"
ClientMethod browseClass(popupName) [ Language = javascript ]
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

/// Invoke dialog to edit certain items: RangeExpression, FormatString, SourceProperty, SourceExpression.
ClientMethod editItem(what) [ Language = javascript ]
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

/// Find if this baseCube's dimension property hasAll is true or false.
/// If false, then do not show the all members fields.
ClientMethod dimHasAll(item) [ Language = javascript ]
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

/// User click on disclosure icon in table.
ClientMethod toggleDisclosure(key) [ Language = javascript ]
{
}

/// Save the cube.
ClientMethod save() [ Language = javascript ]
{
}

/// Do save now. This method is called from compile also.
ClientMethod saveCube() [ Language = javascript ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Object submit handler JSON provider.
/// This is called when the client submits the Subject Area definition.
Method SubmitSubjectArea(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status
{
}

/// Compile the cube.
ClientMethod compile() [ Language = javascript ]
{
}

/// Test if the user has write privilege.
ClientMethod canUserModify() [ Language = javascript ]
{
}

/// method used by Source Control to set the value of the readOnly flag.
ClientMethod setReadOnly(readOnly) [ Language = javascript ]
{
}

}
