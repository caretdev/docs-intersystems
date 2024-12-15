/// DeepSee term list manager page.
/// This page lets you view and edit "term lists" (lookup tables used by DeepSee models).
Class %DeepSee.UI.TermListManager Extends %DeepSee.UI.standardPage [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Term List Manager";

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE;

Parameter DOCBOOKID = "D2MODADV_ch_term_list";

Parameter RESOURCE = "%DeepSee_PortalEdit";

/// Name of term list.
Property termListName As %ZEN.Datatype.string(ZENURL = "TERMLIST");

Property replaceExisting As %ZEN.Datatype.string(ZENURL = "REPLACE");

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

Method overwriteTermList(pStreamId As %Integer, pTermListName) As %Status [ ZenMethod ]
{
}

Method getTermListNameFromStream(pStreamId As %Integer) As %String [ ZenMethod ]
{
}

Method termListExists(pTermListName As %String) As %Boolean [ ZenMethod ]
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

/// Launch the term list finder dialog.
ClientMethod changeTermList() [ Language = javascript ]
{
}

/// User has selected a new term list.
ClientMethod changeTermListFromUpload() [ Language = javascript ]
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

/// Change in search box value. Can be overridden by subclasses.
ClientMethod searchBoxHandler(searchKey) [ Language = javascript ]
{
}

/// Update details form.
ClientMethod updateForm() [ Language = javascript ]
{
}

/// Change to details form.
ClientMethod formChanged(ctrl) [ Language = javascript ]
{
}

/// Hide/show the value column.
ClientMethod hideValueColumn(flag) [ Language = javascript ]
{
}

/// Arrow handler for grid.
ClientMethod arrowHandler(which) [ Language = javascript ]
{
}

/// Add a new record.
ClientMethod addRow() [ Language = javascript ]
{
}

/// Remove a record.
ClientMethod removeRow() [ Language = javascript ]
{
}

/// Click on header in grid.
ClientMethod headerClick(which, index) [ Language = javascript ]
{
}

/// Add a new column.
ClientMethod addColumn() [ Language = javascript ]
{
}

/// Delete a new column.
ClientMethod deleteColumn() [ Language = javascript ]
{
}

/// Create a new term list.
ClientMethod newTermList() [ Language = javascript ]
{
}

/// Export the termlist.
ClientMethod exportTermList() [ Language = javascript ]
{
}

/// Delete the termlist.
ClientMethod deleteTermList() [ Language = javascript ]
{
}

/// Save the termlist.
ClientMethod saveTermList(rename) [ Language = javascript ]
{
}

/// Get content object for JSON provider.
Method GetTermListContent(ByRef pParameters, Output pObject As %RegisteredObject) As %Status
{
}

/// Object submit handler JSON provider.
/// This is called when the client saves the term list.
Method SubmitTermList(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status
{
}

/// Delete a term list.
Method Delete(pName As %String) As %String [ ZenMethod ]
{
}

/// This callback is called when the upload form on this page is submitted.
/// <var>pSubmit</var> is a <class>%ZEN.Submit</class> object
/// containing details of the form submit.<br/>
ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status
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

/// Test for additional resources.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
