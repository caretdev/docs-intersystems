/// The %SYS.X509Credentials class defines the X.509 credentials which consist
/// of an X.509 certificate and an optionally associated private key.
/// An optional OwnerList may be specified to restrict which users have access to
/// these credentials.  The normal ObjectScript and SQL methods for accessing this
/// data should not be used and will not work with normal security in order to
/// maintain the security of the credentials.
Class %SYS.X509Credentials Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Final, System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

Parameter VERSION [ Internal ] = 1;

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/SYS/X509Credentials.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

/// The IDKEY for the credentials is a unique user defined alias.
/// The Alias is defined on import and identifies the X.509 certificate and private key.
Property Alias As %String(MAXLEN = 150) [ Required ];

/// The optional comma separated list of usernames which may access these credentials.
/// If no OwnerList is specified, the credentials are available to any user.
Property OwnerList As %String(MAXLEN = "");

/// The X.509 certificate.
Property Certificate As %Binary(MAXLEN = "") [ Required ];

/// Setter method for Certificate.
Method CertificateSet(certificate As %Binary) As %Status [ Internal ]
{
}

/// The type of the associated private key.
/// Only RSA is supported initially.
Property PrivateKeyType As %String(VALUELIST = ",RSA,DSA") [ InitialExpression = "RSA", Required ];

/// The private key associated with the certificate stored as PEM encoded text.
/// The private key will be in memory only when set before save.
/// The private key will not be loaded from global during open since transient.
Property PrivateKey As %String(MAXLEN = "", XMLIO = "IN") [ Transient ];

/// Store private key only if user has %Admin_Secure.
Method PrivateKeySet(privateKey As %String) As %Status [ Internal, PlaceAfter = FieldNumber ]
{
}

/// Get private key only if user has %Admin_Secure.
Method PrivateKeyGet() As %String [ Internal, PlaceAfter = FieldNumber ]
{
}

/// Optional password for the private key.
/// The private key password will be in memory only when set before save.
/// The private key password will not be loaded from global during open since transient.
Property PrivateKeyPassword As %String(MAXLEN = 128, XMLIO = "IN") [ Transient ];

/// Set private key password.
Method PrivateKeyPasswordSet(privateKeyPassword As %String) As %Status [ Internal, PlaceAfter = FieldNumber ]
{
}

/// Get private key password only if user has %Admin_Secure.
Method PrivateKeyPasswordGet() As %String [ Internal, PlaceAfter = FieldNumber ]
{
}

/// This property is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
Property PrivateKeyExport As %String(MAXLEN = "", XMLIO = "OUT", XMLNAME = "PrivateKey") [ Internal, Transient ];

Method PrivateKeyExportGet() As %String [ Internal, Private ]
{
}

Method PrivateKeyExportSet(val As %String) As %Status [ Internal, Private ]
{
}

/// This property is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
Property PrivateKeyPasswordExport As %String(MAXLEN = 128, XMLIO = "OUT", XMLNAME = "PrivateKeyPassword") [ Internal, Transient ];

Method PrivateKeyPasswordExportGet() As %String [ Internal, Private ]
{
}

Method PrivateKeyPasswordExportSet(val As %String) As %Status [ Internal, Private ]
{
}

/// Returns if a private key is present even if no privileges.
Property HasPrivateKey As %Boolean [ InitialExpression = 0, Internal ];

/// File containing X.509 certificate(s) of trusted Certificate Authorities.<br>
/// Can be an absolute pathname or a pathname relative to the manager's directory.<br>
/// When WS-Security validates a Signature where the certificate is not included in
/// the SOAP message, the certificate is found in an %SYS.X509Credentials object.
/// If the CAFile property is specified in the %SYS.X509Credentials object, CAFile gives the path of the CA file.
/// If the CAFile property is not specified, then iris.cer in the mgr directory is used as the CA file.
Property CAFile As %String(MAXLEN = 255);

/// PeerNames is an optional comma separated list of peers which expect this
/// certificate to be used.  Each peer name will normally be a DNS name.
/// However, any application defined name may be used.
Property PeerNames As %String(MAXLEN = "");

/// X.509 SubjectKeyIdentifier from the certificate.
/// This property is only set via the LoadCertificate method.
Property SubjectKeyIdentifier As %Binary;

