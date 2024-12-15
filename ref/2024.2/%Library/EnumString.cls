/// The <b>%EnumString</b> data type class represents a string.
/// This is a specialized type of <b>%String</b> that allows you to define an enumerated
/// set of possible values (using the DISPLAYLIST and VALUELIST parameters).
/// Unlike the regular <b>%String</b> class, the display values for this property are used
/// when columns of this type are queried via ODBC.
/// <p>The logical value of the <b>%EnumString</b> data type is a string.
Class %Library.EnumString Extends %DataType [ System = 2 ]
{

/// The default collation value used for this data type.
/// Note that if you specify a truncation length and also a <parameter>VALUELIST</parameter> then your truncation length must
/// be longer or equal to your longest VALUELIST value
Parameter COLLATION [ Constraint = ",ALPHAUP,EXACT,MINUS,MVR,PLUS,SPACE,SQLSTRING,SQLUPPER,STRING,TRUNCATE,UPPER", Flags = ENUMEDIT ];

/// The maximum number of characters the string can contain.
Parameter MAXLEN As INTEGER = 50;

/// The minimum number of characters the string can contain.
Parameter MINLEN As INTEGER;

/// A pattern which the string should match.
/// <p>The value of <var>PATTERN</var> should be a valid
/// ObjectScript pattern match expression.
Parameter PATTERN;

/// Determines whether to truncate the string to MAXLEN characters.
Parameter TRUNCATE As BOOLEAN = 0;

/// Used for enumerated (multiple-choice) attributes.
/// <var>VALUELIST</var> is either a null string ("") or a delimiter
/// separated list (where the delimiter is the first character) of logical values.
/// If a non-null value is present, then the attribute is restricted to values
/// in the list, and the validation code simply checks to see if the value is in the list.
Parameter VALUELIST;

/// Used for enumerated (multiple-choice) attributes.
/// Used in conjunction with the <a href="#VALUELIST">VALUELIST</a> parameter for enumerated
/// (multiple-choice) attributes. <var>DISPLAYLIST</var>, if not null,
/// represents the display values for the attribute corresponding with
/// the logical values listed in <var>VALUELIST</var>.
/// <p>The display values are returned by the <a href="#LogicalToDisplay">LogicalToDisplay</a> method.
Parameter DISPLAYLIST;

/// XML element content "MIXED" for mixed="true" and "STRING" or "ESCAPE" for mixed="false".
/// If CONTENT="STRING" (default) XML special characters are put in a CDATA section during XML export.
/// If CONTENT="ESCAPE" XML special characters are escaped during XML export.
/// If CONTENT="ESCAPE-C14N" XML special characters are escaped during XML export using
/// the translate table, XMLC, specified for XML Canonicalizaton.
/// The main difference is that CR is escaped as &amp;#13;
Parameter CONTENT [ Constraint = "MIXED,STRING,ESCAPE,ESCAPE-C14N", Flags = ENUM ] = "STRING";

/// Controls the translate table used to escape content when CONTENT="MIXED" is specified.
Parameter ESCAPE [ Constraint = "HTML,XML", Flags = ENUM ] = "XML";

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "string";

/// JSONTYPE is JSON type used for this datatype.
Parameter JSONTYPE = "string";

/// Converts the input value <var>%val</var>, which is a string, into the logical string format.
/// Returns the logical value of the input string <var>%val</var>.
ClassMethod DisplayToLogical(%val As %String) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the input value <var>%val</var>, which is a string, into the logical string format.
/// Converts DISPLAYLIST entries to their cooresponding VALUELIST value.
/// If there is no entry specified for the given value in the DISPLAYLIST, the input value is returned.
/// If this input value does not match a value in the VALUELIST a validation error will probably be returned upon filing or saving.
/// <p>Returns the logical value of the input string <var>%val</var>.
ClassMethod OdbcToLogical(%val As %String) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Truncates value <var>%val</var> to <a href="#MAXLEN">MAXLEN</a>, characters.
ClassMethod Normalize(%val As %RawString) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Tests if the logical value <var>%val</var>, which is a string, is valid.
/// The validation is based on the class parameter settings used for the class attribute this data type is associated with.
/// In this case, <a href="#MINLEN">MINLEN</a>, <a href="#MAXLEN">MAXLEN</a>, <a href="#VALUELIST">VALUELIST</a>, and <a href="#PATTERN">PATTERN</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which is in logical format, into a display string. Removes all the null characters from the string.
/// <p>Returns the string value of <var>%val</var>.
ClassMethod LogicalToDisplay(%val As %String) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which is in logical format, into a display string.
/// Converts VALUELIST entries to their cooresponding DISPLAYLIST value.
/// <p>Returns the string value of <var>%val</var>.
ClassMethod LogicalToOdbc(%val As %String) As %String [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
