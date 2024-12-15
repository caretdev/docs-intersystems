/// The implementation of the LOGIN SASL security mechanism
/// to be used with %Net.Authenticator, our implementation of the Simple Authentication
/// and Security Layer (SASL) as defined by RFC 2222.
Class %Net.SASL.LOGIN Extends %Net.SASL.Base [ Not ProcedureBlock, System = 3 ]
{

/// The name of the security mechanism.
/// This name must be one of SASL mechanism names that is registered with IANA.
Property MechanismName As %String [ InitialExpression = "LOGIN" ];

/// State of client side of authentication:<br>
/// 1 - initial
/// 2 - userName previously returned
/// 3 - password previously returned
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

}
