/// Utility class to save and load SecurityContextToken from WS-SecureConversation 1.3.
/// This class is used by %SOAP.WSSC.SecurityContextToken to do the work that must be done
/// by a class in the %SYS package.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %SYS.SecurityContextToken Extends %RegisteredObject [ System = 3 ]
{

/// Save this SecurityContextToken in a system wide global.
/// The global format is:
///    ^SYS("SOAPContext",Identifier,Instance)=$lb(type,ExpiresInSeconds,Key,AppliesTo,any,wsuId as $list,MustNotSendCancel)
/// The index for cleanup is
///    ^SYS("SOAPContext",0,ExpiresInSeconds,Identifier,Instance)=""
/// where Instance is $c(0) if no Instance and type is always = 1 for SecurityContextToken.
ClassMethod Save(sct As %SOAP.WSSC.SecurityContextToken) As %Status [ Internal ]
{
}

/// Retrieve the SecurityContextToken with this identifier for system wide global.
/// See Save method description for details.
ClassMethod Open(identifier As %xsd.anyURI, instance As %String = "") As %SOAP.WSSC.SecurityContextToken [ Internal ]
{
}

/// Retrieve the SecurityContextToken properties for token with this identifier for system wide global.
/// See Save method description for details.
ClassMethod Load(sct As %SOAP.WSSC.SecurityContextToken, keepId As %Boolean = 1, internal As %Boolean = 0) As %Boolean [ Internal ]
{
}

/// Log list of SecurityContextTokens
ClassMethod Log(terminal As %Boolean = 0) [ Internal ]
{
}

/// Remove expired tokens
ClassMethod Cleanup() [ Internal ]
{
}

/// Remove this token from context list
ClassMethod Remove(sct As %SOAP.WSSC.SecurityContextToken, internal As %Boolean = 0) [ Internal ]
{
}

/// Remove all security contexts
ClassMethod RemoveAll() [ Internal ]
{
}

}
