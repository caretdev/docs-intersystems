Class %SYS.PTools.ModuleName Extends %String [ ClassType = datatype, ClientDataType = VARCHAR, OdbcType = VARCHAR, SqlCategory = STRING, System = 4 ]
{

/// The maximum allowed logical value for the data type.
Parameter MAXVAL;

/// The minimum allowed logical value for the data type.
Parameter MINVAL;

/// Tests if the logical value <var>%val</var>, which represents an SQL Module is valid.
/// The validation is based on the class parameter settings used for the class attribute this
/// data type is associated with.
/// In this case, <a href="#MAXVAL">MAXVAL</a> and <a href="#MINVAL">MINVAL</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the input value <var>%val</var>, which represents an SQL Module in display format (String), into an SQL Module # (logical format).
/// <p>Returns the logical value of the input string <var>%val</var>.
ClassMethod DisplayToLogical(%val As %String) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which represents an SQL Module in logical format (Integer), into an SQL Module Name (display string).
/// <p>Returns the display value of input string <var>%val</var>.
ClassMethod LogicalToDisplay(%val As %String) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the input value <var>%val</var>, which represents an SQL Module in ODBC format (String), into an SQL Module # (logical format).
/// <p>Returns the ODBC logical value of the input string <var>%val</var>.
ClassMethod OdbcToLogical(%val As %String = "") As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the value of <var>%val</var>, which represents an SQL Module in logical format (Integer), into an SQL Module Name (ODBC VARCHAR).
/// <p>Returns the ODBC display value of input string <var>%val</var>.
ClassMethod LogicalToOdbc(%val As %String = "") As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
