/// Error page for the User Portal.<br/>
Class %DeepSee.UserPortal.ErrorPage Extends %DeepSee.UserPortal.standardPage [ System = 4 ]
{

/// Name of this page.
Parameter PAGENAME = "Error Page";

/// URL of home page (used in links).
Parameter HOMEPAGE = "_DeepSee.UserPortal.Home.zen";

Property errorName As %String(ZENURL = "ERROR");

XData Style
{
}

/// Contents of this page:
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML defines the menu for this page.
XData menuPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Draw contents of error html component.
Method DrawError(pSeed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
