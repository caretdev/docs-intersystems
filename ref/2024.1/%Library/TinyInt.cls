/// The <b>%TinyInt</b> represents a tiny integer value.
/// <p>This is identical to the <CLASS>%Integer</CLASS> data type with the
/// exception that it has odbctype of TINYINT, a default MAXVAL parameter
/// value of 127, and a default MINVAL parameter value of -128.
Class %Library.TinyInt Extends %Integer [ OdbcType = TINYINT, System = 2 ]
{

/// The maximum allowed logical value for the data type.
Parameter MAXVAL As INTEGER = 127;

/// The minimum allowed logical value for the data type.
Parameter MINVAL As INTEGER = -128;

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "byte";

/// Converts the SOAP encoded input decimal value into a %TinyInt value.
/// Returns "" for error.
ClassMethod XSDToLogical(%val As %String) As %TinyInt [ CodeMode = generator ]
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
