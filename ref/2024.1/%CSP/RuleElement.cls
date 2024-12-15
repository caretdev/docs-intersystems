/// The <b>%CSP.RuleElement</b> class is the super class of all classes that represent
/// elements within the DOM model for a CSR page.
Class %CSP.RuleElement Extends %CSP.Rule [ System = 3 ]
{

/// Trim white space from rule text.
Method TrimChildren() [ Private ]
{
}

/// Get the value of the HTML attribute <var>name</var> for this element.
/// For rules do not resolve ##( )## and ##' '##.
Method GetAttribute(name As %String, default As %String = "") As %String
{
}

}
