/// This pages shows the integrity output of the System Management Portal.
Class %CSP.UI.Portal.Dialog.IntegOutput Extends %CSP.Page [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Dialog.IntegOutput.zen";

/// Set this to the correct domain.
Parameter DOMAIN = "%Utility";

Parameter PRIVATE = 1;

/// Ensure user has %Admin_Operate:USE
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Event handler for <b>PAGE</b> event: this is invoked in order to
/// generate the content of a csp page.
ClassMethod OnPage() As %Status [ ServerOnly = 1 ]
{
}

ClassMethod DrawError(err)
{
}

}
