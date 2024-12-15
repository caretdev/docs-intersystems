/// %MFT.FolderContents lists the contents of a folder.
/// Note: Even though this class is in IRISLIB, the storage is in the namespace which creates the instance.
Class %MFT.FolderContents Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

/// Recursive is true if this list is a recursive list of all descendants of the folder.
Property Recursive As %Boolean;

/// Contents is a list of %MFT.ItemInfo to describe the folder contents.
Property Contents As list Of %MFT.ItemInfo;

}
