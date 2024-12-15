/// The <b>%CSP.RuleAction</b> class represents the csr:action tag within the DOM model for a CSR page.
Class %CSP.RuleAction Extends %CSP.RuleElement [ Not ProcedureBlock, System = 3 ]
{

/// Writes code into the routine builder object that will prepare
/// the children of the csr:action tag.
Method RenderStartTag() As %Status
{
}

/// Default rendering of the end tag is a no operation
Method RenderEndTag() As %Status
{
}

}
