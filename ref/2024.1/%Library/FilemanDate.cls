/// Custom DATE data type designed to convert FILEMAN format (CYYMMDD) dates.
/// This data type projects proper DATE meta-data to DISPLAY and ODBC client software.
/// It does not require any extra routines to function
Class %Library.FilemanDate [ ClassType = datatype, ClientDataType = FDATE, OdbcType = DATE, SqlCategory = FMDATE, System = 2 ]
{

/// 1/0 flag which determines if the LogicalToFormat conversions will process imprecise logical FileMan Date values
/// Default setting is STRICTDATA=0
/// Parameter affects the generation of the LogicalToDisplay and LogicalToOdbc methods
/// When STRICTDATA=1, imprecise or invalid dates will not be changed to a valid FileMan Date value.
/// For example, if Logical FileMan Date value is 31110, when STRICTDATA=0 this will translate to 3111001 (Sept 01, 2011).
/// If STRICTDATA=1, this transformation will not take place and the invalid/imprecise Logical value will get an error when converted to Display or Odbc format.
Parameter STRICTDATA As BOOLEAN = 0;

Parameter XSDTYPE = "date";

Parameter JSONTYPE = "string";

ClassMethod XSDToLogical(%val As %String) As %FilemanDate [ CodeMode = generator ]
{
}

/// Converts the %FilemanDate value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %FilemanDate) As %String [ CodeMode = generator ]
{
}

ClassMethod JSONToLogical(%val As %String) As %FilemanDate [ CodeMode = generator ]
{
}

/// Converts the logical %FilemanDate value to the JSON string value.
ClassMethod LogicalToJSON(%val As %FilemanDate) As %String [ CodeMode = generator ]
{
}

/// Converts DISPLAY format DATE (DD/MM/YYYY) to FILEMAN format DATE (CYYMMDD).
ClassMethod DisplayToLogical(Arg1 As %Library.String) As %Library.FilemanDate [ ServerOnly = 0 ]
{
}

/// Checks for Invalid format, expects FILEMAN format DATE (CYYMMDD).
/// Can handle data on disk in the Fileman TimeStamp format.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts FILEMAN format DATE (CYYMMDD) to DISPLAY format DATE (DD/MM/YYYY).
/// Can handle data on disk in the Fileman TimeStamp format.
ClassMethod LogicalToDisplay(Arg1 As %Library.FilemanDate) As %Library.String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts FILEMAN format DATE (CYYMMDD) to ODBC format DATE (YYYY-MM-DD).
/// Can handle data on disk in the Fileman TimeStamp format.
ClassMethod LogicalToOdbc(Arg1 As %Library.FilemanDate) As %Library.String [ CodeMode = generator ]
{
}

/// Converts ODBC format DATE (YYYY-MM-DD) to FILEMAN format DATE (CYYMMDD).
ClassMethod OdbcToLogical(Arg1 As %Library.String) As %Library.FilemanDate
{
}

/// Converts %Date format DATE (+$H) to FILEMAN format DATE (CYYMMDD).
ClassMethod DateToLogical(%val As %Library.String) As %Library.FilemanDate [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Converts %TimeStamp format TIMESTAMP (YYYY-MM-DD HH:MM:SS) to FILEMAN format DATE (CYYMMDD).
ClassMethod TimeStampToLogical(%val As %Library.TimeStamp) As %Library.FilemanDate [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Converts FILEMAN format DATE (CYYMMDD) to %Date format DATE (+$H)
ClassMethod LogicalToDate(%val As %Library.FilemanDate) As %Library.Date [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
