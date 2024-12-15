/// This page displays background tasks without the main header.
Class %CSP.UI.Portal.BackgroundTasks Extends (%ZEN.Component.page, %ZEN.Portal.abstractRefreshable) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

/// Displayed name of this page.
Parameter PAGENAME = "BackgroundTasks";

/// Domain used for localization.
Parameter DOMAIN;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this page.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
/// Start the timer so we can refresh the table if AutoRefresh is enabled.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod timeout(timer) [ Language = javascript ]
{
}

ClientMethod doRefresh() [ Language = javascript ]
{
}

/// Provide HTML for standard template html title box.
Method %DrawTitle(pSeed As %String) As %Status
{
}

}
