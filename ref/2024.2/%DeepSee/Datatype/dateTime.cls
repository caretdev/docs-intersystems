/// Used to represent dates within DeepSee.
/// This datatype can contain a complete $H value with days and seconds.
Class %DeepSee.Datatype.dateTime Extends %TimeStamp [ System = 3 ]
{

/// Converts <var>%val</var> to a normalized internal $Horolog value.
ClassMethod Normalize(%val As %RawString) As %DeepSee.Datatype.dateTime [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Validate logical $H value, ignore parameters.
ClassMethod IsValid(%val As %RawString) As %Status [ ServerOnly = 1 ]
{
}

/// Converts the value of <var>%val</var>, which is in logical $Horolog format, into a display string on ODBC format <code>YYYY-MM-DD HH:MM:SS[.nnnnnnnnn]</code>.
ClassMethod LogicalToDisplay(%val As %TimeStamp) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which is in logical $Horolog format, into an ODBC string <code>YYYY-MM-DD HH:MM:SS[.nnnnnnnnn]</code>.
ClassMethod LogicalToOdbc(%val As %TimeStamp) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the input value <var>%val</var>, which represents a Display dateTime value,
/// to internal $Horolog format.
ClassMethod DisplayToLogical(%val As %String) As %DeepSee.Datatype.dateTime [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts <var>%val</var>, which represents either a dateTime value in ODBC format,
/// or a Date in ODBC format, into a logical dateTime value in $Horolog format.
ClassMethod OdbcToLogical(%val As %String) As %DeepSee.Datatype.dateTime [ ServerOnly = 1 ]
{
}

}
