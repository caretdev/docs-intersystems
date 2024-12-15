/// Wrapper class to correctly manage popups requested by Source Control hooks.
Class %CSP.Portal.SourceControl.Dialog.Manager Extends %CSP.Portal.Template [ System = 4 ]
{

Parameter PAGENAME = "Source Control Dialog";

Property targetURL As %String(MAXLEN = "", ZENURL = "TARGET");

/// Flag to indicate whether the IE=Edge meta tag should be written out to force
/// Internet Explorer to use its most recent rendering engine. By default, the portal
/// does write out this flag, but users can disable the flag by implementing the
/// GetPortalPageOptions() callback defined in <class>%Studio.SourceControl.Base</class>
/// to specify that IE Compatibility should be permitted.
Property %UseIEEdge As %Boolean [ InitialExpression = 1, Internal, ServerOnly = 1 ];

/// Property to indicate whether a specific CSS Level should be used for the page.
/// By default, we will attempt to use CSS Level 3 if we can detect the browser
/// supports HTML 5. The value can be modified by implementing the
/// GetPortalPageOptions() callback defined in <class>%Studio.SourceControl.Base</class>.
Property %CSSLevel As %String [ ServerOnly = 1 ];

XData Style
{
}

/// Contents of this page:
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Code to resize the iframe based on the window size and check whether a title
ClientMethod initializeFrame(newSrc) [ Language = javascript ]
{
}

/// Point the iframe at the URL specified in targetURL.
Method %OnAfterCreatePage() As %Status
{
}

/// Adds a JS Interval which executes the supplied function at the supplied interval.
ClientMethod addCompletionCheck(checkFunc, time) [ Language = javascript ]
{
}

/// Remove any intervals created while waiting for source control frames to load.
/// Primarily used to check on the status of the popup.
ClientMethod clearCompletionChecks() [ Language = javascript ]
{
}

/// Check whether the contents of the iframe have been completely loaded,
/// and close the window if it's a Studio template, otherwise
/// add the source control specific onbeforeunload event handling.
ClientMethod checkCompletion() [ Language = javascript ]
{
}

/// Update the title of the main window based on the title of the inner iframe.
ClientMethod updateTitle() [ Language = javascript ]
{
}

/// If the source control hooks a specific CSS level is specified in <property>%CSSLevel</property>,
/// return the value, otherwise use the default for the portal.
Method %OnDetermineCSSLevel() As %Integer
{
}

Method %OnDrawHTMLMeta() As %Status
{
}

ClientMethod onunloadHandler() [ Language = javascript ]
{
}

Method CheckExtends(pCls As %String, pSuper As %String) As %Boolean [ ZenMethod ]
{
}

}
