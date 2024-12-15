/// Base class for all DeepSee UI pages.
/// This is mainly for the purpose of setting common parameters for DeepSee.
Class %DeepSee.UI.standardPage Extends (%ZEN.Portal.standardPage, %ZEN.Portal.Utils) [ Abstract, System = 4 ]
{

Parameter JSINCLUDES = "zenCSLM.js,zenESVG.js,DeepSee.js";

Parameter DOMAIN = "%DeepSee";

/// All Analytics pages require %DeepSee_Portal USE.
Parameter RESOURCE = "%DeepSee_Portal,%DeepSee_PortalEdit";

/// favorite icon.
Parameter FAVORITEICON = "portal/ISC_IRIS_icon.ico";

/// Docbook ID for this page.
Parameter DOCBOOKID;

Property docbookId As %String [ InitialExpression = {..#DOCBOOKID} ];

Property metaData As %String [ InitialExpression = {..%GetMetaData()} ];

XData Style
{
}

/// Return a serialized JSON array which contains information the client needs to send REST calls to the server
ClassMethod %GetMetaData() As %String [ Internal ]
{
}

/// Clientside fetch of information the client needs to send REST calls to the server, returned as an array.
ClientMethod getPageMeta() [ Language = javascript ]
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

ClientMethod reloadPage() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
