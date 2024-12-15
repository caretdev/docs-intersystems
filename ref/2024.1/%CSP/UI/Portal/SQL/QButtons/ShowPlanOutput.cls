/// This pages shows the SQL ShowPlan output when the process is run in the background.
Class %CSP.UI.Portal.SQL.QButtons.ShowPlanOutput Extends %CSP.Page [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.QButtons.ShowPlanOutput.zen";

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

ClassMethod DrawHEAD()
{
}

}
