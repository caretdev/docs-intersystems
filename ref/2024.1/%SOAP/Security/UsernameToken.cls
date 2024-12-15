/// UsernameToken for SOAP Security header.
Class %SOAP.Security.UsernameToken Extends %SOAP.Security.Element [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd";

Property Username As %String(CONTENT = "escape", MAXLEN = "");

Property Password As %SOAP.Security.Password;

Property Nonce As %Binary(MAXLEN = "");

Property Created As %xsd.dateTime(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd", XMLREF = 1);

/// Create a UsernameToken element containing the specified username.
/// The password is specified by the type argument as follows:
/// <ul>
/// <li>$$$SOAPWSPasswordText is a plain text password.  This is the default.</li>
/// <li>$$$SOAPWSPasswordDigest is a password digest based on the specified password.
///   The password digest, Nonce and Created timestamp are derived as specified by WS-Security 1.1.<br>
///   $$$SOAPWSPasswordDigest is available only for SOAP clients interacting with third-party servers that support it.
///   PasswordDigest authentication requires the server to store the plain-text password, which is not acceptable in a
///   modern security environment. The PasswordDigest algorithm is a legacy feature. To protect the password in a
///   &lt;UsernameToken>, you should use SSL/TLS, encrypt the &lt;UsernameToken>, or both.</li>
/// <li>$$$SOAPWSPasswordNone means no password element is included.</li>
/// </ul>
ClassMethod Create(username As %String, password As %String, type As %String) As %SOAP.Security.UsernameToken
{
}

/// Validate the security header element.
/// If invalid return an error code.
Method ValidateElement(document As %XML.Document, service As %SOAP.WebBase) As %String [ Internal ]
{
}

}
