/// Template for Management Portal.
Class %CSP.Portal.Template Extends (%ZEN.Portal.standardPage, %ZEN.Portal.Utils) [ Abstract, System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.Portal.Application";

/// Displayed name of this page.
Parameter PAGENAME = "Template for Management Portal";

/// Allow pages to auto-switch namespaces if $NAMESPACE is specified
Parameter AUTONS As BOOLEAN = 1;

/// This parameter defines the parent page for this page.<br/>
/// If the name ends in .csp, then the parent is assumed to be an autopage-enabled CSP page.<br/>
/// If the name ends in .cls, then the parent is assumed to be a Zen page. <br/>
/// This is used to automate the construction of the locator bar for this page and to
/// build the index between portal pages and documentation.<br/>
/// The %GetLocatorInfo method is used to get this information.
Parameter PARENTPAGE As STRING;

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// Indicates whether the page is read only due to EMS control.
Property ISREADONLY As %Boolean [ InitialExpression = 0 ];

/// Text shown on page or browser tab header
Property StdTitle As %ZEN.Datatype.string [ InitialExpression = {..#PAGENAME} ];

/// Text shown between locator bar and details pane (form or table)
Property lblTitle As %ZEN.Datatype.string [ InitialExpression = {..#PAGENAME} ];

/// The text that is shown in TitlePane above the license
Property LocatorHeader As %ZEN.Datatype.caption;

/// The help address that links to the "Help" (next to the "Logout" link) documentation
Property HelpAddress As %ZEN.Datatype.string;

/// Parent URL that Cancel and Save should return to
Property ParentURL As %String [ InitialExpression = {..Link($ZCVT(..#PARENTPAGE,"O","URL"))} ];

/// home value to return to Home page to.
Property home As %ZEN.Datatype.string(ZENURL = "home");

XData CSS3Style
{
}

XData Style
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

ClientMethod showDocumentation(topic, anchor, url) [ Language = javascript ]
{
}

/// Return an array of locator info for this page. This takes the form:<br/>
/// pInfo(n) = $LB(name,url)
ClassMethod %GetLocatorInfo(Output pInfo) [ CodeMode = objectgenerator, Internal ]
{
}

/// Utility method. Add the locator links defined by the LOCATORINFO parameter
/// to the given locator bar.<br>
/// pLocalize is an array from calling DocLocalize for a page. (optional)<br>
/// pParam contains extra parameters for the last or current page link. (optional)
/// pIsNew is the flag indicating this page is for "Add" rather than "Edit". If it's true then we use a different locator text if defined.
Method %AddLocatorLinks(pLocator As %ZEN.Component.locatorBar, pLocalize As %String, pParam As %String = "", pIsNew As %Boolean = 0)
{
}

ClassMethod CheckAllBlanks(string) As %Boolean [ ZenMethod ]
{
}

/// Used to return "home" parameter for building return home links in sub-classes.
Method %GetHomeParam() As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
/// Subclasses with extra layers of locator links or other than "Configuration" please override.
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the product name for the page.Called from none-Zen classes in SMP.
ClassMethod %GetProductName() As %String
{
}

/// This method is used by SMP to return home page. Set home to %session if not null for later use.
ClassMethod %GetHomePage() As %String
{
}

/// This method allows us to get the home page URL from JavaScript.
ClassMethod GetHomePage() As %String [ ZenMethod ]
{
}

/// Recent item is only registered at the Home level.
ClassMethod RegisterRecent(pTitle)
{
}

/// Return tmsg. 1 means success. Otherwise error message in HTML.
ClassMethod EvalResult(pSC) As %String
{
}

}
