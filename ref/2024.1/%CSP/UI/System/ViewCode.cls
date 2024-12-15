/// Display routine code.
Class %CSP.UI.System.ViewCode Extends %CSP.Page [ System = 4 ]
{

/// Set this to the correct domain.
Parameter DOMAIN = "%Utility";

/// Ensure user has %Development:USE.
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Event handler for <b>PAGE</b> event: this is invoked in order to
/// generate the content of a csp page.
ClassMethod OnPage() As %Status [ ServerOnly = 1 ]
{
}

/// Display Printer link
ClassMethod RenderPrinter() [ Private ]
{
}

}
