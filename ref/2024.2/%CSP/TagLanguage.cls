/// Implement csp:text tag using a common method,
/// GetText that may be used to implement other
/// language enabled tags.
Class %CSP.TagLanguage Extends %CSP.Rule [ System = 3 ]
{

/// Call ..GetText to implement the csp:text tag.
Method RenderStartTag() As %Status
{
}

/// No end tag written.
Method RenderEndTag() As %Status
{
}

/// Return the expression that will get localized text based on
/// the textid, domain and language attributes.  GetText should be
/// called from within a rule.<p>
/// The optional Language attribute is an RFC 1766 format language name
/// for looking up this text.  %response.Language is used if Language is not specified.
/// The Domain attribute is the optional application domain for looking up this text.
/// %response.Domain is used if Domain is not specified.
/// The required TextId attribute is the id that idenfies the text string.
/// Attributes ARGn, where n is an integer, are substituted for %n in the message text.
ClassMethod GetText(tag As %CSP.Rule, default As %String = "") As %String
{
}

/// FormatMessage wrapper for use in CSP page.
ClassMethod FormatMessage(language As %String, domain As %String, id As %String, default As %String, args...) As %String [ Final ]
{
}

}
