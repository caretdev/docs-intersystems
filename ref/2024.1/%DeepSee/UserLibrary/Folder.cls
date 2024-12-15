/// This persistent class represents a folder within the DeepSee User Portal.
/// Folders are used to group dashboards, saved pivots, and other user-defined elements.
Class %DeepSee.UserLibrary.Folder Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee/library";

Parameter XMLNAME = "folder";

/// Full name used for xml import/export.
Property %exportName As %String(MAXLEN = 32000, XMLNAME = "name", XMLPROJECTION = "attribute") [ Transient ];

/// Full-name (including parent folders) of the folder.
Property fullName As %String(MAXLEN = 32000, XMLPROJECTION = "none") [ Calculated, SqlComputeCode = {Set {fullName}=##class(%DeepSee.UserLibrary.Folder).%GetFullName({ID})}, SqlComputed, Transient ];

/// User-specified (local) name of the folder.
Property name As %String(MAXLEN = 255, XMLPROJECTION = "none");

/// Parent folder this item belongs to, if any.
Relationship folder As %DeepSee.UserLibrary.Folder [ Cardinality = one, Inverse = items ];

/// Subfolders within this folder, if any.
Relationship items As %DeepSee.UserLibrary.Folder [ Cardinality = many, Inverse = folder ];

/// Default resource applied to items within this folder.
/// Any items within this folder that do not supply a resource will use this value.
Property resource As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Compute the full name of this folder.
ClassMethod %GetFullName(pID As %String) As %String [ Internal ]
{
}

/// Get the resource value for this folder.
/// Also return the name of the folder that defines the resource.
Method %GetResource(Output pOrigin As %String) As %String
{
}

/// Folder is being deleted.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

}
