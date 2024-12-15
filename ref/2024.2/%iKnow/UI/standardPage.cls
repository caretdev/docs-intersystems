Class %iKnow.UI.standardPage Extends (%ZEN.Portal.standardPage, %ZEN.Portal.Utils) [ Abstract, Deprecated, System = 4 ]
{

Parameter DOMAIN = "%DeepSee";

/// All DeepSee pages require %DeepSee_Portal USE.
Parameter RESOURCE = "%DeepSee_Portal";

/// DeepSee favorite icon.
Parameter FAVORITEICON = "portal/ISC_IRIS_icon.ico";

/// Docbook ID for this page.
Parameter DOCBOOKID;

Property docbookId As %String [ InitialExpression = {..#DOCBOOKID} ];

XData Style
{
}

/// Override.
ClientMethod showHelp() [ Language = javascript ]
{
}

/// Set the modified flag for the page.
ClientMethod setModified(flag) [ Language = javascript ]
{
}

/// Check if user really wants to exit if they have not saved changes
ClientMethod onunloadHandler() [ Language = javascript ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

Method %GetRootLink(Output pLink) As %Status
{
}

/// Show dialog to switch namespace
ClientMethod switchNamespace() As %String [ Language = javascript ]
{
}

}
