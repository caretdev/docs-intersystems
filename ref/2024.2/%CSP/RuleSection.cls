/// The <b>%CSP.RuleSection</b> class represents the csr:section tag within the DOM model for a CSR page.
Class %CSP.RuleSection Extends %CSP.RuleElement [ Not ProcedureBlock, System = 3 ]
{

/// Writes code into the routine builder object that will
/// put the child lines in a new section.
Method RenderStartTag() As %Status
{
}

/// Writes code into the routine builder object that will
/// resume sending output to the previous section.
Method RenderEndTag() As %Status
{
}

}
