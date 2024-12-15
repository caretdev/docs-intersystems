Class %iKnow.Model.node Extends %iKnow.Model.abstractNode [ Abstract, Deprecated, System = 3 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/iknow";

Parameter XMLINCLUDEINGROUP = 1;

Parameter XMLIGNOREINVALIDATTRIBUTE = 0;

/// Utility method to check if a particular attribute value is actually an expression and should
/// not necessarily be validated at compile-time (fe, configuration name)
ClassMethod %IsExpression(pString As %String) As %Boolean [ Internal ]
{
}

/// Some basic XML formatting
/// Note: this expects nicely formatted attribute content and no surprises in CDATA !
ClassMethod FormatXML(pString As %String) As %String [ Internal ]
{
}

}
