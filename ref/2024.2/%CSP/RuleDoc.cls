/// CSP page that provides documentation viewer for CSP Rules.
///
/// It expects the following input:
/// <table cols="2">
/// <tr><td>RULE</td><td>Name of rule to display.</td></tr>
/// </table>
Class %CSP.RuleDoc Extends %CSP.Page [ Not ProcedureBlock, System = 3 ]
{

/// Override ENCODED from %CSP.Page
Parameter ENCODED = 2;

/// Override PRIVATE from %CSP.Page
Parameter PRIVATE = 1;

/// OnPage method to display CSP Rules
ClassMethod OnPage() As %Status
{
}

/// Display the HTML Style Sheet for the lookup page.
/// <P>This has to be called within the HEAD section of the document.
ClassMethod ShowStyleSheet() [ Internal, Private ]
{
}

/// Display HTML description of rule <var>rule</var>.
ClassMethod ShowRule(rule As %String, family As %String = "csp") [ Internal, Private ]
{
}

/// Convert description to formatted HTML and write it out.
ClassMethod ShowDescription(text As %String) [ Internal ]
{
}

/// Convert description to formatted HTML and return the string.
///  Also used by rulemgr.csp.
ClassMethod GetDescription(text As %String) As %String [ Internal ]
{
}

}
