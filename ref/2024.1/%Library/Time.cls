/// The <b>%Time</b> data type class represents a time value.
/// <p>The logical value of the <b>%Time</b> data type is the number of seconds past midnight.
Class %Library.Time Extends %DataType [ ClientDataType = TIME, OdbcType = TIME, SqlCategory = TIME, System = 2 ]
{

/// The format specification for the data type's display value.
/// The value of the <var>FORMAT</var> parameter corresponds to the
/// available parameters of the <code>$ZDATETIME</code> and <code>$ZDATETIMEH</code> functions,
/// which are used to perform the formatting.
Parameter FORMAT;

/// The maximum allowed logical value for the data type.
Parameter MAXVAL;

/// The minimum allowed logical value for the data type.
Parameter MINVAL;

/// The number of decimal places of precision to keep for %Time values.
/// If "" then keep whatever precision is provided by the caller.
Parameter PRECISION;

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

/// XMLTIMEZONE specifies the handling of timezone part of the XML format dateTime.
/// "UTC" means convert to UTC on input.  "IGNORE means ignore the timezone.
Parameter XMLTIMEZONE [ Constraint = "IGNORE,UTC", Flags = ENUM ] = "UTC";

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "time";

Parameter JSONTYPE = "string";

/// Converts the SOAP encoded input time value into a %Time value.
ClassMethod XSDToLogical(%val As %String) As %Time [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the %Time value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %Time) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the input value <var>%val</var>, which represents a time value,
/// into a logical time value (number of seconds since midnight).
/// <p>Returns the value of the input string <var>%val</var> as a
/// logical time value (number of seconds since midnight).
ClassMethod DisplayToLogical(%val As %String) As %Time [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Tests if the logical value <var>%val</var>, which represents a time value
/// (number of seconds since midnight), is valid.
/// The validation is based on the class parameter settings used for the class
/// attribute this data type is associated with.
/// In this case, <a href="#MAXVAL">MAXVAL</a> and <a href="#MINVAL">MINVAL</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which is a logical time value
/// (number of seconds since midnight), into a display string. The formatting is based
/// on the value of the <var>FORMAT</var> parameter.
/// Returns the formatted value of <var>%val</var>.
ClassMethod LogicalToDisplay(%val As %Time) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts <var>%val</var>, which represents a logical time value
/// (number of seconds since midnight), into ODBC time format.
/// <p>Returns the ODBC time string for the logical time value <var>%val</var>.
ClassMethod LogicalToOdbc(%val As %Time = "") As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts <var>%val</var>, which represents a time in ODBC format,
/// into a logical time value (number of seconds since midnight).
/// <p>Returns the logical time value of the ODBC time string <var>%val</var>.
ClassMethod OdbcToLogical(%val As %String = "") As %Time [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts <var>%val</var> to a normalized value.
ClassMethod Normalize(%val As %RawString) As %Time [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
