/// This class displays background task info progress
Class %CSP.UI.Portal.Background.TaskInfoOutput Extends %CSP.Page [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/%CSP.UI.Portal.Background.TaskInfoOutput.zen";

/// Set this to the correct domain.
Parameter DOMAIN = "%Utility";

/// Ensure user has %Development:USE
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Event handler for <b>PAGE</b> event: this is invoked in order to
/// generate the content of a csp page.
ClassMethod OnPage() As %Status [ ServerOnly = 1 ]
{
}

ClassMethod Exit()
{
}

ClassMethod DrawHEAD()
{
}

ClassMethod GUIMonitor(pObj)
{
}

}
