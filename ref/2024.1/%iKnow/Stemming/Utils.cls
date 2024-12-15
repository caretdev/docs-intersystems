/// This class contains utility methods to manage stemming disambiguation rules.
Class %iKnow.Stemming.Utils [ Deprecated, System = 4 ]
{

/// Adds an exception to override stemming behavior for a specific language.
/// The rule applies when stemming tokens that are exactly equal to <var>pValue</var> in entities
/// with role = <var>pRole</var>. If <var>pEntity</var> is supplied (advanced), the entity being stemmed should
/// should contain this string before the rule will be enforced.
ClassMethod AddException(pLanguage As %String, pValue As %String, pStem As %String, pRole As %Integer = {$$$ENTTYPECONCEPT}, pEntity As %String = "") As %Status
{
}

/// Loads default stemming disambiguation rules from the KB files
ClassMethod LoadDefaultRulesCSV(pPath As %String) As %Status [ Internal ]
{
}

}
