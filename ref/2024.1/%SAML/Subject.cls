/// A SAML Subject
Class %SAML.Subject Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "urn:oasis:names:tc:SAML:2.0:assertion";

Parameter ELEMENTQUALIFIED = 0;

Property NameID As %SAML.BaseID(XMLREF = 1, XMLTYPECONSTRAINT = "choice");

Property SubjectConfirmation As list Of %SAML.SubjectConfirmation(XMLPROJECTION = "element", XMLREF = 1);

/// Create SubjectConfirmation with specified SubjectConfirmation method.
/// The method argument should be $$$SAMLSenderVouches, $$$SAMLHolderOfKey or $$$SAMLBearer.
/// The NameID field must still be set for the Subject.
Method AddConfirmation(method As %String) As %Status
{
}

/// Create SubjectConfirmation and associated KeyInfo for holder-of-key SubjectConfirmation based X.509 credentials.
/// The NameID field must still be set for the Subject.
Method AddX509Confirmation(credentials As %SYS.X509Credentials, referenceOption As %Integer) As %Status
{
}

/// Create SubjectConfirmation and associated KeyInfo for holder-of-key SubjectConfirmation based on EncryptedKey.
/// The NameID field must still be set for the Subject.
Method AddEncryptedKeyConfirmation(encryptedKey As %XML.Security.EncryptedKey) As %Status
{
}

/// Create SubjectConfirmation and associated KeyInfo for holder-of-key SubjectConfirmation based on BinarySecret.
/// The NameID field must still be set for the Subject.
Method AddBinarySecretConfirmation(binarySecret As %SOAP.WST.BinarySecret) As %Status
{
}

}
