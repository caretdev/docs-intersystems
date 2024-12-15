/// This datatype represents a boolean value.
Class %ZEN.Datatype.boolean Extends datatype [ ClientDataType = BOOLEAN, Deprecated, System = 3 ]
{

Parameter XMLPROJECTION = "attribute";

Parameter MAXLEN;

/// Converts the SOAP encoded input value, which is true, false 1 or 0,
/// into a %Boolean value.
ClassMethod XSDToLogical(%val As %String) As %String [ CodeMode = generator ]
{
}

/// Converts the %Boolean value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %String) As %String [ CodeMode = generator ]
{
}

/// Converts the input value <var>%val</var>, which is a string representing
/// a boolean value, into a boolean value.
/// <p>Returns the boolean value of the input string <var>%val</var>.
ClassMethod DisplayToLogical(%val As %String = "") As %String [ CodeMode = expression ]
{
}

}
