/// The <b>%Integer</b> data type class represents an integer value.
/// <p>The logical value of the <b>%Integer</b> data type is an integer.
/// The %Integer datatype does not have built-in limits.
/// It is a hybrid datatype the values of which is not exact outside of a certain range
/// (currently it is the same range as  that of the 64-bit integer value).
/// The current range for xDBC projections can be seen under configuration/advanced.
/// Its default corresponds to the usual signed 32-bit integer limits.
Class %Library.Integer Extends %DataType [ ClientDataType = INTEGER, OdbcType = INTEGER, SqlCategory = INTEGER, System = 2 ]
{

/// The format specification for the data type's display value.
/// <p>The value of <var>FORMAT</var> corresponds to the formatting option
/// of the <code>$FNUMBER</code> function, which is used to perform the formatting.
Parameter FORMAT;

/// The maximum allowed logical value for the data type.
Parameter MAXVAL As INTEGER;

/// The minimum allowed logical value for the data type.
Parameter MINVAL As INTEGER;

/// The total number of digits for XML verification as defined by http://www.w3.org/TR/xmlschema-2/#rf-totalDigits
Parameter XMLTotalDigits;

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

/// Declares the XSD type used when projecting XML Schemas.
Parameter XSDTYPE = "long";

Parameter JSONTYPE = "number";

/// If '1' then <method>IsValid</method> will return false for numbers that are not integers e.g. 1.2, -0.01
/// rather than the default behavior which is to allow these an normalize them to an integer. This validation
/// is done by $number using "I" format, so the rules associated with this function apply.
Parameter STRICT = 0;

/// Converts the SOAP encoded input decimal value into a logical value.
/// Returns "" for error.
ClassMethod XSDToLogical(%val As %String) As %Integer [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Converts the input value <var>%val</var>, which is a string representing an integer,
/// into a logical integer value.
/// <p>Returns the logical integer value of the input string <var>%val</var>.
ClassMethod DisplayToLogical(%val As %String) As %Integer [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts <var>%val</var> to a normalized value.
ClassMethod Normalize(%val As %RawString) As %Integer [ ServerOnly = 1 ]
{
}

/// Tests if the logical value <var>%val</var>, which is an integer value, is valid.
/// The validation is based on the class parameter settings used
/// for the class attribute this data type is associated with.
/// In this case, <a href="#MAXVAL">MAXVAL</a> and <a href="#MINVAL">MINVAL</a>.
ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Converts the value of <var>%val</var>, which is in logical integer format, into a display string.
/// The formatting is based on the value of the FORMAT parameter.
/// <p>Returns the formatted value of <var>%val</var>.
ClassMethod LogicalToDisplay(%val As %Integer) As %String [ CodeMode = generator, ServerOnly = 0 ]
{
}

}
