/// The <b>%Currency</b> data type class represents a currency value.
/// <p><b>%Currency</b> is essentially the same as the <CLASS>%Numeric</CLASS> data type with
/// <b>clientdatatype</b> of CURRENCY and a fixed SCALE of 4.
/// It is a legacy type that is defined only for the
/// purpose of moving existing applications from Sybase and SQL Server.
Class %Library.Currency Extends %DataType [ ClientDataType = CURRENCY, OdbcType = NUMERIC, SqlCategory = NUMERIC, System = 2 ]
{

/// The format specification for the data type's display value.
/// <p>The value of <var>FORMAT</var> corresponds to the formatting option
/// of the <code>$FNUMBER</code> function, which is used to perform the formatting.
Parameter FORMAT;

/// The maximum allowed logical value for the data type.
Parameter MAXVAL;

/// The minimum allowed logical value for the data type.
Parameter MINVAL;

/// The scale value (number of digits following the decimal point) for this data type.
/// The logical value will be rounded to the specified number of decimal places.
Parameter SCALE As INTEGER [ Final, Internal ] = 4;

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
Parameter XSDTYPE = "decimal";

Parameter JSONTYPE = "number";

/// Converts the SOAP encoded input decimal value into a %Currency value.
/// Returns "" for error.
ClassMethod XSDToLogical(%val As %String) As %Currency [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the Objectscript value to the JSON number value.
ClassMethod LogicalToJSON(%val As %Double) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the input value <var>%val</var>, which is a string representing
/// a currency value, into a logical currency value.
/// <p>Returns the value of the input string <var>%val</var> as a currency (fixed point number).
ClassMethod DisplayToLogical(%val As %String) As %Currency [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts <var>%val</var> to a normalized value.
ClassMethod Normalize(%val As %RawString) As %Numeric [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Tests if the logical value <var>%val</var>, which is a currency value, is valid.
/// The validation is based on the class parameter settings used for the class attribute this data type is associated with.
/// In this case, <a href="#MAXVAL">MAXVAL</a> and <a href="#MINVAL">MINVAL</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which is in currency format, into a display string.
/// <p>Returns the formatted value of <var>%val</var>.
ClassMethod LogicalToDisplay(%val As %Currency) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

}
