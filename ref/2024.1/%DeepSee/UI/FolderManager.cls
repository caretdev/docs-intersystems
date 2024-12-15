/// DeepSee Folder Manager page.
Class %DeepSee.UI.FolderManager Extends %DeepSee.UI.standardPage [ System = 4 ]
{

Parameter PAGENAME = "Folder Manager";

Parameter RESOURCE = "%DeepSee_Admin,%Development";

Parameter DOCBOOKID = "D2GS_uis_folder_manager";

/// Current folder name.
Property folderName As %ZEN.Datatype.string;

/// Export directory.
Property directory As %ZEN.Datatype.string;

/// List of selected items.
Property selectedItems As list Of %ZEN.Datatype.string;

/// List of selected files.
Property selectedFiles As list Of %ZEN.Datatype.string;

/// Comma-delimited list of resources available for the current user
Property resourceList As %ZEN.Datatype.string [ Internal ];

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

/// Adjust sizes of components on the page.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Adjust sizes of components on the page.
ClientMethod adjustSizes() [ Language = javascript ]
{
}

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
{
}

/// Draw content of the help box.
Method DrawHelp(pSeed As %String) As %Status
{
}

/// Draw content of folders list.
Method DrawFolders(pSeed As %String) As %Status
{
}

/// Adjust the presentation to the user when the Container Class checkbox is checked.
ClientMethod toggleContainer(value) [ Language = javascript ]
{
}

/// Hide/show folders in list.
ClientMethod toggleFolder(index) [ Language = javascript ]
{
}

/// Delete the given folder.
ClientMethod deleteFolder(name) [ Language = javascript ]
{
}

/// Delete the given item.
ClientMethod deleteItem(name) [ Language = javascript ]
{
}

/// Set the export directory.
ClientMethod setExportDirectory(dir) [ Language = javascript ]
{
}

/// Reload the folder list.
ClientMethod refreshFolders() [ Language = javascript ]
{
}

/// Click on all check box.
ClientMethod allClick() [ Language = javascript ]
{
}

/// Click on row.
ClientMethod rowClick(row) [ Language = javascript ]
{
}

/// Click on checkbox.
ClientMethod cbClick(cb) [ Language = javascript ]
{
}

/// Return an array of selected folder items.
ClientMethod getSelectedItems() [ Language = javascript ]
{
}

/// Return an array of selected files in export directory.
ClientMethod getSelectedFiles() [ Language = javascript ]
{
}

/// Export selected items.
ClientMethod exportThem() [ Language = javascript ]
{
}

/// Delete selected items.
ClientMethod deleteSelected() [ Language = javascript ]
{
}

/// Import selected items.
ClientMethod importThem() [ Language = javascript ]
{
}

/// Delete the given folder item or folder.
Method SendItemToTrash(pName As %String) As %String [ ZenMethod ]
{
}

/// Export the current selected list.
Method ExportItems(pUseContainerClass As %Boolean, pContainerClassName As %String = "") As %String [ ZenMethod ]
{
}

/// Import the current selected file list.
Method ImportItems() As %String [ ZenMethod ]
{
}

/// Delete the current selected list.
Method DeleteItems() As %String [ ZenMethod ]
{
}

/// Change in search box value. Overridden by subclasses.
ClientMethod searchBoxHandler(searchKey) [ Language = javascript ]
{
}

/// Select all files in export directory.
ClientMethod selectAllFiles() [ Language = javascript ]
{
}

/// Select a file in the export directory.
ClientMethod selectFile(n, iscb) [ Language = javascript ]
{
}

/// Update the item details box.
ClientMethod updateDetails() [ Language = javascript ]
{
}

/// Get details on selected item.
ClassMethod GetItemDetails(pName As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Draw contents of export directory.
Method DrawExportDirectory(pSeed As %String) As %Status
{
}

/// Save folder details.
ClientMethod saveFolder(name) [ Language = javascript ]
{
}

/// Save folder information.
ClassMethod SaveFolderDetails(pName As %String, pResource As %String) As %String [ ZenMethod ]
{
}

ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Test for additional resources.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

ClassMethod %GetResourceList(Output pList) As %Status [ Internal ]
{
}

/// User clicked the Browse button.
ClientMethod browseSelect() [ Language = javascript ]
{
}

/// User changed to export file between Server or Browser
ClientMethod doLocationChange(flag) [ Language = javascript ]
{
}

/// Create a temporary file name with the same extension
/// as the current <var>pDocName</var>.
Method GetTempFileName(pDocName) As %String [ ZenMethod ]
{
}

/// Stream a temporary file located on the server at <var>pFileName</var>
/// and serve it to the current client <class>%CSP.StreamServer</class>.
ClassMethod DownloadStream(pFilename As %String, pDocName As %String, pCharSet As %String = "") [ ZenMethod ]
{
}

/// Test if the given class name is valid.
ClassMethod IsValidClassName(pClassName As %String) As %Boolean [ ZenMethod ]
{
}

/// Provides a compact means of switching to the file upload form
ClientMethod shortcutToFileUpload() [ Language = javascript ]
{
}

/// Link to the stream of the file upload control and treanfer the stream contents to the server
ClassMethod SaveFileImportToDisk(pSubmit As %ZEN.Submit) As %Status
{
}

ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Check the error status of the fileUploadForm and the fileUploadCtrl. If present, alert the user to this information
ClientMethod checkUploadInformation() [ Language = javascript ]
{
}

}
