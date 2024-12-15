/// The <b>%TimeStamp</b> data type class represents a time stamp value.
/// The logical value of this data type is in ODBC format:
/// <pre>YYYY-MM-DD HH:MM:SS.nnnnnnnnn</pre>
/// For example, the following expression returns the current date and
/// time in the format needed for this data type: <code>$zdatetime($horolog,3)</code>.
/// See the documentation for <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$ZDATETIME">$zdatetime</a>
/// and <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$HOROLOG">$horolog</a>.
/// <p>The function $System.SQL.Functions.DATEDIFF() can be used to return intervals between two %TimeStamp values.
/// The function $System.SQL.Functions.DATEADD() can be used to add a certain number of date parts (such as years, hours, or days)
/// to a specified timestamp. See the class <class>%SYSTEM.SQL.Functions</class> for details.
Class %Library.TimeStamp Extends %DataType [ ClientDataType = TIMESTAMP, OdbcType = TIMESTAMP, SqlCategory = TIMESTAMP, System = 2 ]
{

/// Used for enumerated (multiple-choice) attributes.
/// <var>VALUELIST</var> is either a null string ("") or a delimiter
/// separated list (where the delimiter is the first character) of logical values.
/// If a non-null value is present, then the attribute is restricted to values
/// in the list, and the validation code simply checks to see if the value is in the list.
Parameter VALUELIST;

/// The maximum allowed logical value for the data type.
Parameter MAXVAL;

/// The minimum allowed logical value for the data type.
Parameter MINVAL;

/// Used for enumerated (multiple-choice) attributes.
/// Used in conjunction with the <a href="#VALUELIST">VALUELIST</a> parameter for enumerated
/// (multiple-choice) attributes. <var>DISPLAYLIST</var>, if not null,
/// represents the display values for the attribute corresponding with
/// the logical values listed in <var>VALUELIST</var>.
/// <p>The display values are returned by the <a href="#LogicalToDisplay">LogicalToDisplay</a> method.
Parameter DISPLAYLIST;

/// XMLTIMEZONE specifies the handling of timezone part of the XML format dateTime.
/// "UTC" means convert to UTC on input.  "IGNORE" means ignore the timezone.
Parameter XMLTIMEZONE [ Constraint = "IGNORE,UTC", Flags = ENUM ] = "UTC";

/// XMLDEFAULTVALUE specifies the value to use if the date fails validity check by $zdatetimeh.
/// By default "" is used which will result in an XMLImport error.
/// A dateTime such as "1841-01-1 00:00:00" may be specified to replace dates such as 0001-01-01 00:00:00
/// which are not valid %TimeStamp dates.
Parameter XMLDEFAULTVALUE As STRING [ Internal ];

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "dateTime";

Parameter JSONTYPE = "string";

/// Converts the SOAP encoded input dateTime value into a %TimeStamp value.
ClassMethod XSDToLogical(%val As %String) As %TimeStamp [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the %TimeStamp value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %TimeStamp) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts <var>%val</var>, which represents either a Timestamp in ODBC format,
/// or a Date in ODBC format, into a logical Timestamp value.
/// <p>Returns the logical Timestamp value of the ODBC Timestamp string <var>%val</var>.
ClassMethod OdbcToLogical(%val As %String) As %TimeStamp [ ServerOnly = 1 ]
{
}

/// Converts the input value <var>%val</var>, which represents a Display timestamp value,
/// to <code>YYYY-MM-DD HH:MM:SS[.nnnnnnnnn]</code> format.
/// The Logical value and Display values are the same unless there are <a href="#VALUELIST">VALUELIST</a> and <a href="#DISPLAYLIST">DISPLAYLIST</a> parameters specified.
/// <p>Returns the value of the input string <var>%val</var> as a Logical timestamp value (<code>YYYY-MM-DD HH:MM:SS[.nnnnnnnnn]</code> format).
ClassMethod DisplayToLogical(%val As %String) As %TimeStamp [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Tests if the logical value <var>%val</var>, which represents a timestamp
/// value in <code>YYYY-MM-DD HH:MM:SS[.nnnnnnnn]</code> format, is valid.
/// The validation is based on the class parameter settings used for the
/// class attribute this data type is associated with.
/// In this case, <a href="#MAXVAL">MAXVAL</a> and <a href="#MINVAL">MINVAL</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which is in logical format <code>YYYY-MM-DD HH:MM:SS[.nnnnnnnnn]</code>, into a display string.
/// The Logical value and Display values are the same unless there are <a href="#VALUELIST">VALUELIST</a> and <a href="#DISPLAYLIST">DISPLAYLIST</a> parameters specified.
/// <p>Returns the Display Timestamp value of the Logical Timestamp string <var>%val</var>.
ClassMethod LogicalToDisplay(%val As %TimeStamp) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Transforms Logical Date or ODBC Date values into timestamp.
/// Date only values are converted to Timestamp values with a time of 00:00:00.
/// Time only values are converted to TImestamp value with a date of current date
ClassMethod Normalize(%val As %RawString) As %TimeStamp [ CodeMode = expression, ServerOnly = 1 ]
{
}

}
