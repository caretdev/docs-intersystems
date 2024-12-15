/// The <b>%CSP.RuleDocument</b> class represents a CSR rule.
Class %CSP.RuleDocument Extends %CSP.Document [ System = 3 ]
{

/// Setup CSR file for compiling.  No %CSP.PageBuilder is yet
/// defined, so no output will be written to any CSR class.
Method RenderStartTag() As %Status
{
}

/// Compile of CSR file complete.
/// Check for duplicate rules.
Method RenderEndTag() As %Status
{
}

}
