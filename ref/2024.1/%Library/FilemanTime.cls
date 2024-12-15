/// Custom Time datatype designed to handle internal FILEMAN format Time (HHMMSS).
///   A field defined as a TIME data type can accept many of the date/time entries, but only stores the TIME portion.
///   Example:  External: 15:09:43
///             Internal: 150943
/// It does not require any extra routines to function
///
Class %Library.FilemanTime [ ClassType = datatype, ClientDataType = TIME, OdbcType = TIME, SqlCategory = STRING ]
{

/// The default collation value used for this data type.
Parameter COLLATION = "STRING";

Parameter XSDTYPE = "Time";

Parameter JSONTYPE = "string";

ClassMethod XSDToLogical(%val As %String) As %Library.FilemanTime [ CodeMode = generator ]
{
}

/// Converts the %FilemanTime value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %Library.FilemanTime) As %String [ CodeMode = generator ]
{
}

/// Checks for Invalid Format, expects FILEMAN format Time (HHMMSS, 00:00:01 through 24:00:00).
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts FILEMAN format TimeStamp (HHMMSS) to DISPLAY format TIME HH:MM:SS).
ClassMethod LogicalToDisplay(Arg1 As %Library.FilemanTime = "") As %Library.String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts FILEMAN format Time (HHMMSS) to ODBC format TIME (HH:MM:SS)
ClassMethod LogicalToOdbc(Arg1 As %Library.FilemanTime) As %Library.String [ CodeMode = generator ]
{
}

/// Converts DISPLAY format TIME ([MM/DD/YYYY ]HH:MM:SS) to FILEMAN format Time (HHMMSS).
ClassMethod DisplayToLogical(Arg1 As %Library.String) As %Library.FilemanTime [ ServerOnly = 0 ]
{
}

/// Converts ODBC format TIMESTAMP (YYYY-MM-DD HH:MM:SS) to FILEMAN format TimeStamp (CYYMMDD.HHMMSS)
ClassMethod OdbcToLogical(Arg1 As %Library.String) As %Library.FilemanTimeStamp
{
}

}
