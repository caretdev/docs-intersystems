/// This class defines the set of scalar functions allowed within DeepSee queries.<br/>
Class %DeepSee.Query.scalarFunction Extends %RegisteredObject [ System = 3 ]
{

/// Test if <var>pFunc</var> is a scalar function.
/// Return -1 if function is not a scalar function, otherwise
/// return the number of arguments and (total number of) optional arguments (args:optargs) expected by the function.
ClassMethod %IsScalarFunction(pFunc As %String) As %String
{
}

/// Evaluate the given scalar function, <var>pFunc</var>, and return the result.
ClassMethod %EvaluateScalar(pFunc As %String, pValue1 As %String = "", pValue2 As %String = "", pValue3 As %String = "", pValue4 As %String = "") As %String
{
}

/// Square root scalar function.
ClassMethod SQRT(pValue As %Double) As %Double
{
}

/// Log base 10 scalar function.
ClassMethod LOG(pValue As %Double) As %Double
{
}

/// Power scalar function.
ClassMethod POWER(pValue As %Double, pArg As %Double) As %Double
{
}

/// Lookup a value in a term list.
ClassMethod LOOKUP(pTermList As %String, pKey As %String, pDefault As %String = "", pField As %String = "") As %String
{
}

/// IsNull scalar function: If value is "", return replacment,
ClassMethod ISNULL(pValue As %Double, pReplacement As %Double) As %Double
{
}

/// Round the given value to <var>pDigits</var> places.
ClassMethod ROUND(pValue As %Double, pDigits As %Integer = 0) As %Double
{
}

}
