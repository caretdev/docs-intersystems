/// Base Zen application class for the DeepSee UserPortal.
/// This is used by the HomePage, and Dashboard viewer pages.
Class %DeepSee.UserPortal.Application Extends (%ZEN.application, %CSP.Portal.SourceControl.Base) [ System = 4 ]
{

/// This is the name of this application.
Parameter APPLICATIONNAME = "DeepSee Portal";

/// This is the default company name displayed within this application.
Parameter COMPANYNAME = "InterSystems";

Parameter DOMAIN = "%DeepSee";

/// This is the URL of the main starting page of this application.
Parameter HOMEPAGE = "_DeepSee.UserPortal.Home.zen";

/// This Style block contains application-wide CSS 3 style definitions.
XData Style
{
}

/// Provide any quick links for pages.
ClassMethod GetQuickLinks(Output pLinks) As %Status
{
}

/// Draw the HTML contents of the title area for portal pages.
Method %DrawTitleHTML(pTitle As %String, ByRef pSmallMenu) As %Status
{
}

/// Get information about this server, return it via the array <var>pInfo</var>
Method %GetServerInfo(Output pInfo)
{
}

/// Draw small menu at the top of the title area.
Method %DrawSmallMenu(ByRef pMenu As %String)
{
}

/// Get the company name for the page.
Method %OnGetCompanyName() As %String
{
}

}
