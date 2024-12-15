/// <p> This class is <b>DEPRECATED</b>. Applications should use either
/// the <class>%Double</class> datatype for cases where values should be in the IEEE
/// float ($Double) format, or <class>%Decimal</class> for cases where values should be in Decimal
/// ($Decimal) format.</p>
/// The <b>%Float</b> data type class represents a floating point number.
/// <p>The logical value of the <b>%Float</b> data type is a floating point value.
Class %Library.Float Extends %DataType [ ClientDataType = DOUBLE, OdbcType = DOUBLE, SqlCategory = DOUBLE, System = 2 ]
{

/// The format specification for the data type's display value.
/// <p>The value of <var>FORMAT</var> corresponds to the formatting option
/// of the <code>$FNUMBER</code> function, which is used to perform the formatting.
Parameter FORMAT;

/// The scale value (number of digits following the decimal point) for this data type.  This parameter only affects the display value which will be rounded to the specified number of decimal places.
Parameter SCALE As INTEGER;

/// The maximum allowed logical value for the data type.
Parameter MAXVAL;

/// The minimum allowed logical value for the data type.
Parameter MINVAL;

/// Used for enumerated (multiple-choice) attributes.
/// <var>VALUELIST</var> is either a null string ("") or a delimiter
/// separated list (where the delimiter is the first character) of logical values.
/// If a non-null value is present, then the attribute is restricted to values
/// in the list, and the validation code simply checks to see if the value is in the list.
Parameter VALUELIST;

/// Used for enumerated (multiple-choice) attributes.
/// Used in conjunction with the <a href="#VALUELIST">VALUELIST</a> parameter for enumerated
/// (multiple-choice) attributes. <var>DISPLAYLIST</var>, if not null,
/// represents the display values for the attribute corresponding with
/// the logical values listed in <var>VALUELIST</var>.
/// <p>The display values are returned by the <a href="#LogicalToDisplay">LogicalToDisplay</a> method.
Parameter DISPLAYLIST;

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "double";

Parameter JSONTYPE = "number";

/// Converts the SOAP encoded input decimal value into a logical value.
/// Returns "" for error.
ClassMethod XSDToLogical(%val As %String) As %Float [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the Objectscript value to the JSON number value.
ClassMethod LogicalToJSON(%val As %Float) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the input value <var>%val</var>, which is a string representing a floating point value,
/// into a logical floating point value.
/// <p>Returns the logical floating point value of the input string <var>%val</var>.
ClassMethod DisplayToLogical(%val As %String) As %Float [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts <var>%val</var> to a normalized value.
ClassMethod Normalize(%val As %RawString) As %Float [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Tests if the logical value <var>%val</var>, which is a floating point value, is valid.
/// The validation is based on the class parameter settings used for the class
/// attribute this data type is associated with.
/// In this case, <a href="#MAXVAL">MAXVAL</a> and <a href="#MINVAL">MINVAL</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which is in logical floating point format, into a display string.
/// The formatting is based on the value of the <a href="#FORMAT">FORMAT</a> parameter.
/// <p>Returns the formatted value of <var>%val</var>.
ClassMethod LogicalToDisplay(%val As %Float) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

}
