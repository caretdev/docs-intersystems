/// DeepSee term list manager page.
/// This page lets you view and edit "term lists" (lookup tables used by DeepSee models).
Class %DeepSee.UI.ListingGroupManager Extends %DeepSee.UI.standardPage [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "DeepSee Listing Group Manager";

Parameter RESOURCE = "%DeepSee_ListingGroup,%DeepSee_ListingGroupEdit";

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE;

Parameter DOCBOOKID;

/// Indicates the page reloaded itself if LISTINGGROUP is empty
Property reload As %ZEN.Datatype.boolean(ZENURL = "RELOAD") [ InitialExpression = 0 ];

/// The current copy of the listing group
Property %model As %DeepSee.Model.ListingGroup.listingGroup;

/// If true, the user has write access to the page.
Property canWritePage As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, user can modify this particular listing group.
Property canWrite As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, user is allowed to access teh custom SQL fields.
Property canViewSQL As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Name of listing group.
Property listingGroupName As %ZEN.Datatype.string(ZENURL = "LISTINGGROUP");

Property replaceExisting As %ZEN.Datatype.string(ZENURL = "REPLACE");

/// Source class for these listings
Property dataSource As %ZEN.Datatype.string;

/// Current CSP session.
Property sessionCookie As %ZEN.Datatype.string;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Create a new listing group.
ClientMethod newListingGroup() [ Language = javascript ]
{
}

/// Delete the current listing group.
ClientMethod deleteListingGroup() [ Language = javascript ]
{
}

/// save the listing group to its storage class.
ClientMethod saveListingGroup(rename, compile, silent = 0) [ Language = javascript ]
{
}

/// Switch to a different listing group.
ClientMethod changeListingGroup() [ Language = javascript ]
{
}

/// Client side method for loading the json object from the server
ClientMethod loadListingGroup() [ Language = javascript ]
{
}

/// Invoke dialog to edit certain items: RangeExpression, FormatString, SourceProperty, SourceExpression, CubeResource, ListingResource, ListingField.
ClientMethod editItem(what) [ Language = javascript ]
{
}

/// Launch a dialog to select the target cubes for this listing group
ClientMethod selectCubeList() [ Language = javascript ]
{
}

/// Load the dynaTree control's contents from the server.
Method GetListingTree(pRoot As %String, Output pTree, ByRef pParms) [ ZenMethod ]
{
}

/// Find the class name given a name of a listing group
Method LookUpClassName(pListingGroupName = "") As %String [ ZenMethod ]
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

Method ListingGroupExists(pListGroupName As %String) As %Boolean [ ZenMethod ]
{
}

Method GetListingGroupContent(ByRef pParameters, Output pObject As %RegisteredObject) As %Status [ ZenMethod ]
{
}

/// Perfrom the actual work of saving the current listing group definition to the storage class. If called with
/// <var>pCommand</var> = "compile" the class will also be compiled, activating the listings defined in the group.
Method SubmitListingGroupContent(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status
{
}

/// This class method callback is called just before the server-side page
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod controlFormAccess() [ Language = javascript ]
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

/// Get the json provider component that contains the current listing group.
ClientMethod getListingGroup() [ Language = javascript ]
{
}

/// Delete a term list.
Method Delete(pName As %String) As %String [ ZenMethod ]
{
}

/// Launch the subject area finder.
ClientMethod browseSubjectAreas() [ Language = javascript ]
{
}

/// Update the group and listing details forms.
ClientMethod updateForm() [ Language = javascript ]
{
}

/// Change to details form.
ClientMethod formChanged(ctrl) [ Language = javascript ]
{
}

/// Create new listing object.
ClientMethod createListing() [ Language = javascript ]
{
}

ClientMethod addListing() [ Language = javascript ]
{
}

ClientMethod deleteListing() [ Language = javascript ]
{
}

/// Set the tree to expanded, no matter what state it is in currently
ClientMethod treeExpand(tree) [ Language = javascript ]
{
}

/// Do any actions necessary for proper presentation when the tree is first loaded
ClientMethod treePrepare() [ Language = javascript ]
{
}

/// User checked/unchecked the Use SQL field
ClientMethod changeUseSQL() [ Language = javascript ]
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

/// Return Data Connector list
Method LoadListingSource() As %String
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

ClientMethod notImplemented() [ Language = javascript ]
{
}

/// This callback is called just after the server-side page
/// object is created but before its children are created.
Method %OnCreatePage() As %Status
{
}

/// Register this visit to the recent items list.
Method %Register() As %Status
{
}

/// This is called in the middle of rendering the tool ribbon.
/// Subclasses can inject their own content into the ribbon by writing it out in this method.
/// This content is best wrapped within a single td element.
/// It can also consist of multiple td elements.
/// <p>
/// To achieve a fixed position for elements within the ribbon, for a fixed width page you can
/// use a single enclosing td that contains a table and a single tr,
/// with td elements inside that single tr that contain your content for the ribbon.
/// <p>
/// To achieve a fixed position for elements within the ribbon,
/// for a page whose width varies depending on its contents (thereby stretching the ribbon)
/// you can use multiple td elements to contain your content and then a final
/// td element that is empty and has width 40% (or so) to push your contents towards the left
/// and keep them in their proper locations.
Method OnDrawRibbon() As %Status
{
}

/// OCnvenience utility for setting the ribbon message
ClientMethod setRibbonMessage(message) [ Language = javascript ]
{
}

}
