/// Zen application class for pages within the DeepSee portal.
///
Class %DeepSee.UI.Application Extends %ZEN.Portal.Application [ System = 4 ]
{

/// This is the name of this application.
Parameter APPLICATIONNAME = "DeepSee";

/// Set this to the correct domain.
Parameter DOMAIN = "%DeepSee";

/// This is the URL of the main starting page of this application.
Parameter HOMEPAGE = "_DeepSee.UI.Home.zen";

/// This Style block contains application-wide CSS 3 style definitions.
XData CSS3Style
{
}

/// This Style block contains application-wide CSS style definitions.
XData Style
{
}

/// Provide any quick links for pages.
ClassMethod GetQuickLinks(Output pLinks) As %Status
{
}

/// Provide finder contents for the DeepSee pages. Called from %CSP.Portal.Home.
ClassMethod GetDeepSeeArray(Output pData) As %Status
{
}

}
