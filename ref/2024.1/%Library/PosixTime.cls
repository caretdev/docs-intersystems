/// The <class>%PosixTime</class> data type class represents a time stamp value.
/// <p>The logical value of the <class>%PosixTime</class> data type is based on the number of seconds since (or before) January 1, 1970 00:00:00.
/// The logical values will never collide with those of <class>%Date</class> in a valid range, and will sort chronologically when stored in globals.
/// %PosixTime takes up less disk space and memory than <class>%TimeStamp</class> datatype, and is better for performance than %TimeStamp.
/// <p> The earliest date supported by <class>%PosixTime</class> is 0001-01-01 00:00:00, which has a logical value of -6979664624441081856.
/// The last date supported is 9999-12-31 23:59:59.999999, which has a logical value of 1406323805406846975.
/// Dates prior to 1970-01-01 00:00:00 have a negative logical value.
/// %PosixTime values have a 1 microsecond resolution.
/// <dl>
/// <dd>To convert between <class>%PosixTime</class> and <class>%TimeStamp</class> format, call <method>LogicalToTimeStamp</method>(posixtime_value)
/// <dd>To convert between <class>%TimeStamp</class> and <class>%PosixTime</class> format, call <method>TimeStampToLogical</method>(timestamp_value)
/// <dd>To convert between <class>%PosixTime</class> and <class>%Date</class> format, call <method>LogicalToDate</method>(posixtime_value).
/// <dd>To convert between <class>%Date</class> and <class>%PosixTime</class> format, call <method>DateToLogical</method>(date_value).  A time of 00:00:00 is used.
/// <dd>To convert between <class>%PosixTime</class> and <class>%Time</class> format, call <method>LogicalToTime</method>(posixtime_value).
/// <dd>To convert between <class>%Time</class> and <class>%PosixTime</class> format, call <method>TimeToLogical</method>(time_value).  The current date is used.
/// <dd>To determine if a value is a valid logical <class>%PosixTime</class> value, call <method>IsValid</method>(posixtime_value).
/// <dd>To get the current, local datetime <class>%PosixTime</class> logical value, call <method>CurrentTimeStamp</method>(precision).
/// <dd>To get the current, UTC datetime <class>%PosixTime</class> logical value, call <method>CurrentUTCTimeStamp</method>(precision).
/// <dd>To get a Unix Timestamp value from a <class>%PosixTime</class> logical (local time) value, call <method>LogicalToUnixTime</method>(posixtime_value).
/// <dd>To get a <class>%PosixTime</class> logical value from a Unix Timestamp value, call <method>UnixTimeToLogical</method>(unix_timestamp_value).
/// </dl>
Class %Library.PosixTime [ ClassType = datatype, ClientDataType = TIMESTAMP, OdbcType = TIMESTAMP, SqlCategory = POSIXTS, System = 2 ]
{

/// The maximum allowed logical value for the data type.  By default, a Logical value of 1406323805406846975, which is 9999-12-31 23:59:59.999999.
Parameter MAXVAL = 1406323805406846975;

/// The minimum allowed logical value for the data type.  By default, a logical value of -6979664624441081856, which is 0001-01-01 00:00:00.
Parameter MINVAL = -6979664624441081856;

/// The format specification for the data type's date component display value.
/// The value of the <var>DATEFORMAT</var> parameter corresponds to the
/// available parameters of the <code>$ZDATETIME</code> and <code>$ZDATETIMEH</code> function's fformat value,
/// which is used to perform the formatting of the time component of the timestamp value.
Parameter DATEFORMAT = 3;

/// The format specification for the data type's time component display value.
/// The value of the <var>TIMEFORMAT</var> parameter corresponds to the
/// available parameters of the <code>$ZDATETIME</code> and <code>$ZDATETIMEH</code> function's tformat value,
/// which is used to perform the formatting of the time component of the timestamp value.
Parameter TIMEFORMAT = 1;

/// XMLTIMEZONE specifies the handling of timezone part of the XML format dateTime.
/// "UTC" means convert to UTC on input.  "IGNORE means ignore the timezone.
Parameter XMLTIMEZONE [ Constraint = "IGNORE,UTC", Flags = ENUM ] = "UTC";

/// XMLDEFAULTVALUE specifies the value to use if the date fails validity check by $zdatetimeh.
/// By default "" is used which will result in an XMLImport error.
/// A dateTime such as "1841-01-1 00:00:00" may be specified to replace dates such as 0001-01-01 00:00:00 which are not valid %TimeStamp dates.
/// For ease of use, specify a %TimeStamp style logical value for XMLDEFAULTVALUE, not a %PosixTime logical value (which is a 64-bit integer).
Parameter XMLDEFAULTVALUE As STRING [ Internal ];

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "dateTime";

/// Declares the default null marker value to use in index subscripts for properties of type %PosixTime
Parameter INDEXNULLMARKER = "-1E19";

/// JSONTYPE is JSON type used for this datatype.
Parameter JSONTYPE = "number";

/// Converts the SOAP encoded input datetime value into a <class>%PosixTime</class> value.
ClassMethod XSDToLogical(%val As %String) As %PosixTime [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the <class>%PosixTime</class> value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %PosixTime) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the JSON UNIX time to logical %PosixTime.
ClassMethod JSONToLogical(%val As %BigInt) As %PosixTime [ CodeMode = generator ]
{
}

/// Converts the logical %PosixTime value to the JSON integer UNIX time value.
ClassMethod LogicalToJSON(%val As %FilemanTimeStamp) As %BigInt [ CodeMode = generator ]
{
}

/// Converts <var>%val</var>, which represents either a Timestamp in ODBC format, or a Date in ODBC format, into a logical <class>%PosixTime</class> value.
/// <p>Returns the logical <class>%PosixTime</class> value of the ODBC Timestamp string <var>%val</var>.
ClassMethod OdbcToLogical(%val As %RawString) As %Library.PosixTime [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts <var>%val</var>, which represents a logical <class>%PosixTime</class> value into an ODBC format TIMESTAMP value
ClassMethod LogicalToOdbc(%val As %PosixTime) As %TimeStamp [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the input value <var>%val</var>, which represents a display timestamp value, in a logical <class>%PosixTime</class> value.
ClassMethod DisplayToLogical(%val As %RawString) As %PosixTime [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which is in logical format as the encoded number of seconds since Jan 01, 1970 00:00:00, into a display timestamp string.
ClassMethod LogicalToDisplay(%val As %PosixTime) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Tests if the logical value <var>%val</var>, which represents a <class>%PosixTime</class> value, is valid.
/// Input value of a valid <class>%TimeStamp</class> logical value or <class>%Date</class> ODBC value is also allowed.  If <class>%TimeStamp</class> logical value or <class>%Date</class> ODBC value is given, it will first be converted to a <class>%PosixTime</class> value
/// The validation is based on the class parameter settings used for the class attribute this data type is associated with.
/// In this case, <a href="#MAXVAL">MAXVAL</a> and <a href="#MINVAL">MINVAL</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts <var>%val</var> to a normalized <class>%PosixTime</class> value.
/// Input value of a valid <class>%TimeStamp</class> logical value, <class>%Date</class> ODBC value, or <class>%Date</class> logical value is also allowed.  If <class>%TimeStamp</class> logical value , <class>%Date</class> ODBC value, or <class>%Date</class> logical value is given, it will first be converted to a <class>%PosixTime</class> value
ClassMethod Normalize(%val As %RawString) As %PosixTime [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts a logical <class>%Date</class> value to logical <class>%PosixTime</class> value.
ClassMethod DateToLogical(%val As %Date) As %Library.PosixTime [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Converts a logical <class>%PosixTime</class> value to a logical <class>%Date</class> value.
ClassMethod LogicalToDate(%val As %Library.PosixTime) As %Library.Date [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts a logical <class>%PosixTime</class> value to a logical <class>%Time</class> value.
ClassMethod LogicalToTime(%val As %Library.PosixTime) As %Library.Time [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts a logical <class>%Time</class> value to a logical <class>%PosixTime</class> value.
ClassMethod TimeToLogical(%val As %Library.Time) As %Library.PosixTime [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Converts a logical <class>%TimeStamp</class> value to a logical <class>%PosixTime</class> value.
ClassMethod TimeStampToLogical(%val As %Library.TimeStamp) As %Library.PosixTime [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts a logical <class>%PosixTime</class> value to a logical <class>%TimeStamp</class> value.
ClassMethod LogicalToTimeStamp(%val As %Library.PosixTime) As %Library.TimeStamp [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts a logical <class>%PosixTime</class> value to a Unix time value (number of seconds before or after 01 Jan 1970 00:00:00.000000).
ClassMethod LogicalToUnixTime(%val As %Library.PosixTime) As %Library.Decimal [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts a a Unix time value (number of seconds before or after 01 Jan 1970 00:00:00.000000 UTC) to a logical local <class>%PosixTime</class> value.
ClassMethod UnixTimeToLogical(%val As %Library.Decimal) As %Library.PosixTime [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Returns the current logical <class>%PosixTime</class> value.
ClassMethod CurrentTimeStamp(precision As %Library.Integer = 6) As %Library.PosixTime [ ServerOnly = 1 ]
{
}

/// Returns the current logical UTC <class>%PosixTime</class> value.
ClassMethod CurrentUTCTimeStamp(precision As %Library.Integer = 6) As %Library.PosixTime [ ServerOnly = 1 ]
{
}

}
