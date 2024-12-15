/// Certificate Signing Request.  For use with PKI.CAClient and PKI.CAServer.
Class PKI.CSR Extends (%Persistent, %XML.Adaptor) [ Deprecated ]
{

/// Unique name (constructed)
Property Name As %String(MAXLEN = 200) [ Required ];

/// DNS hostname of the PKI.CAClient that generated this Certificate Signing Request
Property Hostname As %String(MAXLEN = 100) [ Required ];

/// InterSystems IRIS instance of the PKI.CAClient that generated this Certificate Signing Request
Property Instance As %String [ Required ];

/// Filename specified by the PKI.CAClient that generated this Certificate Signing Request
Property Filename As %String [ Required ];

/// PEM encoding of this Certificate Signing Request
Property Contents As %String(MAXLEN = 5000) [ Required ];

/// String representation of the Subject Distinguished Name of this X.509 Certificate
Property Subject As %String(MAXLEN = 200);

/// Name of the local technical contact for the Certificate Authority client that generated this request.
/// This is the person who will be contacted by the Certificate Authority server's
/// administrator to verify the validity this Certificate Signing Request.
Property ContactName As %String [ Required ];

/// Phone number of the local technical contact for the Certificate Authority client that generated this request.
Property ContactPhone As %String;

/// Email address of the local technical contact for the Certificate Authority client that generated this request.
/// Email notification will be sent to this address when an X.509 Certificate is issued
/// for this Certificate Signing Request.
Property ContactEmail As %String;

/// Return a text representation of this Certificate Signing Request.
Method Display() As %String
{
}

/// Return a text representation of the Subject Distinguished Name
/// of this Certificate Signing Request.
Method GetSubject() As %String
{
}

/// Return a text representaion of the SHA-256 Fingerprint of this Certificate Signing Request.
Method GetSHA256Fingerprint() As %String
{
}

}
