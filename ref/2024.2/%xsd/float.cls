/// This data type represents a floating point number.
/// Internally, it is stored as a floating point value.
Class %xsd.float Extends %Float [ Not ProcedureBlock, System = 2 ]
{

/// Declares the XSD type used when projecting XML schemas.
Parameter XSDTYPE = "float";

Parameter JSONTYPE = "double";

/// Converts the SOAP encoded input decimal value into a logical value.
/// Also supports the XML values of -0, INF, -INF and NaN which are stored as strings.
/// Returns "" for error.
ClassMethod XSDToLogical(%val As %String) As %Float [ CodeMode = generator ]
{
}

/// Tests if the logical value <var>%val</var>, which is a floating point value, is valid.
/// The validation is based on the class parameter settings used for the class
/// attribute this data type is associated with.
/// In this case, <a href="#MAXVAL">MAXVAL</a> and <a href="#MINVAL">MINVAL</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, GenerateAfter = IsValidDT ]
{
}

}
