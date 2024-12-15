/// The <b>%CSP.RuleRule</b> class represents the csr:rule tag within the DOM model for a CSR page.
Class %CSP.RuleRule Extends %CSP.Document [ System = 3 ]
{

/// True indicates that a class must be created for this rule.
Property CreateClass As %Boolean [ Internal ];

/// Implement DeleteRule for a rule file.
ClassMethod OnMatch(rule As %CSP.Rule) As %Status
{
}

/// Start compiling a class for this rule.
Method RenderStartTag() As %Status
{
}

/// Finish compiling a class for this rule.
Method RenderEndTag() As %Status
{
}

/// Add method for section or part of a section
ClassMethod AddSectionMethod(handle As %String, name As %String, return As %String = "%Status", args As %String = "", language As %String = "") As %Status [ Internal ]
{
}

}
