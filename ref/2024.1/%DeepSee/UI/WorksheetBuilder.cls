/// This lets a user create and edit worksheets.
/// A worksheet can be used as a source of KPI values or to drive dashboards.
Class %DeepSee.UI.WorksheetBuilder Extends %DeepSee.UI.standardPage [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Worksheet Manager";

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE;

Parameter DOCBOOKID = "D2MODADV_ch_worksheet";

/// Pick up formula code.
Parameter JSINCLUDES = "dsparser.js";

/// Name of worksheet being viewed.
Property worksheetName As %String(ZENURL = "WORKSHEET");

/// Indicates what the cell value editor is showing: "cell","row", or "column".
Property whichCell As %String;

/// Local copy of worksheet object.
Property %model As %DeepSee.UserLibrary.Worksheet;

/// If true, user cannot modify the current worksheet.
/// Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];
/// If true, user can modify (non-read-only) worksheet.
/// Property canWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];
/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Draw the help panel.
Method DrawHelp(pSeed As %String) As %Status
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

/// Adjust sizes of components on the page.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Get the navigator component.
ClientMethod getNavigator() [ Language = javascript ]
{
}

/// Apply saved attributes to the grid component.
/// There is a copy of this method in the worksheet widget.
ClientMethod applyModelToGrid() [ Language = javascript ]
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

/// Launch the worksheet finder dialog.
ClientMethod changeWorksheet() [ Language = javascript ]
{
}

/// Launch the subject area finder.
ClientMethod browseSubjectAreas() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Test if the user has write privilege.
ClientMethod canUserModify() [ Language = javascript ]
{
}

/// If true, user cannot modify the current worksheet.
Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, user can modify (non-read-only) worksheet.
Property canWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Change in search box value. Can be overridden by subclasses.
ClientMethod searchBoxHandler(searchKey) [ Language = javascript ]
{
}

/// Get the json-supplied data model.
ClientMethod getModel() [ Language = javascript ]
{
}

/// Click on header in grid.
ClientMethod headerClick(which, index) [ Language = javascript ]
{
}

/// Add a row to the grid
ClientMethod addRow() [ Language = javascript ]
{
}

/// Add a column to the grid
ClientMethod addColumn() [ Language = javascript ]
{
}

/// Remove a row from the grid.
ClientMethod removeRow() [ Language = javascript ]
{
}

/// Remove a column from the grid.
ClientMethod removeColumn() [ Language = javascript ]
{
}

/// Create a new worksheet.
ClientMethod newWorksheet() [ Language = javascript ]
{
}

/// Export the worksheet.
ClientMethod exportWorksheet() [ Language = javascript ]
{
}

/// Delete the worksheet.
ClientMethod deleteWorksheet() [ Language = javascript ]
{
}

/// Launch the save worksheet dialog.
ClientMethod saveWorksheet(showDialog) [ Language = javascript ]
{
}

/// Get content object for JSON provider.
Method GetWorksheetContent(ByRef pParameters, Output pObject As %RegisteredObject) As %Status
{
}

/// Object submit handler JSON provider.
/// This is called when the client saves the worksheet.
Method SubmitWorksheet(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status
{
}

/// Delete a worksheet.
Method Delete(pName As %String) As %String [ ZenMethod ]
{
}

/// This callback is called when the upload form on this page is submitted.
/// <var>pSubmit</var> is a <class>%ZEN.Submit</class> object
/// containing details of the form submit.<br/>
ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status
{
}

/// Change to value in cell value control.
ClientMethod cellControlChange() [ Language = javascript ]
{
}

/// Get cell override.
ClientMethod getCellOverride(row, col) [ Language = javascript ]
{
}

/// Select cell handler.
ClientMethod selectCell(row, col) [ Language = javascript ]
{
}

/// Get the grid component.
ClientMethod getGrid() [ Language = javascript ]
{
}

/// Key down handler for grid.
ClientMethod gridKeyDown(evt) [ Language = javascript ]
{
}

/// Return an array of row descriptors (or null).
ClientMethod getRowDescriptors() [ Language = javascript ]
{
}

/// Return an array of column descriptors (or null).
ClientMethod getColumnDescriptors() [ Language = javascript ]
{
}

/// Controller API
ClientMethod getDimSize(dim) [ Language = javascript ]
{
}

/// dataSet API
/// Get the label at position n (0-based) in the given
/// dimension (1,2, or 3).
ClientMethod getLabel(n, dim) [ Language = javascript ]
{
}

/// dataSet API
/// Return the data contained in the specified location.
/// Location is 0-based;
ClientMethod getData(d1, d2, d3) [ Language = javascript ]
{
}

/// dataBag API
/// Get a data value, by property name, from this dataController.
ClientMethod getDataByName(prop, series) [ Language = javascript ]
{
}

/// Given a 0-based index, return the corresponding property name.
ClientMethod getPropertyName(n) [ Language = javascript ]
{
}

/// Notification from the dataGrid.
ClientMethod notifyController(source, reason, prop, value, row) [ Language = javascript ]
{
}

/// Return an object describing what to display for this level within the navigator.
ClientMethod getContentForLevel(level, key, value) [ Language = javascript ]
{
}

/// Data change in navigator
ClientMethod dataChange(key, value, final) [ Language = javascript ]
{
}

/// Item selected in navigator.
ClientMethod selectItem(key, value) [ Language = javascript ]
{
}

/// Launch the color chooser.
ClientMethod launchColorChooser() [ Language = javascript ]
{
}

/// Test for additional resources.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
