/// This is the Zen version of the About page for System Management Portal.
Class %CSP.UI.Portal.About Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Class name of application this page belongs to.
/// Parameter APPLICATION = "%CSP.UI.Portal.Application";
/// Displayed name of this page.
Parameter PAGENAME = "About This System";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

/// This Style block contains page-specific CSS style definitions.
XData CSS3Style
{
}

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
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

ClassMethod DrawSysInfo(pSeed As %String) As %Status
{
}

/// Returns last InterSystems IRIS start time.
ClassMethod TimeSince() As %String
{
}

/// User clicked to change preferred language.
ClientMethod callChangeLang(preflang As %String) [ Language = javascript ]
{
}

/// Change preferred language for this session and page
ClassMethod ChangeLang(preflang As %String) As %Boolean [ ZenMethod ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

Method %OnGetSmallMenu(Output pMenu)
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

}
