/// The implementation of the CRAM-MD5 SASL security mechanism
/// to be used with %Net.Authenticator, our implementation of the Simple Authentication
/// and Security Layer (SASL) as defined by RFC 2222.
Class %Net.SASL.CRAMMD5 Extends %Net.SASL.Base [ Not ProcedureBlock, System = 3 ]
{

/// The name of the security mechanism.
/// This name must be one of SASL mechanism names that is registered with IANA.
Property MechanismName As %String [ InitialExpression = "CRAM-MD5" ];

/// State of client side of authentication:<br>
/// 1 - return CRAM-MD5 result
Property state As %Integer [ Private ];

/// Start authentication based on UserName and Password using the PLAIN SASL mechanism.
Method Start(ByRef response As %String) As %Boolean
{
}

/// Return next response based on challenge using the PLAIN SASL mechanism.
/// Return value is false to indicate abort.
Method Next(challenge As %String, ByRef response As %String) As %Boolean
{
}

/// Compute keyed-MD5 digest.
Method makeDigest(challenge As %String, secret As %String) As %String [ Private ]
{
}

/// Return string with each character converted to lower case hex.
Method ConvertToHex(str As %String) As %String [ Private ]
{
}

}
