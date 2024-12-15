/// Java Gateway Wizard
Class %ZEN.Template.ObjectGatewayWizard.JavaDone Extends %ZEN.Template.cspTemplate [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter PAGENAME = "Java Gateway Wizard Result";

/// Event handler for <b>PAGE</b> event: this is invoked in order to
/// generate the content of a csp page.
ClassMethod OnPage() As %Status [ ServerOnly = 1 ]
{
}

/// Draw HTML for the page title
ClassMethod DrawTitle(pSeed As %String) As %Status
{
}

ClassMethod ImportClasses(server, port, name, type, paths, elist)
{
}

}
