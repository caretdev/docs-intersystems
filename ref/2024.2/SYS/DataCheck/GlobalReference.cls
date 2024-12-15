/// Datatype for global node names used in DataCheck. Only to be used in the context
/// of DataCheck.
/// <p>
/// Valid global references contain no extended reference, no naked references, and only literal subscripts.
/// In their normalized form they include a leading ^.  Consumers should check validity and normalize
/// (via <METHOD>Normalize</METHOD> or by validating the class which has this datatype as a property)
/// before using the reference.
/// <p>
/// Null is a valid global reference for DataCheck and represents the end of the universe of possible subscripts
/// for any global.  In other words, "" collates after any other valid global reference.
/// <p>
/// Null appearing as a subscript is valid and represents the beginning of the range of the subscript level
/// in which it appears.  In other words, ^X(123,"") collates before ^X(123, followed by any other subscripts).
///
Class SYS.DataCheck.GlobalReference Extends %Binary
{

/// Returns true if the global reference in 'key1' collates after the global
/// reference in 'key2' in collation 'col', otherwise returns false
ClassMethod CollatesAfter(key1 As GlobalReference, key2 As GlobalReference, col As %Integer = 5, alreadynormalized As %Boolean = 0) As %Boolean [ Internal ]
{
}

/// Validates and normalizes the global reference specified by 'key', returning it without any
/// subscripts, and returning the full global reference in the 'normalized' argument.
ClassMethod GlobalName(key As GlobalReference, Output normalized As GlobalReference) As GlobalReference [ Internal ]
{
}

/// Returns the encoded form of the global reference
ClassMethod Encode(ref As GlobalReference, col As %Integer = 5, alreadynormalized As %Boolean = 0) As %String [ Internal ]
{
}

/// Returns the non-null global reference, including the "^", passed though $name,
/// or null if the global reference is null.  This method will validate the global reference
/// and throw an error if the global reference is invalid.  You may use <METHOD>IsValid</METHOD>
/// with the 'normalized' output parameter avoid errors.
ClassMethod Normalize(%val As GlobalReference) As GlobalReference
{
}

/// Returns $$$OK if the global reference in '%val' is valid, or an error status if invalid.
/// If valid, the normalized value is returned by reference in the 'normalized' parameter.
/// Note that a global reference which
/// passes this test, although syntactically valid, may not actually be usable
/// depending on the changeable state of the system.  For example, upon using a
/// valid global reference in a database operation, one may still encounter errors
/// like <SUBSCRIPT> if the collation of the global does not allow a particular
/// subscript, or if it contains a null subscript and null subscript support is
/// turned off.
ClassMethod IsValid(%val As GlobalReference, Output normalized As GlobalReference) As %Status
{
}

/// Quotes subscripts for display purposes and converts "" to an end-of-global marker for display purposes
///
ClassMethod LogicalToDisplay(%val As GlobalReference) As %String
{
}

/// Converts from quoted display form back to normalized GlobalReference format, or -1 on error
///
ClassMethod DisplayToLogical(%val As %Binary) As GlobalReference
{
}

/// Global References are not limited by number of characters, but by the length of their encoded representation
Parameter MAXLEN As INTEGER;

}
