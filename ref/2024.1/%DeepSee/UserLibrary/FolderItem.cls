/// This abstract class represents an item within a DeepSee folder.<br/>
Class %DeepSee.UserLibrary.FolderItem Extends (%Persistent, %XML.Adaptor, %CSP.Portal.AbstractPortalModel) [ Abstract, System = 4 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee/library";

Parameter XMLIGNORENULL = 1;

/// This is the extension returned by this type from the Finder.
Parameter ITEMTYPE As STRING;

/// If true, then items of this type (class) are displayed in the user portal table.
Parameter LISTED As BOOLEAN = 1;

/// Default value of public property for the class.
Parameter PUBLIC As BOOLEAN = 1;

/// URL of icon for this item
Parameter ICON As STRING = "portal/window_24.png";

/// URL of large icon for this item
Parameter LARGEICON As STRING = "portal/pie_chart_48.gif";

/// Name of this item.
Property name As %String(MAXLEN = 255, XMLPROJECTION = "attribute") [ Required ];

/// Folder this item belongs to.
Property folder As %DeepSee.UserLibrary.Folder(XMLPROJECTION = "none") [ ReadOnly ];

/// Full name of the folder this item belongs to.
Property folderName As %String(MAXLEN = 255, XMLPROJECTION = "attribute") [ SqlComputeCode = {Set {folderName}=##class(%DeepSee.UserLibrary.Folder).%GetFullName({folder})}, SqlComputed, Transient ];

/// Full name of this item (including folder and type extension).
Property fullName As %String(MAXLEN = 32000, XMLPROJECTION = "none") [ Calculated, SqlComputeCode = {Set {fullName}=##class(%DeepSee.UserLibrary.Folder).%GetFullName({folder}), {fullName}={fullName}_$S({fullName}="":"",1:"/")_{name}, {fullName}={fullName}_$S({fullName}=""||($$$comMemberKeyGet($P({x__classname},"~",2),$$$cCLASSparameter,"ITEMTYPE",$$$cPARAMdefault)=""):"", 1:"."_$$$comMemberKeyGet($P({x__classname},"~",2),$$$cCLASSparameter,"ITEMTYPE",$$$cPARAMdefault))}, SqlComputed, Transient ];

/// Name of this item used in document import/export and source control (including folder and type extension plus .DFI).
Property documentName As %String(MAXLEN = 32000, XMLPROJECTION = "none") [ Calculated, ReadOnly, SqlComputeCode = {Set {documentName}=##class(%DeepSee.UserLibrary.Folder).%GetFullName({folder}), {documentName}={documentName}_$S({documentName}="":"",1:"-")_{name}, {documentName}={documentName}_$S({documentName}=""||($$$comMemberKeyGet($P({x__classname},"~",2),$$$cCLASSparameter,"ITEMTYPE",$$$cPARAMdefault)=""):"", 1:"."_$$$comMemberKeyGet($P({x__classname},"~",2),$$$cCLASSparameter,"ITEMTYPE",$$$cPARAMdefault)_".DFI")}, SqlComputed, Transient ];

/// Option title displayed for this item.
Property title As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Optional description for this item.
Property description As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

/// Csv-list of keywords associated with the item.
Property keywords As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

/// User name of the owner of this item.
Property owner As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// If true, then anyone with permission can view this item, otherwise only the owner can view this item.
Property shared As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// If true, this this item is listed in the user portal (if the user has permission to see it).
Property public As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = {..#PUBLIC}, SqlFieldName = ispublic ];

/// If true, then users are not allowed to save modifications to this item without first unlocking it.
Property locked As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// The resource needed to view or edit this item:<br/>
/// If defined and the current user holds the USE privilege on this resource, then
/// the user may view this item.<br/>
/// If defined and the current user holds the WRITE privilege on this resource, then
/// the user may modify this item.<br/>
Property resource As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Time that this item was originally created.
Property timeCreated As %TimeStamp(XMLPROJECTION = "attribute") [ InitialExpression = {$ZDT($ZTS,3,,3)} ];

/// Time that this item was last saved.
Property timeModified As %TimeStamp(XMLPROJECTION = "none");

/// Name of the user that originally created this item.
Property createdBy As %String(MAXLEN = 255, XMLPROJECTION = "attribute") [ InitialExpression = {$UserName} ];

/// Category used by the book cover view of this item.
Property category As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Specification string for the book cover associated with this folder item.
Property bookCover As %String(MAXLEN = 20000, XMLPROJECTION = "attribute");

///  Time that this item was last accessed.
Property lastAccessed As %TimeStamp(XMLPROJECTION = "attribute");

/// Getter method for full name.
Method fullNameGet() As %String
{
}

/// Setter method for full name.
Method fullNameSet(%val) As %Status
{
}

/// Getter method for document name that can be imported/exported
Method documentNameGet() As %String
{
}

ClassMethod fullNameFromDocumentName(pDocName As %String) As %String
{
}

/// Getter method for folder name.
Method folderNameGet() As %String
{
}

/// Setter method for folder name.
Method folderNameSet(%val As %String) As %Status
{
}

Method %OnBeforeSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

/// Split the given full name for this item into its parts.
ClassMethod %ParseFullName(pFullName As %String, Output pFolderName As %String, Output pName As %String, Output pExtension As %String) As %Status
{
}

/// Test if the current user has access to this item.
Method %CheckResource(pPrivilege As %String = "USE") As %Boolean
{
}

/// Get the resource value for this item.
/// Also return the name of the folder that defines the resource or "" if it originates here.
Method %GetResource(Output pOrigin As %String) As %String
{
}

/// Test if this item is visible to the user portal.
Method %IsVisibleToPortal() As %Boolean [ Internal ]
{
}

/// Return the URL for this item.
Method %GetURL() As %String
{
}

/// Return the icon for this item.
Method %GetIcon() As %String
{
}

/// Return the large icon for this item.
Method %GetLargeIcon() As %String
{
}

/// Return the localized type name for this item.
Method %GetTypeName() As %String
{
}

/// Copy the contents of this definition to pivot table <var>pPivot</var>.
Method %CopyToComponent(pPivot As %DeepSee.Component.pivotTable) As %Status [ Internal ]
{
}

/// Set the contents of this definition from pivot table <var>pPivot</var>.
Method %CopyFromComponent(pPivot As %DeepSee.Component.pivotTable) As %Status [ Internal ]
{
}

/// Return a list of all other folder items (including cubes or kpis) that this item depends upon.
/// Returns a list of the form:<br/>
/// pList(itemName) = ""<br/>
/// This is extended by subclasses.
Method %GetDependencies(pList As %String) As %Status
{
}

/// Diagnostic method: display contents of this folder item to the console.
/// This can be extended by subclasses.
Method %Dump() As %Status
{
}

/// Notification that this item has just been imported.
Method %OnAfterImport(pNewName As %String) As %Status
{
}

/// Return the book cover spec for this folder item.
Method %GetCoverSpec() As %String
{
}

}
