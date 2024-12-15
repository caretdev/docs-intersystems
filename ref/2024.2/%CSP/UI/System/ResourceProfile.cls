/// Display resource profile.
Class %CSP.UI.System.ResourceProfile Extends %CSP.Page [ System = 4 ]
{

/// Set this to the correct domain.
Parameter DOMAIN = "%Utility";

/// Ensure user has %Admin_Secure:USE.
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Event handler for <b>PAGE</b> event: this is invoked in order to
/// generate the content of a csp page.
ClassMethod OnPage() As %Status [ ServerOnly = 1 ]
{
}

ClassMethod DrawError(status)
{
}

ClassMethod DrawStyle()
{
}

/// Display Printer link
ClassMethod RenderPrinter() [ Private ]
{
}

}
