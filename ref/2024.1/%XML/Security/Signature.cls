/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.Security.Signature+xml">Signing XML Documents</a>.
/// and <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.Security.Signature+soap">Adding Digital Signatures</a>.</p>
/// XML Signature element.
Class %XML.Security.Signature Extends %SOAP.Security.Element [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter ELEMENTQUALIFIED = 1;

/// The PreProcessed flag indicates whether the signature data in this signature
/// is already valid and should not be recalculated when preparing a SOAP request for
/// retransmission. In general this would only be useful when attempting to forward
/// a specific signed entity such as a SAML assertion which contains a Signature element.
Property PreProcessed As %Boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0, Internal ];

/// Local Id attribute defined for XML Signature
Property Id As %String(MAXLEN = "", XMLPROJECTION = "attribute") [ Internal ];

Property SignedInfo As %XML.Security.SignedInfo [ Internal ];

Property SignatureValue As %xsd.base64Binary(CANONICALXML = 1) [ Internal ];

Property KeyInfo As %XML.Security.KeyInfo [ Internal ];

Property Object As %XML.Security.Object [ Internal ];

/// SignatureOptions specifies which parts of the message are to be signed.
/// See %soap.inc definitions of $$$SOAPWSInclude.... for possibilities.
Property SignatureOptions As %Integer(XMLPROJECTION = "none") [ Internal ];

/// If signing is based on X509 certificate, this is the X509 certificate class.
/// If signing is based on EncryptedKey, BinarySecret, DerivedKeyToken or SecurityContextToken element,
/// then this element and Key property is defined.
Property X509Credentials As %RawString(XMLPROJECTION = "none") [ Internal ];

/// The symmetric key for hmac-sha1 signing.
Property Key As %Binary(XMLPROJECTION = "none") [ Internal ];

/// ReferenceOption argument from the Create call.
Property ReferenceOption As %String(XMLPROJECTION = "none") [ Internal ];

/// The default DigestMethod Algorithm for any references added to this Signature.
Property DigestMethodAlgorithm As %String(XMLPROJECTION = "none") [ Internal ];

/// Save the node id of this element in the tree during import for canonicalizing
/// later during signature verification.
Property NodeId As %String(XMLPROJECTION = "none") [ Internal ];

/// If true, then the SOAP Body is signed
Property IsBodySigned As %Boolean(XMLPROJECTION = "none") [ Internal ];

/// If true, this signature has been confirmed by a WS-Security 1.1 SubjectConfirmation element.
Property Confirmed As %Boolean(XMLPROJECTION = "none") [ Internal ];

/// Save the node if when getting a new class instance.
ClassMethod XMLNew(document As %XML.Document, nodeId As %Integer, containerOref As %RegisteredObject = "") As %RegisteredObject
{
}

/// Create a Signature element that is to be signed using the RSA private key that
/// is associated with the specified X509 certificate.
/// <ul>
/// <li>The first argument can be a %SYS.X509Credentials instance, a %SAML.Assertion instance, or a %SOAP.Security.BinarySecurityToken instance. This argument indicates the X509 certificate to use.
///    <ul>
///    <li>If this argument is a %SYS.X509Credentials instance, the instance should refer to the X509 certificate to use.</li>
///    <li>If this argument is a %SAML.Assertion instance, its SubjectConfirmation should be based on the X.509 credentials to use.</li>
///    <li>If this argument is a %SOAP.Security.BinarySecurityToken instance, it should contain the X.509 certificate to use; this is the technique for a direct reference.</li>
///    </ul></li>
/// <li>The signatureOptions argument specifies the parts of the SOAP message to be signed.
/// The default is to sign all addressing header, body and timestamp.
/// See %soap.inc definitions of $$$SOAPWSInlcude.... for possibilities.</li>
/// <li>The referenceOption argument specifies the type of reference to create.
/// See %soap.inc definitions of $$$SOAPWSReference.... and $$$KeyInfoX509....
/// The default is to use a direct reference if the first argument is a binary security token or to
/// use the Thumbprint if the first argument is a %SYS.X509Credentials instance.</li>
/// <li>If no signature is returned the status argument is set to the error %Status.</li>
/// </ul>
ClassMethod CreateX509(credentials As %SYS.X509Credentials = "", signatureOptions As %Integer, referenceOption As %Integer, Output status As %Status) As %XML.Security.Signature
{
}

