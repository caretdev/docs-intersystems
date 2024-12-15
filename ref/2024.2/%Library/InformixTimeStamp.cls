/// The <b>%Library.InformixTimeStamp</b> data type class represents a time stamp value.
/// <p>The logical value of the <b>%Library.InformixTimeStamp</b> data type is in <code>YYYY-MM-DD HH:MM:SS.nnnnnnnnn</code> format.
Class %Library.InformixTimeStamp Extends %DataType [ ClientDataType = TIMESTAMP, OdbcType = TIMESTAMP, Not ProcedureBlock, SqlCategory = TIMESTAMP, System = 2 ]
{

/// XMLTIMEZONE specifies the handling of timezone part of the XML format dateTime.
/// "UTC" means convert to UTC on input.  "IGNORE means ignore the timezone.
Parameter XMLTIMEZONE [ Constraint = "IGNORE,UTC", Flags = ENUM ] = "UTC";

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "dateTime";

Parameter JSONTYPE = "string";

/// The %Library.InformixTimeStamp data type is composed of a contiguous sequence of fields that represents
/// each component of time you want to record and uses the following syntax:
///      DATETIME largest_qualifier TO smallest_qualifier
/// The largest_qualifier and smallest_qualifier can be any one of the fields:
///
/// 	Qualifier Field 	Valid Entries
/// 	YEAR			A year numbered from 1 to 9,999 (A.D.)
/// 	MONTH			A month numbered from 1 to 12
/// 	DAY			A day numbered from 1 to 31, as appropriate to the month
/// 	HOUR			An hour numbered from 0 (midnight) to 23
/// 	MINUTE			A minute numbered from 0 to 59
/// 	SECOND			A second numbered from 0 to 59
/// 	FRACTION		A decimal fraction of a second with up to 5 digits of precision.
/// 				The default precision is 3 digits (a thousandth of a second).
/// 				Other precisions are indicated explicitly by writing FRACTION(n), where n is the desired number of digits from 1 to 5. .
Parameter LARGEQUAL;

Parameter SMALLQUAL;

/// Converts the SOAP encoded input dateTime value into a %TimeStamp value.
ClassMethod XSDToLogical(%val As %String) As %TimeStamp [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the %TimeStamp value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %TimeStamp) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Transforms integer values into timestamp.
ClassMethod Normalize(%val As %RawString) As %TimeStamp [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Tests if the logical value <var>%val</var>, which represents an Informix Timestamp
/// value in <code>YYYY-MM-DD HH:MM:SS[.nnnnn]</code> format, is valid.
/// Valid formats include:
///   - TimeStamp value in the format YYYY-MM-DD HH:MI:SS[.nnnnn]
///   - Integer value that represents +$Horolog, will be converted to the date portion of the Informix TimeStamp value
///   - Time value of the form HH:MM:SS[.nnnnn], will default the date portion of the Informix Timestamp to today's date
///   - Date value in the format YYYY-MM-DD, , will be converted to the date portion of the Informix TimeStamp value
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

}
