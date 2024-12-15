/// This class displays a printer friendly version of the class definition.<br/>
/// User may click the "print" link to choose printer, etc.<br/>
/// Other links are disabled except the section labels, such as "Summary", where user may click
/// to collapse the label if they do not wish to print that section.
Class %CSP.Documatic.PrintClass Extends %CSP.Documatic [ System = 4 ]
{

Parameter CSPURL = "/csp/documatic/%CSP.Documatic.PrintClass.cls";

Parameter URL = "%25CSP.Documatic.PrintClass.cls";

/// Event handler for <b>PAGE</b> event: this is invoked in order to
/// display a csp page. This method is called to render a class document to a browser.
ClassMethod OnPage() As %Status
{
}

/// Renders the style sheet used by the doc viewer.
ClassMethod ServeStyleSheet() As %Status [ Private ]
{
}

ClassMethod RenderBanner(title As %String, %library As %String, class As %String) As %Status [ Private ]
{
}

/// Draw username or server name depend on setup.
ClassMethod DrawUsername()
{
}

/// Display Printer link
ClassMethod RenderPrinter() [ Private ]
{
}

}
