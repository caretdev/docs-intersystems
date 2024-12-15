/// The <b>%BigInt</b> represents a 64 bit integer value.
/// <p>This is identical to the <CLASS>%Integer</CLASS> data type with the
/// exception that it has odbctype of BIGINT.
Class %Library.BigInt Extends %Integer [ ClientDataType = BIGINT, OdbcType = BIGINT, System = 2 ]
{

/// The maximum allowed logical value for the data type.
Parameter MAXVAL As INTEGER = 9223372036854775807;

/// The minimum allowed logical value for the data type.
Parameter MINVAL As INTEGER = -9223372036854775808;

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "long";

/// Converts the SOAP encoded input decimal value into a %BiglInt value.
/// Returns "" for error.
ClassMethod XSDToLogical(%val As %String) As %BigInt [ CodeMode = generator ]
{
}

/// Converts <var>%val</var> to a normalized value.
ClassMethod Normalize(%val As %RawString) As %Integer [ ServerOnly = 1 ]
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
