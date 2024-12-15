///  Certificate Authority client.
///  Use with PKI.CAServer.
Class PKI.CAClient Extends %Persistent [ Deprecated ]
{

///  The default Certificate Authority client has the name "IRIS CA".
///  There is at most one per InterSystems IRIS instance.
Property Name As %String [ InitialExpression = "IRIS CA", Required ];

///  DNS hostname used to access the PKI.CAServer Web service
Property Server As %String(MAXLEN = 100) [ Required ];

///  TCP port used to access the PKI.CAServer Web service
Property Port As %Integer [ Required ];

///  Path used to access the PKI.CAServer Web service
Property Path As %String [ InitialExpression = "/isc/pki/PKI.CAServer.cls", Required ];

///  Prompts to use when building a %List for constructing a Subject Distinguished Name.
Property AttributePrompt As %String(MAXLEN = 100) [ InitialExpression = "Country,State or Province,Locality,Organization,Organizational Unit,Common Name" ];

///  Attribute type keywords to use when building the "-subject" argument to the "openssl req" command
Property AttributeType As %String [ InitialExpression = "C,ST,L,O,OU,CN" ];

///  Name of the local technical contact for this Certificate Authority client.
///  This is the person who will be contacted by the Certificate Authority server's
///  administrator to verify the validity of Certificate Signing Requests from this client.
Property ContactName As %String [ Required ];

///  Phone number of the local technical contact for this Certificate Authority client.
Property ContactPhone As %String;

///  Email address of the local technical contact for this Certificate Authority client.
///  Email notification will be sent to this address when an X.509 Certificate is issued
///  for a Certificate Signing Request from this Certificate Authority client.
Property ContactEmail As %String;

Property UseTLS As %Boolean;

Property TLSConfiguration As %String(MAXLEN = 64);

/// Build the "-subject" argument to the "openssl req" command
/// or the "-dname" argument to the "keytool -genkeypair" command
/// from a %List
Method BuildSubject(values As %List) As %String
{
}

///  Generate and submit a Certificate Signing Request to the Certificate Authority server.
///  This method creates Certificate Signing Request (.csr) and Private Key (.key) files,
///  creates a PKI.CSR object, and submits that object to the Certificate Authority server.<br>
///  Parameters:<br>
///  filename - Name to use for created Certificate Signing Request (.csr) and Private Key (.key) files<br>
///  attrList - %List containing attribute values to be used in constructing this Certificate Signing Request's Subject Distinguished Name<br>
///  password - Password used to protect Private Key file (optional)<br>
///  st - On return, contains a status code or SOAP fault<br>
///  Return value:<br>
///  String describing successful submission, or error
Method SubmitCSR(filename As %String, attrList As %List, password As %String, ByRef st As %Status) As %String
{
}

///  Get a list of X.509 Certificates issued by the Certificate Authority server.<br>
///  Parameters:<br>
///  hostname - Hostname from which signing requests for certificates was received<br>
///  instance - InterSystems IRIS instance from which signing requests for certificates were received<br>
///  Note:  If both hostname and instance are not specified, all issued certificates are listed.
///  st - On return, contains a status code<br>
///  Return value:<br>
///  An %XML.DataSet object
Method ListCertificates(hostname As %String = "", instance As %String = "", ByRef st As %Status) As %XML.DataSet
{
}

///  Get an X.509 Certificate issued by the Certificate Authority server.
///  This method retrieves a PKI.Certificate object and saves the contents in a Certificate (.cer) file.<br>
///  Parameter:<br>
///  number - serial number of the X.509 Certificate requested, or 0 to request
///  the Certificate Authority server's X.509 Certificate<br>
///  st - On return, contains a status code<br>
///  Return value:<br>
///  String describing saved Certificate file, or error
Method GetCertificate(number As %String, ByRef st As %Status) As %String
{
}

///  Configure this Certificate Authority client.
///  Must be called before Certificate Signing Requests can be submitted.
///  Creates the OpenSSL configuration file "openssl.cnf" if it does not exist.
///  Parameter:<br>
///  client - PKI.CAClient object, with all required properties set<br>
///  st - On return, contains a status code<br>
///  Return value:<br>
///  String describing successful configuration, or error
ClassMethod Configure(client As PKI.CAClient, ByRef st As %Status) As %String
{
}

Method ConfigureData() [ ProcedureBlock = 0 ]
{
}

}
