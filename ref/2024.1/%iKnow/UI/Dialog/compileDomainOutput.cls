Class %iKnow.UI.Dialog.compileDomainOutput Extends %CSP.Page [ Deprecated, System = 4 ]
{

Parameter SECURITYRESOURCE = "%Development";

/// Set this to the correct domain.
Parameter DOMAIN = "%iKnow";

/// Event handler for <b>PAGE</b> event: this is invoked in order to
/// generate the content of a csp page.
ClassMethod OnPage() As %Status [ ServerOnly = 1 ]
{
}

}
