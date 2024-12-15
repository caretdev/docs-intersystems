/// Custom DATE data type designed to convert FILEMAN format YEAR fields.
/// 	A field defined as a YEAR data type can accept many of the date entries, but only stores the YEAR portion.
/// 	Example: External: 2016
///              Internal: 3160000
///
Class %Library.FilemanYear [ ClassType = datatype, ClientDataType = VARCHAR, OdbcType = VARCHAR, SqlCategory = STRING, System = 2 ]
{

Parameter XSDTYPE = "string";

Parameter JSONTYPE = "string";

Parameter COLLATION = "STRING";

ClassMethod XSDToLogical(%val As %String) As %FilemanYear [ CodeMode = generator ]
{
}

/// Converts the %FilemanYear value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %FilemanYear) As %String [ CodeMode = generator ]
{
}

ClassMethod JSONToLogical(%val As %String) As %FilemanYear [ CodeMode = generator ]
{
}

/// Converts the logical %FilemanYear value to the JSON string value.
ClassMethod LogicalToJSON(%val As %FilemanYear) As %String [ CodeMode = generator ]
{
}

/// Checks for Invalid format, expects FILEMAN format YEAR (CYY0000).
/// Can handle data on disk in the Fileman TimeStamp format.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts FILEMAN format YEAR (CYY0000) to DISPLAY format YEAR (YYYY).
/// Can handle data on disk in the Fileman TimeStamp format.
ClassMethod LogicalToDisplay(Arg1 As %Library.FilemanYear = "") As %Library.String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts FILEMAN format YEAR (CYY0000) to ODBC format YEAR (YYYY).
/// Can handle data on disk in the Fileman TimeStamp format.
ClassMethod LogicalToOdbc(Arg1 As %Library.FilemanYear = "") As %Library.String [ CodeMode = generator ]
{
}

/// Converts DISPLAY format DATE (DD/MM/YYYY) to FILEMAN format YEAR (CYY0000).
ClassMethod DisplayToLogical(Arg1 As %Library.String) As %Library.FilemanYear [ ServerOnly = 0 ]
{
}

/// Converts ODBC format DATE (YYYY-MM-DD) to FILEMAN format YEAR (CYY0000).
ClassMethod OdbcToLogical(Arg1 As %Library.String = "") As %Library.FilemanDate
{
}

/// Converts %Date format DATE (+$H) to FILEMAN format YEAR (CYY0000).
ClassMethod DateToLogical(%val As %Library.String = "") As %Library.FilemanYear [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Converts %TimeStamp format TIMESTAMP (YYYY-MM-DD HH:MM:SS) to FILEMAN format YEAR (CYY0000).
ClassMethod TimeStampToLogical(%val As %Library.TimeStamp = "") As %Library.FilemanYear [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Converts FILEMAN format YEAR (CYY0000) to %Date format DATE (+$H)
ClassMethod LogicalToDate(%val As %Library.FilemanDate) As %Library.Date [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