/// Create a Signature element that is to be signed using the hmac-sha1 algorithm
/// with a symmetric key specified by its KeyInfo element.
/// <ul>
/// <li>keyElement is the Security element which will supply the symmetric key.
/// keyElement is meaningful only when referenceOption specified.  See referenceOption for details.</li>
/// <li>The signatureOptions argument specifies the parts of the SOAP message to be signed.
/// The default is to sign all addressing header, body and timestamp.
/// See %soap.inc definitions of $$$SOAPWSInlcude.... for possibilities.</li>
/// <li>The referenceOption argument specifies the type of reference which will be in the KeyInfo.
/// If referenceOption is "" or not specified, no KeyInfo is created.  This is the default.
/// <ul>
/// <li>$$$SOAPWSReferenceEncryptedKey is reference to an EncryptedKey element in this message.
/// The keyElement argument must be specified and is the EncryptedKey element.</li>
/// <li>$$$SOAPWSReferenceEncryptedKeySHA1 is reference by the SHA1 hash of the key contained
/// in the EncryptedKey element specified as the first argument.
/// If the keyElement is not specified, the key from the first EncryptedKey element in the received message
/// is used.</li>
/// <li>$$$SOAPWSReferenceDerivedKey is reference to a DerivedKeyToken element in this message.
/// The keyElement argument must be specified and is the DerivedKeyToken element.</li>
/// <li>$$$SOAPWSReferenceSCT is reference by wsu:Id to a SecurityContextToken element in this message.
/// The keyElement argument must be specified and is the SecurityContextToken element.</li>
/// <li>$$$SOAPWSReferenceSCTIdentifier is reference by Identifier and Instance to a SecurityContextToken
/// element not necessarily in this message.
/// The keyElement argument must be specified and is the SecurityContextToken element.</li>
/// <li>$$$SOAPWSSAML is reference to SAML Assertion which contains an EncryptedKey or BinarySecret element
/// in the KeyInfo that is in the SubjectConfirmationData.
/// The keyElement argument must be specified and is the SAML Assertion element.</li>
/// </ul>
/// </ul>
ClassMethod Create(keyElement As %RegisteredObject = "", signatureOptions As %Integer, referenceOption As %Integer = "") As %XML.Security.Signature
{
}

/// Get default digest, signature and hmac methods
ClassMethod GetDefaultMethods(Output digest As %String, Output signature As %String, Output hmac As %String) [ Internal ]
{
}

/// Set the digest method algorithm to be used for signing.
/// The algorithm is reflected in the Algorithm attribute of the DigestMethod element
/// of each Reference element of the SignedInfo element of the Signature element.
/// Possible values for algortihm are $$$SOAPWSsha1, $$$SOAPWSsha256, $$$SOAPWSsha384 and $$$SOAPWSsha512.
Method SetDigestMethod(algorithm As %String)
{
}

/// Set the signature method algorithm to be used for signing.
/// The algorithm is reflected in the Algorithm attribute of the SignatureMethod element
/// the SignedInfo element of the Signature element.
/// Possible values for algortihm are $$$SOAPWSrsasha1, $$$SOAPWSrsasha256, $$$SOAPWSrsasha384 and $$$SOAPWSrsasha512.
Method SetSignatureMethod(algorithm As %String)
{
}