/// For SubjectKeyIdentifier to be read-only.
Method SubjectKeyIdentifierSet(value As %Binary) As %Status [ Internal, Private ]
{
}

/// SHA1 Thumbprint of the certificate
/// This property is only set via the LoadCertificate method.
Property Thumbprint As %Binary;

/// For Thumbprint to be read-only.
Method ThumbprintSet(value As %Binary) As %Status [ Internal, Private ]
{
}

/// SerialNumber of the certificate -- unique for the Issuer.
/// This property is only set via the LoadCertificate method.
Property SerialNumber As %String;

/// For SerialNumber to be read-only.
Method SerialNumberSet(value As %Binary) As %Status [ Internal, Private ]
{
}

/// Issuer DistinguishedName of the certificate.
/// This property is only set via the LoadCertificate method.
Property IssuerDN As %String(MAXLEN = "");

/// For IssuerDN to be read-only.
Method IssuerDNSet(value As %String) As %Status [ Internal, Private ]
{
}

/// Subject DistinguishedName of the certificate.
/// This property is only set via the LoadCertificate method.
Property SubjectDN As %String(MAXLEN = "");

/// For SubjectDN to be read-only.
Method SubjectDNSet(value As %String) As %Status [ Internal, Private ]
{
}

/// X.509 ValidityNotBefore from the certificate.
Property ValidityNotBefore As %TimeStamp [ Calculated, ReadOnly, SqlComputeCode = { Set {ValidityNotBefore} = $select({Certificate}="":"",1:$System.Encryption.X509GetField({Certificate},"ValidityNotBefore")) }, SqlComputed, Transient ];

/// Getter for ValidityNotBefore.
Method ValidityNotBeforeGet() As %TimeStamp [ CodeMode = expression, Internal ]
{
}

/// For ValidityNotBefore to be read-only.
Method ValidityNotBeforeSet(value As %TimeStamp) As %Status [ Internal, Private ]
{
}

/// X.509 ValidityNotAfter from the certificate.
Property ValidityNotAfter As %TimeStamp [ Calculated, ReadOnly, SqlComputeCode = { Set {ValidityNotAfter} = $select({Certificate}="":"",1:$System.Encryption.X509GetField({Certificate},"ValidityNotAfter")) }, SqlComputed, Transient ];

/// Getter for ValidityNotAfter.
Method ValidityNotAfterGet() As %TimeStamp [ CodeMode = expression, Internal ]
{
}

/// For ValidityNotAfter to be read-only.
Method ValidityNotAfterSet(value As %TimeStamp) As %Status [ Internal, Private ]
{
}

/// Version number of the record. <br>
/// Used for Export/Import.<br>
Property Version As %Decimal(SCALE = 1) [ Internal ];

/// Return true if the same credentials -- same certificate in this case.
Method Equals(credentials As %SYS.X509Credentials) As %Boolean
{
}

/// The Save method saves an X509Credentials object.
/// To save a new X509Credentials object use the following procedure:<br>
/// - get a new object with %New.<br>
/// - set required unique Alias property.<br>
/// - set any needed properties.<br>
/// - load the certificate with the LoadCertificate method.<br>
/// - load the private key with the LoadPrivateKeymethod.<br>
/// - call the Save method.
Method Save() As %Status
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnAfterSave(insert As %Boolean) As %Status [ Internal, PlaceAfter = FieldNumber, Private ]
{
}

