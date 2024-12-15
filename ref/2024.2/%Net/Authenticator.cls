/// Implement the Simple Authentication and Security Layer (SASL)
/// as defined by RFC 2222.
///
/// This class will pick a security mechanism (e.g. CRAM-MD5)
/// from a list defined by the user of this class based on server
/// options.  The selected security mechanism will use its challenge-response
/// mechanism to authenticate this client with the selected server.
/// Currently no negotiation or support for a security layer is implemented.
/// <EXAMPLE>
/// #include %occOptions
/// #include %occStatus
///
/// </EXAMPLE>
Class %Net.Authenticator Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

/// The service name for the service being authenticated.
/// For example, SMTP authentication uses the service name "smtp".
Property ServiceName As %String;

/// The user name being authenticated.
/// No authentication will be attempted unless UserName and Password are supplied.
Property UserName As %Library.Username;

/// The password for the user name being authenticated.
Property Password As %String;

/// An access token for use with OAuth.
/// If an access token is supplied it is assumed that OAuth will be used instead of
/// basic auth.
Property AccessToken As %String;

/// An ordered, comma separated list of security mechanism names to be used for SASL
/// authentication.  Security mechanisms that are added to this list must inherit
/// from %Net.SASL.Base.  The default class name for these mechanisms is
/// %Net.SASL.&lt;mechanism name&gt; where &lt;mechanism name&gt; is the name of a SASL
/// mechanism with all characters except alphanumerics removed.  The class name may be
/// supplied explicitely in the format "&lt;mechanism name&gt;:&lt;class name&gt;".
/// InterSystems IRIS-supplied mechanisms are in the package %Net.SASL.
Property MechanismList As %String [ InitialExpression = "CRAM-MD5,XOAUTH2,LOGIN,PLAIN" ];

/// The SASL mechanism selected for this authentication sequence.
Property Mechanism As %Net.SASL.Base;

/// Find matching SASL mechanism from blank separated authlist and
/// return mechanism name and optional initial response for this mechanism.
Method Start(authlist As %String, ByRef mechanismName As %String, ByRef response As %String) As %Boolean
{
}

/// Return next response based on challenge using the selected mechanism.
Method Next(challenge As %String, ByRef response As %String) As %Boolean
{
}

/// Convert SASL mechanism list to an array where mechanismArray is the
/// number of mechanisms, mechanismArray(i) is the mechanism name and
/// classArray(i) is the associated class name.
Method GetMechanisms(ByRef mechanismArray, ByRef classArray) [ Private ]
{
}

}
