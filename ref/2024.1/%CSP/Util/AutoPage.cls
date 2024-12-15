/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>A specialized CSP page that automatically displays a page based on
/// information provided by a subclass.
Class %CSP.Util.AutoPage Extends %CSP.Page [ ServerOnly = 1, System = 4 ]
{

/// Default charset
Parameter CHARSET = "UTF-8";

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Name of the external style sheet file
Parameter STYLESHEET = "csputils.css";

/// SMP favorite icon.
Parameter FAVORITEICON = "portal/ISC_IRIS_icon.ico";

/// Allow pages to have iframes by not setting x-frame-options: same origin.
/// Set default for Management Portal as iframes are not allowed.
Parameter IFRAMEALLOWED As BOOLEAN = 0;

/// Name of this page
Parameter PAGENAME;

/// Name of the parent page (used for the locator bar)
Parameter PARENTPAGE;

/// If true, this page uses frames
Parameter USEFRAMES = 0;

/// If true, this page changes namespace
Parameter USENAMESPACE = 0;

/// If true, this page uses hyper-events (#call)
Parameter HYPEREVENTS = 1;

/// If true, this page will automatically logout after a period of time
Parameter AUTOLOGOUT = 1;

ClassMethod OnPreHTTP() As %Boolean
{
}

/// Create the page instance object.
ClassMethod CreatePageInstance(ByRef pID As %String) As PageInstance
{
}

/// Get the title pane info object
ClassMethod GetTitlePane(pInstance As PageInstance) As Pane
{
}

/// Get the navigator pane info object
ClassMethod GetNavigatorPane(pInstance As PageInstance) As Pane
{
}

/// Get the detail pane info object
ClassMethod GetDetailPane(pInstance As PageInstance) As Pane
{
}

/// Get the info pane info object
ClassMethod GetInfoPane(pInstance As PageInstance) As Pane
{
}

ClassMethod OnPage() As %Status
{
}

/// Draw HTML for this CSP page
ClassMethod DrawHTML() As %Status
{
}

/// Write JavaScript to automatically logout out this page
ClassMethod DrawAutoLogout()
{
}

/// Write JavaScript for displaying documentation. (Called directly from CSPX.AutoPageCSP.)
ClassMethod DrawShowDoc()
{
}

/// Draw the HEAD section for this page (or frame)
ClassMethod DrawHEAD(pInstance As PageInstance, pFrame As %String = "")
{
}

/// Draw the BODY section for this page
/// This consists of a number of "panes"
ClassMethod DrawBODY(pInstance As PageInstance)
{
}

/// Draw frameset for this page (if appropriate)
ClassMethod DrawFrameSet(pInstance As PageInstance) As %Status
{
}

/// Draw the BODY section for a specific pane as a frame
ClassMethod DrawFrameBODY(pInstance As PageInstance, pFrame As %String)
{
}

/// Write JavaScript to manage size of frames
ClassMethod DrawFrameLayout()
{
}

/// Get the list of items for the locator bar as well as the page address.
ClassMethod GetLocator(pTitlePane As TitlePane, ByRef pAddress As %String)
{
}

/// For a given CSP page name, return the actual class name;
/// This method will normalize page names that do not have an application
/// in their URL.
ClassMethod GetCSPClassName(pURL As %String) As %String [ CodeMode = expression ]
{
}

/// Go to specified namespace.
/// Use "" to find a default namespace.
/// Return namespace we actually tried to go to.
ClassMethod ChangeNamespace(ns As %String, mode As %String = "") As %String
{
}

/// This utility method actually changes namespaces.
/// [Previously private]
ClassMethod SetNamespace(ns As %String) As %Status
{
}

/// Return localized version of PageName
ClassMethod GetPageName() As %String [ CodeMode = objectgenerator ]
{
}

/// Called by CSP Action pages to draw the page header
ClassMethod DrawTitle(tTitle As %String) As %Status
{
}

ClassMethod RegisterRecent(tTitle As %String) [ Language = objectscript ]
{
}

}