/// SignStream completes the Signature element by adding the SignedInfo based on X509Credentials and
/// computes the signature value for the XML stream to be signed.
/// <var>messageStream</var> is a stream containing the XML to be signed.<br><br>
///
/// If the document is an MTOM document, then the optional <var>mimeAttachments</var> argument
/// contains a single MIME part which has each MIME section as one of its child <var>Parts</var>.<br><br>
///
/// The following example creates a stream which contains an XML document whose
/// root object is is given by the oref obj.  This oref is assumed to be an
/// instance of an XML-enabled class that has the following properties:
/// <ul>
/// <li>A property that is projected to XML as the Id attribute. In this
/// example, this is the Signed.Id property.</li>
/// <li>property that is intended to contain the signature itself and that is
/// projected to XML as the <Signature> element. In this example, this is the
/// Signature property.</li>
/// </ul>
///
/// <example>
/// set writer=##class(%XML.Writer).%New()
/// set stream=##class(%FileBinaryStream).%New()
/// set status=writer.OutputToStream(stream)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// set status=writer.RootObject(obj)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
///
/// set x509 = ##class(%SYS.X509Credentials).GetByAlias("MyCredentials")
/// set signature=##class(%XML.Security.Signature).CreateX509(
///                 x509,$$$SOAPWSIncludeNone,$$$KeyInfoX509Certificate)
/// // Signature based on id of contained Signed element
/// // Note that the name Signed is arbitrary.
/// do signature.AddReference(
///   ##class(%XML.Security.Reference).Create(obj.Signed.id))
/// set status=signature.SignStream(stream)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// // Signature element is property of any name
/// // Signature is an arbitrary property name
/// set obj.Signature=signature
///
/// // Output the signed stream now that the signature is computed.
/// set stream=##class(%FileBinaryStream).%New()
/// set status=writer.OutputToStream(stream)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// set status=writer.RootObject(obj)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// </example>
Method SignStream(messageStream As %BinaryStream, mimeAttachments As %Net.MIMEPart = "") As %Status
{
}

/// SignDocument completes the Signature element by adding the SignedInfo based on X509Credentials and
/// computes the signature value for the parsed XML document to be signed.
/// <var>document</var> is an %XML.Document obtained by parsing the stream ot be signed.<br><br>
///
/// If the document is an MTOM document, then the optional <var>mimeAttachments</var> argument
/// contains a single MIME part which has each MIME section as one of its child <var>Parts</var>.<br><br>
///
/// The following example creates a stream which contains an XML document whose
/// root object is is given by the oref obj.  This oref is assumed to be an
/// instance of an XML-enabled class that has the following properties:
/// <ul>
/// <li>A property that is projected to XML as the Id attribute. In this
/// example, this is the Signed.Id property.</li>
/// <li>property that is intended to contain the signature itself and that is
/// projected to XML as the <Signature> element. In this example, this is the
/// Signature property.</li>
/// </ul>
///
/// <example>
/// set writer=##class(%XML.Writer).%New()
/// set stream=##class(%FileBinaryStream).%New()
/// set status=writer.OutputToStream(stream)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// set status=writer.RootObject(obj)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
///
/// set x509=##class(%SYS.X509Credentials).GetByAlias("MyCredentials")
/// set signature=##class(%XML.Security.Signature).CreateX509(
///                 x509,$$$SOAPWSIncludeNone,$$$KeyInfoX509Certificate)
/// // Signature based on id of contained Signed element
/// // Note that name Signed is arbitrary.
/// do signature.AddReference(
///   ##class(%XML.Security.Reference).Create(obj.Signed.id))
/// // We parse the stream to create a document which we will sign.
/// set status=
///   ##class(%XML.Document).GetDocumentFromStream(stream,.document)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// set status=signature.SignDocument(document)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// // Signature element is property of any name
/// // Signature is arbitrary property name
/// set obj.Signature=signature
///
/// // Output the signed stream now that the signature is computed.
/// set stream=##class(%FileBinaryStream).%New()
/// set status=writer.OutputToStream(stream)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// set status=writer.RootObject(obj)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// </example>
Method SignDocument(document As %XML.Document, mimeAttachments As %Net.MIMEPart = "") As %Status
{
}

