/// This class represents a Report shortcut within a DeepSee folder.<br/>
Class %DeepSee.UserLibrary.Report Extends %DeepSee.UserLibrary.FolderItem [ System = 4 ]
{

Parameter XMLNAME = "report";

/// This is the extension returned by this type from the Finder.
Parameter ITEMTYPE = "report";

Parameter ICON = "deepsee/ds2_page_44.png";

Parameter LARGEICON = "deepsee/ds2_page_44.png";

/// Report class name.
Property reportClass As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");

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
