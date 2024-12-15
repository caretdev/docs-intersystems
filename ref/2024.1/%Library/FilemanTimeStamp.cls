/// Custom TimeStamp datatype designed to handle internal FILEMAN format TimeStamp (CYYMMDD.HHMMSS).
/// This data type projects proper TIMESTAMP meta data to DISPLAY and ODBC Client software.
/// It does not require any extra routines to function
Class %Library.FilemanTimeStamp [ ClassType = datatype, ClientDataType = FTIMESTAMP, OdbcType = TIMESTAMP, SqlCategory = FMTIMESTAMP, System = 2 ]
{

/// 1/0 flag which determines if the LogicalToFormat conversions will process imprecise logical FileMan Date values
/// Default setting is STRICTDATA=0
/// Parameter affects the generation of the LogicalToDisplay and LogicalToOdbc methods
/// When STRICTDATA=1, imprecise or invalid dates will not be changed to a valid FileMan Date value.
/// For example, if Logical FileMan Date value is 31110, when STRICTDATA=0 this will translate to 3111001 (Sept 01, 2011).
/// If STRICTDATA=1, this transformation will not take place and the invalid/imprecise Logical value will get an error when converted to Display or Odbc format.
Parameter STRICTDATA As BOOLEAN = 0;

Parameter XSDTYPE = "dateTime";

Parameter JSONTYPE = "string";

ClassMethod XSDToLogical(%val As %String) As %FilemanTimeStamp [ CodeMode = generator ]
{
}

/// Converts the %FilemanTimeStamp value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %FilemanTimeStamp) As %String [ CodeMode = generator ]
{
}

/// Converts DISPLAY format TIMESTAMP (MM/DD/YYYY HH:MM:SS) to FILEMAN format TimeStamp (CYYMMDD.HHMMSS).
ClassMethod DisplayToLogical(Arg1 As %Library.String) As %Library.FilemanTimeStamp [ ServerOnly = 0 ]
{
}

/// Checks for Invalid Format, expects FILEMAN format TimeStamp (CYYMMDD.HHMMSS).
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Checks for Invalid Format, expects FILEMAN format TimeStamp (CYYMMDD.HHMMSS).
/// Converts FILEMAN format TimeStamp (CYYMMDD.HHMMSS) to DISPLAY format TIMESTAMP (DD/MM/YYYY HH:MM:SS).
ClassMethod LogicalToDisplay(Arg1 As %Library.FilemanTimeStamp = "") As %Library.String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts FILEMAN format TimeStamp (CYYMMDD.HHMMSS) to ODBC format TIMESTAMP (YYYY-MM-DD HH:MM:SS)
ClassMethod LogicalToOdbc(Arg1 As %Library.FilemanTimeStamp) As %Library.String [ CodeMode = generator ]
{
}

/// Converts ODBC format TIMESTAMP (YYYY-MM-DD HH:MM:SS) to FILEMAN format TimeStamp (CYYMMDD.HHMMSS)
ClassMethod OdbcToLogical(Arg1 As %Library.String) As %Library.FilemanTimeStamp
{
}

/// Converts Storage FileMan TIMESTAMP (CYYMMDD.HHMMSS) with possible trailing 0's to a Logical canonical value without trailing 0's
/// This is needed so that values with trailing zeros and without can all be compared with ]] properly (they will all be treated as numeric values).
/// LogicalTo**** methods will handle the missing trailing zeros to produce the correct time
ClassMethod StorageToLogical(%val As %Library.String) As %Library.FilemanTimeStamp
{
}

}