/// Validate a %XML.Document containing a parsed XML document which contains a signature.
/// The %XML.Signature element must be obtained from the same instance of
/// %XML.Document that you are validating.
/// If invalid return an error %Status.<br><br>
///
/// If the document is an MTOM document, then the optional <var>mimeAttachments</var> argument
/// contains a single MIME part which has each MIME section as one of its child <var>Parts</var>.<br><br>
///
/// The CAFile argument is the full path of file which contains the certificate authority
/// certificates which are to be used to validate the signing certificate.<br><br>
///
/// The following example assumes a single argument web service method with the argument named <var>arg</var>.
/// This will usually be the case with an entire message being the argument since
/// Parameter ARGUMENTSTYLE = "message".  The document to validate is the SOAP message whose
/// %XML.Document is contained in the ImportHandler property of the service.
/// Also exclusive canonicalization must be used because the entire SOAP envelope is represented in ..Importhandler.
/// If inclusive canonicalization needs to be used, then the ProcessBody or ProcessBodyNode methods
/// must be used which allows access to just the Body contents as a document.
///
/// <example>
/// // Signature element is property of any name.
/// // Signature is arbitrary property name
/// set signature=arg.Signature
/// set status=signature.ValidateDocument(..ImportHandler)
/// if $$$ISERR(status) do $system.OBJ.DisplayError(status) quit
/// </example>
Method ValidateDocument(document As %XML.Document, mimeAttachments As %Net.MIMEPart = "", CAFile As %String = "") As %Status
{
}

/// Initialize the signature based on the SignatureOptions of a web client or service.
/// %XML.Security.Signature may be initialized directly by using calls to AddReference.
Method InitializeForService(service As %SOAP.WebBase, header As %SOAP.Security.Header = "") As %Status [ Internal ]
{
}

/// Add reference to WS-ReliableMessaging headers
Method AddRM(service As %SOAP.WebBase) [ Internal ]
{
}

/// Validate correct size to the Signature element
Method InitializeValue(service As %SOAP.WebBase) As %Status [ Internal, Private ]
{
}

/// Add a reference to XML element using an %XML.Security.Reference.
/// The reference may be created by using the ##class(%XML.Security.Reference).Create method.
/// If doNotReuse is true, then this reference will be removed during Reset
Method AddReference(reference As %XML.Security.Reference, doNotReuse As %Boolean = 0)
{
}

/// Complete the Signature element and update the message stream with the new SignatureValue
Method Perform(messageStream As %BinaryStream, header As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Complete the Signature element by adding the SignedInfo based on X509Credentials and
/// compute the signature value.
Method Sign(document As %XML.Document, header As %SOAP.Security.Header, mimeAttachments As %Net.MIMEPart) As %Status [ Internal ]
{
}

/// Get node based on id from URI.  Return nodeId
Method GetNodeById(uri As %String, document As %XML.Document, node As %XML.Node) As %String [ Internal, Private ]
{
}

/// Reset the Signature element.
Method Reset() [ Internal ]
{
}

/// Validate the security header element.
/// If invalid return an error code.<br><br>
/// If the document is an MTOM document, then the optional <var>mimeAttachments</var> argument
/// contains a single MIME part which has each MIME section as one of its child <var>Parts</var>.<br><br>
/// The CAFile argument is the full path of file which contains the certificate authority
/// certificates which are to be used to validate the signing certificate.<br><br>
Method ValidateElement(document As %XML.Document, service As %SOAP.WebBase = "", mimeAttachments As %Net.MIMEPart = "", CAFile As %String = "") As %String [ Internal ]
{
}

/// Compute SHA1 digest of an element
Method ComputeSha1Digest(node As %XML.Node, signNodeId As %String, writer As %XML.Writer, prefixList As %String, bitlength As %Integer, isSTR As %Boolean, ByRef text As %FileBinaryStream, mimeAttachments As %Net.MIMEPart) As %xsd.base64Binary
{
}

}
