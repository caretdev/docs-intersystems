/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Base class used by CSP pages that work within the AutoPage framework.
Class %CSP.UI.System.AutoPageCSP Extends %CSP.Page [ Abstract, System = 3 ]
{

/// Default Charset
Parameter CHARSET = "UTF-8";

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Name of the page to use for logins
Parameter LOGINPAGE = "%CSP.Login.cls";

/// Name of this page
Parameter PAGENAME;

/// Name of the parent page (used for the locator bar)
Parameter PARENTPAGE;

/// Write out the title pane for this page
ClassMethod WriteTitlePane(pTitle As %String)
{
}

ClassMethod OnPreHTTP() As %Boolean
{
}

/// Get the list of items for the locator bar.
ClassMethod GetLocator(pTitlePane As %CSP.Util.TitlePane, ByRef pAddress As %String, ByRef pBaseURL As %String = {%request.URL}) As %String
{
}

/// Return localized version of PageName
ClassMethod GetPageName() As %String [ CodeMode = objectgenerator ]
{
}

}
