/// Java Gateway Wizard
Class %ZEN.Template.ObjectGatewayWizard.DotNetDone Extends %ZEN.Template.cspTemplate [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter PAGENAME = ".NET Gateway Wizard Result";

/// Event handler for <b>PAGE</b> event: this is invoked in order to
/// generate the content of a csp page.
ClassMethod OnPage() As %Status [ ServerOnly = 1 ]
{
}

ClassMethod ImportClasses(server, port, name, paths, elist)
{
}

}