/// Validate the object during save.
/// Note that the PrivateKey property is accessed from memory during save.
Method %OnValidateObject(ReadOnly As %Boolean = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

/// Caller of %Save must have secureity admin resource.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Make sure that HasPrivateKey is always correctly defined
Method %OnOpen() As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Change the binary data (stored in Thumbprint and SubjectKeyIdentifier) into formatted hex string.
/// Like zzdump, 8-bit strings will be displayed in 1-byte words, ziswide() strings will be displayed in 2-byte words.
ClassMethod BinaryToHexString(input As %Binary) As %String
{
}

/// Load a certificate from a certificate file.
Method LoadCertificate(filename As %String) As %Status
{
}

/// Load a private key from a private key file.
Method LoadPrivateKey(filename As %String) As %Status
{
}

/// The Delete method deletes an existing X509Credentials object specified by its alias.
ClassMethod Delete(alias As %String) As %Status
{
}

/// Caller of %Delete must have security admin resource.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Internal method to return field position based on name.
ClassMethod FieldNumber(fieldName As %String) As %Integer [ Internal, Private ]
{
}

/// Get a X.509 credentials record based on the unique alias.
/// The record must have a null OwnerList or be owned by the current user to be returned.
ClassMethod GetByAlias(alias As %String, pwd As %String) As %SYS.X509Credentials
{
}

/// Get a X.509 credentials record based on the unique SubjectKeyIdentifier.
/// The record must have a null OwnerList or be owned by the current user to be returned.
ClassMethod GetBySubjectKeyIdentifier(searchValue As %Binary) As %SYS.X509Credentials [ PlaceAfter = FieldNumber ]
{
}

/// Get a X.509 credentials record based on the unique SHA1 Thumbprint.
/// The record must have a null OwnerList or be owned by the current user to be returned.
ClassMethod GetByThumbprint(searchValue As %Binary) As %SYS.X509Credentials
{
}

/// Get a X.509 credentials record based on the unique X.509 certificate.
/// The record must have a null OwnerList or be owned by the current user to be returned.
ClassMethod GetByCertificate(searchValue As %Binary) As %SYS.X509Credentials
{
}

/// Get a X.509 credentials record based on the unique X.509 certificate for use with a private key.
/// The record must have a null OwnerList or be owned by the current user to be returned.
ClassMethod GetByCertificateWithPrivateKey(searchValue As %Binary) As %SYS.X509Credentials
{
}

/// Get a X.509 credentials record which has a certificate whose
/// public key matches the specified RSAKeyValue.
/// The record must have a null OwnerList or be owned by the current user to be returned.
ClassMethod GetByRSAKeyValue(searchValue As %XML.Security.RSAKeyValue) As %SYS.X509Credentials
{
}

/// Get a X.509 credentials record based on the unique field name of the credentials object.
/// The possible field names are Certificate, SubjectKeyIdentifier, Thumbprint,
/// SerialNumber, IssuerDN, SubjectDN, PeerNames, OwnerList.
/// Note that only Certificate, SubjectKeyIdentifier, Thumbprint are sure to
/// have an exact match.  FindByField shold normally be used for the other fields.
/// The match is exact and case sensitive.  The first match is returned.
/// The record must have a null OwnerList or be owned by the current user to be returned.
ClassMethod GetByField(fieldName As %Integer, searchValue As %Binary) As %SYS.X509Credentials [ Internal ]
{
}

/// Get a X.509 credentials record based on the unique field number of the credentials object.
/// The record must have a null OwnerList or be owned by the current user to be returned.
ClassMethod GetByFieldNumber(field As %Integer, searchValue As %Binary) As %SYS.X509Credentials [ Internal, Private ]
{
}

/// Check that the field name is valid for search by FindByField
ClassMethod CheckFieldName(fieldName As %String) As %Boolean [ Internal ]
{
}

/// Find the %SYS.X509Credentials instances which have a match in the specified
/// field to the specified value.
/// If the credentialsList property is specified, then only matches from this
/// list are returned.  Otherwise all matches from the database are returned.<br>
/// The following searches are supported:
/// 		<li>Alias - Unique, exact match on the Alias</li>
/// 		<li>Certificate - Unique, exact match on the certificate</li>
/// 		<li>SubjectKeyIdentifier - Unique, exact match to the SubjectKeyIdentifier</li>
/// 		<li>Thumbprint - Unique, exact match to the Thumbprint</li>
/// 		<li>SerialNumber - Exact match to the serial number</li>
/// 		<li>IssuerDN - Case insensitive match to the Issuer DistinguishedName</li>
/// 		<li>IssuerName - Case insensitive match to any Issuer DistinguishedName which contains the searchValue.</li>
/// 		<li>SubjectDN - Case insensitive match to the Subject DistinguishedName</li>
/// 		<li>SubjectName - Case insensitive match to any Subject DistinguishedName which contains the searchValue</li>
/// 		<li>PeerNames - Case insensitive match to any PeerNames list which contains the searchValue</li>
/// 		<li>OwnerList - Case insensitive match to any OwnerList list which contains the searchValue</li><br>
/// A %ListOfObjects is returned containing the matching %SYS.X509Credentials instances.
/// The %ListOfObjects will have no entries if there are no matches.
/// If the field name is not valid, then "" will be returned.
ClassMethod FindByField(fieldName As %String, searchValue As %String, credentialsList As %ListOfObjects) As %ListOfObjects [ PlaceAfter = FieldNumber ]
{
}

/// Internal function to find the %SYS.X509Credentials instances which have a match in the specified
/// field number to the specified value.
/// If the credentialsList property is specified, then only matches from this
/// list are returned.  Otherwise all matches from the database are returned.
ClassMethod FindByFieldNumber(field As %Integer, searchValue As %String, caseSensitive As %Boolean, contains As %Boolean, credentialsList As %ListOfObjects) As %ListOfObjects
{
}

/// Check if specified peer name is valid for this set of credentials.
Method CheckPeerName(peerName As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Return the next X.509 credentials object that is accessible to
/// the current user based on the alias argument.  Return "" if no more objects available.  The alias argument is
/// updated to correspond to the returned object.
ClassMethod GetNext(ByRef alias As %String) As %SYS.X509Credentials
{
}

/// Convert variants of the string representation of a Distinguished Name as defined by
/// section 4 of RFC 2253 to normal form
ClassMethod NormalizeDN(name As %String) As %String
{
}

/// Escape special characters in quoted strings, remove quotes
/// Replace unescaped ";" with ","
/// Remove extra space around unescaped ",", "+", and "="
/// X509Credential exists.<br>
/// This method checks for the existence of a X509Credential in the security database.<br>
/// Parameters:<br>
/// Name - Name of the X509Credential to check existence of<br>
/// Return values:<br>
/// If Value of the method = 0 (X509Credential does not exist, or some error occurred)<br>
/// X509Credential = Null<br>
/// Status = X509Credential "x" does not exist, or other error message<br><br>
/// If Value of the method = 1 (X509Credential exists)<br>
/// X509Credential = Object handle to X509Credential<br>
/// Status = $$$OK<br>
ClassMethod Exists(Name As %String, ByRef X509Credential As %ObjectHandle, ByRef Status As %Status) As %Boolean
{
}

/// This method exports X509Credential records to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
/// X509Credentials - Comma separated list of X509Credentials to export, "*" = All<br>
/// IncludePrivateKey - boolean value. If 1 (true), then the private key and password will be included in the export file, otherwise it will be omitted.
/// It is the responsibility of the caller to secure the resulting file. <br>
ClassMethod Export(FileName As %String = "X509CredentialsExport.xml", ByRef NumExported As %Integer, X509Credentials As %String = "*", IncludePrivateKey As %Boolean = 0) As %Status
{
}

/// Get a X509Credential's properties.<br>
/// Gets a X509Credential's properties from the security database.<br>
/// Parameters:<br>
/// X509Credential - Object handle to a X509Credentials record<br>
/// Return values:<br>
/// Properties - See the Get method for more information on properties returned
ClassMethod GetProperties(X509Credential As %ObjectHandle, ByRef Properties As %String) As %Status
{
}

/// Import X509Credential records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import X509Credential records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String = "X509CredentialsExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Modify a X509Credential.<br>
/// Modify an existing X509Credential's properties in the security database.<br>
/// Parameters:<br>
/// Name - Name of the X509Credential to modify<br>
/// Properties - Array of properties to modify.<br>
/// See the Get() method for a description of the Properties parameter.<br>
/// If a specific property is not passed in the properties array,
/// the value is not modified.<br>
ClassMethod Modify(Name As %String, ByRef Properties As %String) As %Status
{
}

/// Decrypt using the private key and password for these credentials
Method RSADecrypt(ciphertext As %String, encoding As %Integer) As %String
{
}

/// Find the size of the signature using the private key and password for these credentials
Method RSASize() As %Integer
{
}

/// Sign using the private key and password for these credentials
Method RSASHASign(bitlength As %Integer, data As %String) As %String
{
}

ClassMethod SetHasPrivateKeyWhereUnset() As %Status [ Internal ]
{
}

}
