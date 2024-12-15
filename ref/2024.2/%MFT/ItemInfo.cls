/// %MFT.ItemInfo is a detailed description of a file or folder.
/// Note: Even though this class is in IRISLIB, the storage is in the namespace which creates the instance.
Class %MFT.ItemInfo Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

/// The name of the file or folder item.
Property Name As %String(MAXLEN = 256);

/// The path of the containing folder.
/// This path may not be available for some services.  In that case a relative path is returned.Container may not be available under certain circumstances.
Property Container As %String(MAXLEN = 2048);

/// The type of the item:  $$$MFTfile or $$$MFTfolder.
Property Type As %Integer;

/// The internal item id for this item.
Property ItemId As %String;

/// Modified As %DateTime is the creation time of the item in UTC.
Property Modified As %TimeStamp;

/// The internal id of the user that last modified the item.
/// The GetUsername method must be called to retrieve the external username.
Property ModifiedBy As %String(MAXLEN = 300);

/// Details As %DynamicObject is the service specific dynamic object containing
/// specialized information for this service converted to JSON.
Property Details As %String(MAXLEN = "");

/// Get path of this item
Method GetPath(trailingSlash As %Boolean = 1) As %String [ CodeMode = expression ]
{
}

}
