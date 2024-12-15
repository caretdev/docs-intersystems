///
/// A pseudorandom function suitable for use with InterSystems IRIS' implementation of PBKDF2.
///
///
///
/// Valid values are "N/A", "SHA1", "SHA224", "SHA256", "SHA384", and "SHA512".
///
/// "N/A" values are for use with passwordless users and should not be passed to PBKDF2 functions.
///
Class Security.Datatype.PBKDF2Alg Extends %String [ System = 2 ]
{

Parameter PROPERTYVALIDATION = 1;

///
/// Given a name, returns the bit-length of that function.
///
ClassMethod LogicalToBitLength(%val As %String) As %Library.Integer [ CodeMode = expression ]
{
}

ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = expression ]
{
}

}
