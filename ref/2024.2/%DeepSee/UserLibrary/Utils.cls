/// This class contains API method for the DeepSee User Component library.
Class %DeepSee.UserLibrary.Utils Extends %RegisteredObject [ Abstract, System = 4 ]
{

/// Deletes all folders and folder items in the current namespace.
ClassMethod %KillFolders() As %Status
{
}

ClassMethod %KillAutosaveFolders(pFolder As %String = "$Temp") As %Status
{
}

/// Deletes all user preference info in the current namespace.
ClassMethod %KillUserPreferences() As %Status
{
}

/// Make note that the given item was accessed recently.
ClassMethod %RegisterRecentItem(pType As %String, pName As %String) As %Status
{
}

/// Get list of recent items for user.
/// This takes the form:<br/>
/// pList(time) = name<br/>
/// If <var>pType</var> is missing, list all types. <var>pType</var> can contain a csv
/// list of types.
ClassMethod %GetRecentItemList(Output pList As %String, pType As %String = "") As %Status
{
}

/// Remove item from recent items list.
ClassMethod %RemoveRecentItem(pName As %String) As %Status
{
}

/// Add item to favorites list.
ClassMethod %AddFavorite(pName As %String) As %Status
{
}

/// Remove item from favorites list.
ClassMethod %RemoveFavorite(pName As %String) As %Status
{
}

/// Get list of favorite items for user.
/// This takes the form:<br/>
/// pList(name) = time
ClassMethod %GetFavoriteList(Output pList As %String) As %Status
{
}

/// Open the folder item with the given full name.
ClassMethod %OpenFolderItem(pFullName As %String, Output pStatus As %Status) As FolderItem
{
}

/// Check if a there is a folder item with the given name.<br/>
/// Returns 0 if the item does not exist; returns 1 if it exists and is visible to the
/// current user; returns 2 if it exists but is not visible to the current user; returns 3 if the pivot is locked.<br/>
/// Return its id by reference as a convenience.<br/>
ClassMethod %FolderItemExists(pFullName As %String, Output pID As %String) As %Integer
{
}

/// Delete all the items within the given folder.
ClassMethod %DeleteFolderContents(pFolderName As %String) As %Status
{
}

/// Delete the folder item with the given full name.
/// <var>pCount</var> returns the number of items actually deleted.
ClassMethod %DeleteFolderItem(pFullName As %String, Output pCount As %Integer) As %Status
{
}

ClassMethod %GetXMLNamesForClasses(Output pList, Output pNonFolderItem) As %Status
{
}

/// Return a list of all folder item classes.<br/>
/// pList(n) = $LB(classname,xmlname)
ClassMethod %GetFolderItemClasses(Output pList) As %Status
{
}

/// Return an array of all folders visible to the current user within the given folder.
/// This list is in the form:<br/>
/// pList(n) = name
ClassMethod %GetFolderList(Output pList As %String, pFolderName As %String = "") As %Status
{
}

/// Return an array of all categories that have been assigned to Folder Items.
/// This list is in the form:<br/>
/// pList(n) = category
ClassMethod %GetCategoryList(Output pList) As %Status
{
}

ClassMethod %GetSubFolderList(Output pList As %String, pFolderName As %String = "") As %Status
{
}

/// Return an array of all folder items visible to the current user within the given folder.
/// This list is in the form:<br/>
/// pList(n) = id<br/>
/// If <var>pShowAll</var> is true, list items for all users.<br/>
/// If <var>pFolderClass</var> is provided, only list items of the given type.<br/>
ClassMethod %GetFolderItemList(Output pList As %String, pFolderName As %String = "", pShowAll As %Boolean = 0, pFolderClass As %String = "") As %Status [ PublicList = SQLCODE ]
{
}

/// Find the folder with the given full name.
/// If <var>pCreate</var> is true, then create the folder if it does not exist.
ClassMethod %FindFolder(pName As %String, pCreate As %Boolean = 0, Output pSC As %Status, pParent As Folder = "") As Folder
{
}

/// Export the items in the list to a container
ClassMethod %ExportContainer(ByRef pItemList As %String, pFileName As %String, pContainerClassName As %String = "", pVerbose As %Boolean = 1) As %Status
{
}

/// Export FolderItem or Folder information to an XML file.
ClassMethod %Export(pFullName As %String, pFile As %String = "", pVerbose As %Boolean = 1, Output pXMLName As %String) As %Status
{
}

/// Import a folder item definition from an XML file.<br/>
/// If <var>pReplace</var> is true, replace an existing item with the same name.<br/>
/// If <var>pVerbose</var> is true, write status to the console.<br/>
/// If <var>pKill</var> is true, then delete all existing items before import!<br/>
/// If <var>pForceItemName</var> is given, import the item using that name.<br/>
/// If type-extension is not present in <var>pForceItemName</var> supply it automatically<br/>
ClassMethod %Import(pFile As %String = "", pReplace As %Boolean = 0, pVerbose As %Boolean = 1, pKill As %Boolean = 0, pForceItemName As %String = "", ByRef pItemsLoaded As %String) As %Status
{
}

/// This method may be called to import a container class from an xml file. This will execute
/// the <method>%OnLoad</var> method if it is defined in the container class.<br>
/// The <var>pReplace</var> parameter is deprecated in this method but remains for compatibility purposes.
ClassMethod %ImportContainer(pFileName As %String = "", pReplace As %Boolean = 1, pVerbose As %Boolean = 1) As %Status
{
}

/// Import a folder item definition from the Contents XData block of the given class.<br/>
/// If <var>pReplace</var> is true, replace an existing item with the same name.<br/>
/// If <var>pVerbose</var> is true, write status to the console.<br/>
ClassMethod %ProcessContainer(pClass As %String = "", pReplace As %Boolean = 0, pVerbose As %Boolean = 1, pSuppressForCaller As %Boolean = 0) As %Status
{
}

/// Diagnostic method. Display the contents of a folder item to the console.
ClassMethod %Dump(pFolderItemName As %String = "") As %Status
{
}

/// Does the current user have "WRITE" access to a folder?
ClassMethod %CanWriteToFolder(pFolderName As %String) As %Boolean
{
}

ClassMethod %OpenItem(pFullName As %String = "", ByRef pStatus As %Status) As %String
{
}

ClassMethod %IsNotFolderItem(pFullName As %String = 0) As %Boolean
{
}

ClassMethod %ExpandItemList(ByRef pItemList As %String, pVerbose As %Boolean = 1) As %Status
{
}

ClassMethod %GetItemsForType(pType, ByRef pItemList, pVerbose As %Boolean = 1)
{
}

ClassMethod %ValidateItemType(pType As %String, ByRef pProblem As %String) As %Boolean
{
}

/// Get the related DeepSee items for a dashboard or pivot table. All items related to the
/// target item <var>pItem</var> will be returned in the <var>pRelItems</var> array. Related
/// items are returned indexed by a single "all" node and by type:<br>
/// <var>pRelItems</var>("all",<var>pItem</var>)=""<br>
/// <var>pRelItems</var>("type","itemType",<var>pItem</var>)=""<br>
ClassMethod %GetRelatedItems(pItem As %String, ByRef pRelItems, pVerbose As %Boolean = 1) As %Status
{
}

/// Get the related DeepSee items for a pivot table.
ClassMethod %GetRelatedItemsForPivot(pItem As %String, ByRef pRelItems, pVerbose As %Boolean = 1) As %Status
{
}

/// Get the related DeepSee items for a cube/subject area.
ClassMethod %GetRelatedItemsForCube(pCubeName As %String, ByRef pRelItems, pVerbose As %Boolean = 1) As %Status
{
}

/// Get the related DeepSee items for a dashboard.
ClassMethod %GetRelatedItemsForDashboard(pItem As %String, ByRef pRelItems, pVerbose As %Boolean = 1) As %Status
{
}

/// Add a new <var>pItem</var> to the <var>pRelItems</var> array. A type extension is expected on the
/// <var>pItem</var> input, for example
/// <example language=cos>Set status = ##class(%DeepSee.UserLibrary.Utils).%AddRelatedItem("itemName.itemType",.relatedItems)
/// </example>
ClassMethod %AddRelatedItem(pItem As %String, ByRef pRelItems, pVerbose As %Boolean = 1) As %Status [ Internal ]
{
}

}
