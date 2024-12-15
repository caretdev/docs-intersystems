/// The <b>%Date</b> data type class represents a date.
/// The logical value of the <b>%Date</b> data type is in InterSystems IRIS <code>$H</code> format.
Class %Library.Date Extends %DataType [ ClientDataType = DATE, OdbcType = DATE, SqlCategory = DATE, System = 2 ]
{

/// The format specification for the data type's display value.
/// The value of the <var>FORMAT</var> parameter corresponds to the
/// available parameters of the <code>$ZDATE</code> and <code>$ZDATEH</code> functions,
/// which are used to perform the formatting.
Parameter FORMAT;

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
Parameter XSDTYPE = "date";

Parameter JSONTYPE = "string";

/// Converts the SOAP encoded input date value into a %Date value.
ClassMethod XSDToLogical(%val As %String) As %Date [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the %Date value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %Date) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the JSON input date value into a %Date value.
ClassMethod JSONToLogical(%val As %String) As %Date [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the %Date value to the canonical JSON value.
ClassMethod LogicalToJSON(%val As %Date) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts <var>%val</var> to a normalized value.
ClassMethod Normalize(%val As %RawString) As %Date [ ServerOnly = 1 ]
{
}

/// Tests if the logical value <var>%val</var>, which represents a date in <code>$H</code> format,
/// is valid. The validation is based on the class parameter settings used
/// for the class attribute this data type is associated with.
/// In this case, <a href="#MAXVAL">MAXVAL</a> and <a href="#MINVAL">MINVAL</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which is in logical <code>$H</code> format, into a display string.
/// The formatting is based on the value of the <a href="#FORMAT">FORMAT</a> parameter.
/// <p>Returns the formatted value of <var>%val</var>.
ClassMethod LogicalToDisplay(%val As %Date) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the input value <var>%val</var>, which represents a date, into <code>$H</code> format.
/// <p>Returns the logical (<code>$H</code>) value of the input string <var>%val</var>.
ClassMethod DisplayToLogical(%val As %String) As %Date [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts <var>%val</var>, which represents a date in logical <code>$H</code> format, into ODBC date format.
/// <p>Returns the ODBC date string for the logical (<code>$H</code>) value <var>%val</var>.
///   Assume if the value is already in ODBC DATE format or ODBC TIMESTAMP format, just return tge ODBC DATE format portion of the value.
///   This value may have come from a gateway query or is used by TO_DATE(val,"J") for Julian dates
ClassMethod LogicalToOdbc(%val As %Date = "") As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts <var>%val</var>, which represents a date in ODBC format, into <code>$H</code> format.
/// <p>Returns the <code>$H</code> value of the ODBC date string <var>%val</var>.
ClassMethod OdbcToLogical(%val As %String = "") As %Date [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
