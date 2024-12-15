/// Base Zen application class for portal pages implemented using Zen.
Class %ZEN.Portal.Application Extends %ZEN.application [ Deprecated, System = 4 ]
{

/// This is the name of this application.
Parameter APPLICATIONNAME = "InterSystems Portal";

Parameter DOMAIN = "%Utility";

/// This is the URL of the main starting page of this application.
Parameter HOMEPAGE = "/csp/sys/%25CSP.Portal.Home.zen";

/// This Style block contains application-wide CSS style definitions for css3
XData CSS3Style
{
}

/// This Style block contains application-wide CSS style definitions.
XData Style
{
}

/// Define any context links for the context menu in the header
/// piece 1: caption (if left null, a menu seperator will be built)
/// piece 2: URL (this is required entry)
/// piece 3: JS function name (if defined is a javascript to call such as "zenPage.save()")
/// Note that all security processing is performed in the page's CheckContextLinks() method.
ClassMethod GetContextLinks(Output pLinks) As %Status
{
}

/// Provide any quick links for pages.
ClassMethod GetQuickLinks(Output pLinks) As %Status
{
}

/// Draw the HTML contents of the title area for portal pages.
/// pProduct may contain specific product logo if passed in as the second piece.
/// pContextMenu is passed in for CSP pages only!
ClassMethod %DrawTitleHTML(pProduct As %String, pTitle As %String, ByRef pSmallMenu, ByRef pLocatorMenu, ByRef pContextMenu) As %Status
{
}

/// This method draws the server/namespace/user/license/instance information inside the title pane.
/// pProduct may contain specific server name if passed in as the third piece (for HS debug purposes).
ClassMethod %DrawTitleServerHTML(pProduct As %String, pTitle As %String, ByRef pSmallMenu, ByRef pLocatorMenu) As %Status
{
}

ClassMethod DrawServerFlag()
{
}

/// Draw username with (or without) link to change password. The link is built only for the Home page.
ClassMethod DrawUsername()
{
}

ClassMethod DrawEscalationRole()
{
}

/// Draw small menu at the top of the title area.
ClassMethod %DrawSmallMenu(ByRef pMenu As %String, ByRef pLocatorMenu As %String)
{
}

/// Draw bread-crumb links
ClassMethod %DrawLocatorMenu(ByRef pLocatorMenu As %String)
{
}

/// Get the product name for the page. May be called from none-Zen classes in SMP.
ClassMethod %OnGetProductName() As %String
{
}

/// Checks to see if Interoperability is enabled in any accessible namespace
ClassMethod EnsembleLoaded() As %Integer [ Internal ]
{
}

/// Checks to see if HealthShare is loaded in any accessible namespace
ClassMethod HealthShareLoaded() As %Integer [ Internal ]
{
}

/// Determine if the "Switch" link for namespace can be shown. Return 1 if yes, and 0 if not.
ClassMethod CanShowSwitch(PageName) As %Boolean
{
}

}
