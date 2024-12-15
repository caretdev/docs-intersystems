/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.Security.EncryptedData+xml">Encrypting XML Documents</a>.
/// and <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.Security.EncryptedData+soap">Encrypting SOAP Security Headers</a>.
/// </p>
/// XML Encryption element.
Class %XML.Security.EncryptedData Extends %XML.Security.EncryptedType [ System = 4 ]
{

Parameter XMLFORMAT = "literal";

Parameter NAMESPACE = "http://www.w3.org/2001/04/xmlenc#";

Parameter ELEMENTQUALIFIED = 1;

/// Override of %XML.Security.EncryptedType property to allow > 32k of data
Property CipherData As %XML.Security.CipherDataStream(XMLREF = 1) [ Required ];

/// Unchanged override of %XML.Security.EncryptedType property to maintain element position.
Property EncryptionProperties As %XML.Security.EncryptionProperties(XMLREF = 1);

/// ReferenceOption argument from the Create call.
Property ReferenceOption As %String(XMLPROJECTION = "none") [ Internal ];

/// The key element which contains the key material to use for creating the Key.
/// The type of this property depends on the reference option.
Property KeyElement As %XML.Security.EncryptedKey(XMLPROJECTION = "none") [ Internal ];

/// Security header element child to be encrypted.
/// If Body to be encrypted, then "".
Property EncryptedPart As %SOAP.Security.Element(XMLPROJECTION = "none") [ Internal ];

/// If true, then the SOAP Body is encrypted.
Property IsBodyEncrypted As %Boolean(XMLPROJECTION = "none") [ Internal ];

/// Create a EncryptedData element that is to be referenced from a ReferenceList Security element and
/// that is to carry content encrypted with a symmetric key specified by its KeyInfo element.
/// <ul>
/// <li>keyElement is the Security element which will supply the symmetric key.
/// keyElement is meaningful only when referenceOption specified.  See referenceOption for details.</li>
/// <li>The elementToEncrypt argument specifies the oref of the element to be encrypted.
/// It is currently only valid to encrypt the body or a Security element.
/// The default is "" which means to encrypt the body.</li>
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
/// The keyElement argument must be specified and is the DerivedKeyToken element.
/// The key size to be used for this EncryptedData element must be specified by setting
/// the Algorithm property or by setting the Length property of the DerivedKey.</li>
/// <li>$$$SOAPWSReferenceSCT is reference by wsu:Id to a SecurityContextToken element in this message.
/// The keyElement argument must be specified and is the SecurityContextToken element.</li>
/// <li>$$$SOAPWSReferenceSCTIdentifier is reference by Identifier and Instance to a SecurityContextToken
/// element not necessarily in this message.
/// The keyElement argument must be specified and is the SecurityContextToken element.</li>
/// </ul>
/// </ul>
ClassMethod Create(keyElement As %XML.Security.EncryptedKey = "", elementToEncrypt As %SOAP.Security.Element, referenceOption As %Integer = "") As %XML.Security.EncryptedData
{
}

/// Create an EncryptedData element
ClassMethod CreateFromEncryptedKey(encryptedKey As %XML.Security.EncryptedKey, elementToEncrypt As %SOAP.Security.Element) As %XML.Security.EncryptedData [ Internal ]
{
}

/// EncryptStream encrypts messageStream and stores the encrypted content of
/// messageStream as the CipherData.
/// This completed EncryptedData instance may be exported using %XML.Writer to create an EncyptedData
/// element as required by the XML Encryption specification.<br><br>
///
/// <var>messageStream</var> is the stream containing the data to be encrypted.
/// <var>messageStream</var> must be positioned before calling EncryptStream --
/// for example by calling Rewind first.<br><br>
///
/// <var>encryptedKeys</var> is a %ListOfObjects of instances of %XML.Security.EncryptedKey.
/// The EncyptedStream method will compute a common random, symmetric key for all the elements
/// in <var>encryptedKeys</var> and store the encrypted symmetric key  in the EncryptedKey instance.
/// Encryption of the symmetric key is done using the
/// public key from the X.509 credentials associated with the EncyptedKey instance.
/// The result is that <var>messageStream</var> may be decrypted by any
/// recipient that has the private key associated with the X.509 certificate in
/// one of the EncryptedKey instances.<br><br>
///
/// The default value of any property of EncryptedData, such as Algorithm, Type and RequireBestEntropy,
/// may be overridden before calling EncryptStream.<br><br>
///
/// The following example encrypts messageStream based on the certifcates in the credentials
/// called cred1 and cred2.<br><br>
/// <example>
/// set encryptedKeys=##class(%ListOfObjects).%New()
/// set x5091 = ##class(%SYS.X509Credentials).GetByAlias("cred1")
/// do encryptedKeys.Insert(##class(#XML.Security.EncryptedKey).CreateX509(
/// 			x5091,,$$$KeyInfoX509SKI))
/// set x5092 = ##class(%SYS.X509Credentials).GetByAlias("cred2")
/// do encryptedKeys.Insert(##class(#XML.Security.EncryptedKey).CreateX509(
/// 			x5092,,$$$KeyInfoX509SKI))
/// set encryptedData=##class(#XML.Security.EncryptedData).%New()
/// set encryptedData.Algorithm=$$$SOAPWSaes256cbc ; default is $$$SOAPWSaes128cbc
/// set encryptedData.Type=$$$SOAPWSEncryptElement ; default is $$$SOAPWSEncryptContent
/// do messageStream.Rewind()
/// set status=encryptedData.EncryptStream(messageStream, encryptedKeys)
/// if $$$ISERR(status) .... handle error ....
/// </example>
Method EncryptStream(messageStream As %BinaryStream, encryptedKeys As %ListOfObjects(ELEMENTTYPE="%XML.Security.EncryptedKey")) As %Status
{
}

/// Validate a %XML.Document containing a parsed XML document which contains an EncryptedData
/// element and EncryptedKey elements.
///
/// <var>document</var> is the parsed document.<br><br>
/// If decryption is valid, the <var>document</var> argument is updated with a
/// new document which has the EncryptedData element replaced by the decypted text
/// and true (1) is returned.  If invalid return false (0).<br><br>
///
/// <var>encryptedKeys</var> is a %ListOfObjects of instances of %XML.Security.EncryptedKey.
/// The ValidateDocument method will decrypt the CipherData in the EncryptedData element
/// found in the document based on one of the EncryptedKey elements in encryptedKeys.
/// Any EncryptedKey elemetns which do not result in successful decryption are ignored.
/// The result is that the EncryptedData in <var>document</var> may be decrypted by any
/// recipient that has the private key associated with the X.509 certificate in
/// one of the EncryptedKey instances.<br><br>
///
/// The following example assumes a single argument web service method with the argument named <var>arg</var>.
/// This will usually be the case with an entire message being the argument since
/// Parameter ARGUMENTSTYLE = "message".  The EncryptedData to validate and decrypt is the SOAP message whose
/// %XML.Document is contained in the ImportHandler property of the service.
///
/// <example>
/// // Keys element is property containing a list of EncryptedKey elements.
/// // Keys is an arbitrary property name
/// set document=..ImportHandler
/// if ##class(%XML.Security.EncryptedData).ValidateDocument(.document,arg.Keys) {
/// 	set reader=##class(%XML.Reader).%New()
/// 	set reader.Document=document  ; updated document to a reader instance
/// 	do reader.Correlate(....      ; Use reader to create classes
/// 	... Use Next loop to process payload ...
/// } else {
/// 	... process error ...
/// }
/// </example>
ClassMethod ValidateDocument(ByRef document As %XML.Document, encryptedKeys As %ListOfObjects(ELEMENTTYPE="%XML.Security.EncryptedKey")) As %Boolean
{
}

/// Initialize will be called from InitializeForService in ReferenceList.
Method Initialize(service As %SOAP.WebBase, header As %SOAP.Security.Header, key As %Binary = "") As %Status [ Internal ]
{
}

/// Validate algorithm and key size
Method ValidateKeyAlgorithm() As %String [ Internal ]
{
}

/// Do the encryption for this EncryptedData element.
Method Encrypt(header As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Encryption of a Security element.
Method EncryptElement(element As %SOAP.Security.Element, header As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Actual encryption of the SOAP Body.
Method EncryptBody(header As %SOAP.Security.Header) As %Status [ Internal ]
{
}

/// Actual encryption of a stream
Method ComputeCipherData(stream As %FileBinaryStream) As %Status [ Internal ]
{
}

/// Reset the element.
Method Reset()
{
}

/// Validate and decrypt this EncryptedData element for SOAP Body.
ClassMethod Decrypt(document As %XML.Document, service As %SOAP.WebBase, ref As %XML.Security.DataReference, key As %Binary, mimeAttachments As %Net.MIMEPart = "") As %Status [ Internal ]
{
}

/// Validate received EncryptedData and get key if needed
Method Validate(key As %Binary, service As %SOAP.WebBase) As %String [ Internal ]
{
}

/// Validate the security header element.
/// If invalid return an error code.
Method ValidateElement(document As %XML.Document, service As %SOAP.WebBase) As %String [ Internal ]
{
}

}
