/// This class represents an link item within a DeepSee folder.<br/>
/// A link is a wrapper around a URL; when the user selects it, the UserPortal
/// navigates to the URL.
Class %DeepSee.UserLibrary.Link Extends %DeepSee.UserLibrary.FolderItem [ System = 4 ]
{

Parameter XMLNAME = "link";

/// This is the extension returned by this type from the Finder.
Parameter ITEMTYPE = "link";

Parameter ICON = "deepsee/ds2_globe_44.png";

Parameter LARGEICON = "deepsee/ds2_globe_44.png";

/// URL for this link.
Property href As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");

/// Array of URL parameters to apply to the link.
Property parameters As array Of %String(MAXLEN = 5000, XMLKEYNAME = "name", XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// Return the URL for this item.
Method %GetURL() As %String
{
}

/// Return the localized type name for this item.
Method %GetTypeName() As %String
{
}

}
