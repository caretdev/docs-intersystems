/// SecurityContextToken from WS-SecureConversation 1.3.
Class %SOAP.WSSC.SecurityContextToken Extends (%SOAP.WST.AbstractToken, %SOAP.Security.Element) [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/ws-sx/ws-secureconversation/200512";

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLPREFIX = "wsc";

Property Identifier As %xsd.anyURI;

Property Instance As %String(MAXLEN = "");

Property any As %XML.ElementExtension(XMLPROJECTION = "group");

/// The expiration in seconds since December 31, 1840
Property ExpiresInSeconds As %Integer(XMLPROJECTION = "none") [ Internal ];

/// The symmetric key to be used.
Property Key As %Binary(XMLPROJECTION = "none") [ Internal ];

/// The endpoint of the web service to which this token applies
Property AppliesTo As %xsd.anyURI(XMLPROJECTION = "none") [ Internal ];

/// If MustNotSendCancel is true, then token may nopt be cancelled.
Property MustNotSendCancel As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

Method %OnNew(initvalue As %String = "") As %Status [ Internal ]
{
}

/// Save this SecurityContextToken in a system wide global.
/// The global format is:
///    ^SYS("SOAPContext",Identifier,Instance)=$lb(type,ExpiresInSeconds,Key,AppliesTo,any,wsuId as $list,MustNotSendCancel)
/// The index for cleanup is
///    ^SYS("SOAPContext",0,ExpiresInSeconds,Identifier,Instance)=""
/// where Instance is $c(0) if no Instance and type is always = 1 for SecurityContextToken.
Method Save() As %Status [ Internal ]
{
}

/// Retrieve the SecurityContextToken with this identifier for system wide global.
/// See Save method description for details.
ClassMethod Open(identifier As %xsd.anyURI, instance As %String = "") As %SOAP.WSSC.SecurityContextToken [ Internal ]
{
}

/// Retrieve the SecurityContextToken properties for token with this identifier for system wide global.
/// See Save method description for details.
Method Load(keepId As %Boolean = 1) As %Boolean [ Internal ]
{
}

/// Copy the specified token to this token
Method Copy(sct As %SOAP.WSSC.SecurityContextToken) [ Internal ]
{
}

/// Log list of SecurityContextTokens
ClassMethod Log(terminal As %Boolean = 0) [ Internal ]
{
}

/// Remove this token from context list
Method Remove() [ Internal ]
{
}

/// Remove all security contexts
ClassMethod RemoveAll() [ Internal ]
{
}

/// Create a WS-SecureConversation security fault.
ClassMethod MakeFault(faultCode As %String) As %SOAP.Fault [ ServerOnly = 1 ]
{
}

/// Create a SecurityContextToken with Identifier set
ClassMethod Create() As %SOAP.WSSC.SecurityContextToken
{
}

/// Initialize the SecurityContextToken key.
Method InitializeKey(service As %SOAP.WebBase, algorithm As %String) As %Status [ Internal ]
{
}

/// Validate the SecurityContextToken key.
/// If invalid return an error code.
Method ValidateKey(service As %SOAP.WebBase) As %String [ Internal ]
{
}

/// Validate the security header element.
/// If invalid return an error code.
Method ValidateElement(document As %XML.Document, service As %SOAP.WebBase) As %String [ Internal ]
{
}

/// Reset the element.
Method Reset() [ Internal ]
{
}

/// Return true if the same Key.
Method Equals(credentials As %SOAP.WSSC.SecurityContextToken) As %Boolean
{
}

}
