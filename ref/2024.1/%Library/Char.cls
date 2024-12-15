/// The <b>%Char</b> data type class represents a fixed length character field.
/// <p>The logical value of the <b>%character field</b> data type is a character field.
Class %Library.Char Extends %String [ System = 4 ]
{

/// Converts <var>%val</var>, which represents a CHAR in logical format (no blank space padding), into format (blank padded on the right).
/// <p>Returns the ODBC string for the logical value <var>%val</var>.
ClassMethod LogicalToOdbc(%val As %Char) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the value of <var>%val</var>, which is in logical format, into a display string. Removes all the null characters from the string.
/// <p>Returns the string value of <var>%val</var>.
ClassMethod LogicalToDisplay(%val As %Char) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

}
