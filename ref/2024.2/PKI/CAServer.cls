///  Certificate Authority server.
///  Use with PKI.CAClient.
Class PKI.CAServer Extends (%Persistent, %SOAP.WebService) [ Deprecated ]
{

///  Name of the WebService.
Parameter SERVICENAME = "CAServer";

///  SOAP Namespace for the WebService
Parameter NAMESPACE = "http://pki.intersystems.com";

///  Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Parameter IRISCA = "IRIS CA";

///  The default Certificate Authority server has the name "IRIS CA".
///  There is at most one per InterSystems IRIS instance.
Property Name As %String [ InitialExpression = {..#IRISCA}, Required ];

///  Path to this Certificate Authority server's Certificate (.cer) and Private Key (.key) files
Property CAPath As %String(MAXLEN = 200);

///  Name of this Certificate Authority server's Certificate (.cer) and Private Key (.key) files
Property CAFilename As %String [ Required ];

///  Prompts to use when building a %List for constructing a Subject Distinguished Name.
Property AttributePrompt As %String(MAXLEN = 100) [ InitialExpression = "Country,State or Province,Locality,Organization,Organizational Unit,Common Name" ];

///  Attribute type keywords to use when building the "-subject" argument to the "openssl req" command
Property AttributeType As %String [ InitialExpression = "C,ST,L,O,OU,CN" ];

///  Validity period (in days) for issued certificates
Property Days As %Integer [ InitialExpression = 365, Required ];

///  SMTP server for sending email notification on receipt of a
///  Certificate Signing Request or issuance of a Certificate
Property SMTPServer As %String;

///  SMTP username for sending email notification on receipt of a
///  Certificate Signing Request or issuance of a Certificate
Property SMTPUsername As %String;

///  SMTP password for sending email notification on receipt of a
///  Certificate Signing Request or issuance of a Certificate
Property SMTPPassword As %String;

///  Email address of the administrator of this Certificate Authority server.
///  Email notification will be sent to this address on receipt of a
///  Certificate Signing Request.
Property AdminEmail As %String;

///  Build the "-subject" argument to the "openssl req" command from a %List
Method BuildSubject(values As %List) As %String
{
}

///  Web method for submitting a Certificate Signing Request.
///  This method saves the PKI.CSR object and sends notification to the
///  email address of the administrator of this Certificate Authority server.<br>
///  Parameter:<br>
///  csr - a PKI.CSR object<br>
///  Return value:<br>
///  String describing successful Certificate Signing Request submission, or a SOAP fault on error
Method SubmitCSR(csr As PKI.CSR) As %String [ WebMethod ]
{
}

///  Web method for retrieving a list of X.509 Certificates issued by this Certificate Authority server.<br>
///  Return value:<br>
///  An %XML.DataSet object
Method ListCertificates(hostname As %String, instance As %String) As %XML.DataSet [ WebMethod ]
{
}

///  Web method for retrieving an X.509 Certificate issued by this Certificate Authority server.<br>
///  Parameter:<br>
///  number - serial number of the X.509 Certificate requested, or 0 to request
///  this Certificate Authority server's X.509 Certificate<br>
///  Return value:<br>
///  A PKI.Certificate object
Method GetCertificate(number As %String) As PKI.Certificate [ WebMethod ]
{
}

///  Issue an X.509 Certificate for a Certificate Signing Request.
///  This method creates and saves a PKI.Certificate object and sends notification to the
///  email address of the local technical contact of the Certificate Authority client
///  that generated the Certificate Signing Request.<br>
///  Parameters:<br>
///  name - Name of the Certificate Signing Request to be processed<br>
///  password - Password for this Certificate Authority server's Private Key file<br>
///  certType  - Intended usage of the issued certificate<br>
///  1 = TLS/SSL, XML encryption and signature verification<br>
///  2 = Intermediate Certificate Authority server<br>
///  st - On return, contains a status code<br>
///  Return value:<br>
///  String describing successful Certificate issuance, or error
Method Sign(name As %String, password As %String, certType As %Integer, ByRef st As %Status) As %String
{
}

///  Two use cases:<br><br>
///  1) Configure this Certificate Authority server.<br>
///  Must be called before Certificate Signing Requests can be submitted or Certificates issued.
///  Creates the OpenSSL configuration file "openssl.cnf" if it does not exist.
///  When called for the first time, this method creates this Certificate Authority server's Certificate (.cer) and Private Key (.key) files,
///  and creates and saves its PKI.Certificate object.  Once created these can not be changed.
///  The other properties of this Certificate Authority server can be updated later.<br>
///  Parameters:<br>
///  server - PKI.CAServer object, with all required properties set<br>
///  attrList - %List containing attribute values to be used in constructing this Certificate Authority server's Subject Distinguished Name
///  (first invocation only)<br>
///  password - Password used to encrypt Private Key file
///  (first invocation only)<br>
///  days - desired validity period of CA certificate, in days<br>
///  st - On return, contains a status code<br>
///  Return value:<br>
///  String describing successful configuration, or error<br><br>
///  2) Update the openssl.cnf file to the latest version<br>
///  Calling ##class(PKI.CAServer).Configure() with no arguments will create or update the openssl.cnf file to the latest version.
ClassMethod Configure(server As PKI.CAServer, attrList As %List, password As %String, days As %Integer, ByRef st As %Status) As %String
{
}

Method ConfigureData() [ ProcedureBlock = 0 ]
{
}

Method %OnAfterSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

ClassMethod %OnAfterDelete(oid As %ObjectIdentity) As %Status [ Internal, Private ]
{
}

/// This method will ensure that the /isc/pki web application is enabled if the default CAServer instance is configured and disabled otherwise.
/// If the application does not exist this will return an error.
ClassMethod CheckWebApp() As %Status [ Internal ]
{
}

}
