/// OASIS Web Services Security SOAP header.
Class %SOAP.Security.Header Extends %SOAP.Header [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd";

Parameter XMLTYPE = "Security";

/// The actual XML namespace for this header
Property Namespace As %String(MAXLEN = "", XMLPROJECTION = "none");

/// Security error code when processing header
Property ErrorCode As %String(MAXLEN = "", XMLPROJECTION = "none") [ Internal ];

/// The UsernameToken which was in an imported Security header
Property UsernameToken As %SOAP.Security.UsernameToken(XMLPROJECTION = "none");

/// If the Security header has a Signature, then the %XML.Security.Signature instance
/// instance corresponding to the signature is stored here.
Property Signature As %XML.Security.Signature(XMLPROJECTION = "none");

/// The SecurityContextToken obtained from the received Security header while
/// the SecurityContextToken is being validated.  This token may be used in the response.
Property SecurityContextToken As %SOAP.WSSC.SecurityContextToken(XMLPROJECTION = "none");

/// The security elements projected to XML.
Property SecurityElement As list Of %SOAP.Security.Element(XMLPROJECTION = "element", XMLREF = 1, XMLTYPECONSTRAINT = "choice") [ Internal ];

/// The count of Signature and EncryptedKey element definitions to be output in the WS-Security header.
Property ElementCount As %Integer(XMLPROJECTION = "none") [ Internal ];

/// If true, then there is at least one Signature element.
Property IsSigned As %Boolean(XMLPROJECTION = "none") [ Internal ];

/// If true, then the Body element is encrypted.
Property IsEncrypted As %Boolean(XMLPROJECTION = "none") [ Internal ];

/// If IsSigned or IsEncrypted, then WSStream is the stream used to output the SOAP message.
Property WSStream As %RawString(XMLPROJECTION = "none") [ Internal ];

/// Set order of signing based on WS-Policy rules.
Property WSPolicyOrder As %Boolean(XMLPROJECTION = "none") [ Internal ];

/// Element index of main signature for WS-Policy Asymmetric binding
Property WSPolicySignatureIndex As %Integer(XMLPROJECTION = "none") [ Internal ];

/// Element index of body encryption element (ReferenceList or EncryptedKey) for WS-Policy Asymmetric binding.
Property WSPolicyEncryptionIndex As %Integer(XMLPROJECTION = "none") [ Internal ];

/// %XML.Namespaces instance to be used for exportign Security elements.
Property SecurityNamespaces As %XML.Namespaces(XMLPROJECTION = "none") [ Internal ];

/// The internal buffer index for the body
Property BodyBufferIndex As %Integer(XMLPROJECTION = "none") [ Internal ];

/// The internal buffer index for this Security header
Property HeaderBufferIndex As %Integer(XMLPROJECTION = "none") [ Internal ];

/// Save the SOAP prefix used for this header
Property SoapPrefix As %String(XMLPROJECTION = "none") [ Internal ];

/// Save the SOAP version used for this header
Property SoapVersion As %String(XMLPROJECTION = "none") [ Internal ];

/// If <property>Base64LineBreaks</property> is true (1), then remove line breaks
/// from base64 encoded XML output for all properties of type %Binary or %xsd.base64Binary.
/// The default is 0 which will be to not include line breaks.
/// If this property is specified, then it will override the BASE64LINEBREAKS parameter.
Property Base64LineBreaks As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// Return the default WS-Security namespace
ClassMethod GetSecurityNamespace() [ CodeMode = expression ]
{
}

/// Add an element to the Security header.<br>
/// If position is specified as a %SOAP.Security.Element subclass, then the element is added after this element.
/// Otherwise, position is the %Integer position at which to the element is added.
/// If position=-1, then the element is added after all elements.<br>
/// If position is not specified, the position depends on which type of element is added.
/// Token elements are those which do not specify signature (Signature) or encryption (ReferenceList or EncryptedKey
/// with ReferenceList) are added after all previously added token elements.
/// The exception is the Timestamp element always goes first.<br>
/// If any tokens which are to be encrypted are added,
/// they should be added after the EncryptedKey element is added and
/// should be postioned after the EncryptedKey specified as the position argument.<br>
/// Elements which specify signature (Signature) or encryption (ReferenceList or EncryptedKey
/// with ReferenceList) are added following all tokens elements and thus before all other non-token elements.<br>
/// This method replaces the deprecated methods AddToken and AddElement.
/// There is no need to modify existing code, but if you choose to do so,
/// you can simply replace references to AddToken and AddElement with
/// references to AddSecurityToken. It is not necessary to adjust the argument lists.
Method AddSecurityElement(element As %SOAP.Security.Element, position = "") As %Status
{
}

/// Add a token to the Security header.
/// - element is element to add<br>
/// - baseElement is optional element after which element is added.<br><br>
/// Timestamp element always goes first, followed by token in order added.
/// Signature and Encryption elements should not be added using this method.<br><br>
/// If any tokens which are to be encrypted are added,
/// they should be added after the EncryptedKey element is added and
/// should be postioned after the EncryptedKey specified as the baseElement argument.
Method AddToken(element As %SOAP.Security.Element, baseElement As %SOAP.Security.Element = "") [ Internal ]
{
}

/// Add a Signature, EncryptedKey or ReferenceList element to the Security header.
/// The signature, EncryptedKey or ReferenceList is inserted at the position indicated by the position argument
/// which defaults to following all tokens and thus before all other non-token elements.
/// If position=-1, then the element is added after all elements.
Method AddElement(element As %RegisteredObject, position As %Integer = "") [ Internal ]
{
}

/// Initialize all signature and encryption elements
/// Return true if there any signature or encyption elements.
Method Initialize(service As %SOAP.WebBase, status As %Status) As %Boolean [ Internal ]
{
}

/// Write the SOAP Security header to the current device.
Method WriteSecurityHeader(namespaces As %XML.Namespaces, soapPrefix As %String, soapVersion As %String, mimeAttachments As %Net.MIMEPart) As %Status [ Internal ]
{
}

///  Perform all signature and encryption operations
Method Perform() As %Status [ Internal ]
{
}

/// Rewrite the Security header
Method UpdateSecurityHeader(mimeAttachments As %Net.MIMEPart = "") As %Status [ Internal ]
{
}

/// Reset all signature and encryption elements
Method Reset() [ Internal ]
{
}

/// Find the first security element of the specified type after position pos and return the element.
/// Return "" if no element of the specified type is found.
/// Types are Timestamp, BinarySecurityToken, UsernameToken, Signature, SignatureConfirmation, EncryptedKey.
Method FindElement(type As %String, ByRef pos As %String) As %SOAP.Security.Element
{
}

/// Find the last security element of the specified type and return the element.
/// Return "" if no element of the specified type is found.
/// Types are Timestamp, BinarySecurityToken, UsernameToken, Signature, SignatureConfirmation, EncryptedKey.
Method FindLastElement(type As %String, ByRef pos As %String) As %SOAP.Security.Element
{
}

/// Find the key from an EncryptedKey element which corresponds to the EncryptedKeySHA1 argument.
/// Return the key if found, else "".
Method FindByEncryptedKeySHA1(encryptedKeySHA1 As %Binary) As %SOAP.Security.Element
{
}

/// Find an EncryptedKey element.
/// Return the key if found, else "".
Method FindEncryptedKey(usedAsSigningKey As %Boolean) As %XML.Security.EncryptedKey
{
}

/// Remove the first security element of the specified type and return the element.
/// Return "" if no element of the specified type is found.
/// Types are Timestamp, BinarySecurityToken, UsernameToken, Signature, EncryptedKey.
Method RemoveElement(type As %String) As %RegisteredObject [ Internal ]
{
}

/// Return true if the specified namespace is a valid namespace for a WS-Security header
ClassMethod IsSecurityNamespace(namespace As %String) As %Boolean [ CodeMode = expression ]
{
}

ClassMethod ImportSecurityHeader(ByRef document As %XML.Document, securityIn As %String, Output headerObj As %SOAP.Security.Header, mimeAttachments As %Net.MIMEPart) As %Status [ Internal ]
{
}

/// If MTOM, then return attachments for validation
ClassMethod MTOMAttachments() As %Net.MIMEPart [ Internal ]
{
}

Method ImportHeader(headerName As %String, format As %String, ByRef handler As %XML.Document, message As %Integer, ByRef status As %Status, mimeAttachments As %Net.MIMEPart, securityIn As %String, service As %SOAP.WebClient) As %Boolean [ Internal ]
{
}

/// Find and return the security element which is specified by the id argument.
Method GetElementById(id As %String, Output pos As %Integer) As %RegisteredObject [ Internal ]
{
}

/// Find the position of the specified security element.
Method GetElementPosition(element As %SOAP.Security.Element) As %Integer [ Internal ]
{
}

}
