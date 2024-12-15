/// The <b>%SmallInt</b> represents a small integer value.
/// This implements the SmallInt ODBC datatype
Class %Library.SmallInt Extends %Integer [ OdbcType = SMALLINT, System = 2 ]
{

/// The maximum allowed logical value for the data type.
Parameter MAXVAL As INTEGER = 32767;

/// The minimum allowed logical value for the data type.
Parameter MINVAL As INTEGER = -32768;

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "short";

/// Converts the SOAP encoded input decimal value into a %SmallInt value.
/// Returns "" for error.
ClassMethod XSDToLogical(%val As %String) As %SmallInt [ CodeMode = generator ]
{
}

/// Converts <var>%val</var> to a normalized value.
ClassMethod Normalize(%val As %RawString) As %Integer [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Tests if the logical value <var>%val</var>, which is an integer value, is valid.
/// The validation is based on the class parameter settings used
/// for the class attribute this data type is associated with.
/// In this case, <a href="#MAXVAL">MAXVAL</a> and <a href="#MINVAL">MINVAL</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

}
