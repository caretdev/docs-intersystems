/// Custom TimeStamp datatype designed to handle internal FileMan UNIVERSAL TIME datatype (CYYMMDD.HHMMSSZZZ).
/// This data type projects proper VARCHAR/STRING meta data to DISPLAY and ODBC Client software.
/// The conversion methods of this datatype assume a ful FIleMan 22.2 run-time environment is installed, and that the DUZ(2) variable is defined
/// and DUZ(2) references an INSTITUTION that includes defined COUNTRY and LOCATION TIMEZONE values.
Class %Library.FilemanTimeStampUTC [ ClassType = datatype, ClientDataType = VARCHAR, OdbcType = VARCHAR, SqlCategory = STRING, System = 2 ]
{

Parameter XSDTYPE = "string";

Parameter JSONTYPE = "string";

Parameter COLLATION = "STRING";

ClassMethod XSDToLogical(%val As %String) As %FilemanTimeStamp [ CodeMode = generator ]
{
}

/// Converts the %FilemanTimeStamp value to the canonical SOAP encoded value.
ClassMethod LogicalToXSD(%val As %FilemanTimeStamp) As %String [ CodeMode = generator, ProcedureBlock = 1 ]
{
}

/// Checks for Invalid Format, expects FileMan UNIVERSAL TIME format (CYYMMDD.HHMMSSZZZ).
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ProcedureBlock = 0, ServerOnly = 0 ]
{
}

/// Converts FileMan UNIVERSAL TIME internal format (CYYMMDD.HHMMSSZZZ) to external UNIVERSAL TIME format (MON DD, YYYY@HH:MM:SS (UTC=-HH:SS)).
ClassMethod LogicalToDisplay(Arg1 As %Library.FilemanTimeStampUTC = "") As %Library.String [ CodeMode = generator, ProcedureBlock = 0, PublicList = DUZ ]
{
}

/// Converts FileMan UNIVERSAL TIME internal format (CYYMMDD.HHMMSSZZZ) to external UNIVERSAL TIME format (AUG 16, 2016@20:00:16 (UTC-04:00))
ClassMethod LogicalToOdbc(Arg1 As %Library.FilemanTimeStampUTC) As %Library.String [ CodeMode = generator, ProcedureBlock = 0 ]
{
}

/// Converts FileMan external datetime to FileMan UNIVERSAL TIME internal format (CYYMMDD.HHMMSSZZZ)
/// Input can be standard internal or external VA FileMan DateTime (e.g., NOW, T@12A). The Time portion of the input is required.
ClassMethod DisplayToLogical(Arg1 As %Library.String) As %Library.FilemanTimeStampUTC [ CodeMode = generator, ProcedureBlock = 0, ServerOnly = 0 ]
{
}

/// Converts FileMan external datetime to FileMan UNIVERSAL TIME internal format (CYYMMDD.HHMMSSZZZ)
/// Input can be standard internal or external VA FileMan DateTime (e.g., NOW, T@12A). The Time portion of the input is required.
ClassMethod OdbcToLogical(Arg1 As %Library.String) As %Library.FilemanTimeStampUTC [ CodeMode = generator, ProcedureBlock = 0 ]
{
}

}
