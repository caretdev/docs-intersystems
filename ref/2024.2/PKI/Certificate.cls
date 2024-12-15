/// X.509 Certificate.  For use with PKI.CAClient and PKI.CAServer.
Class PKI.Certificate Extends (%Persistent, %XML.Adaptor) [ Deprecated ]
{

/// Serial number.  Max length = 20 octets = 49 digits.
Property Number As %String [ Required ];

/// DNS hostname of the PKI.CAClient that requested this X.509 Certificate
Property Hostname As %String(MAXLEN = 100) [ Required ];

/// InterSystems IRIS instance of the PKI.CAClient that requested this X.509 Certificate
Property Instance As %String [ Required ];

/// Filename specified by the PKI.CAClient that requested this X.509 Certificate
Property Filename As %String [ Required ];

/// PEM encoding of this X.509 certificate
Property Contents As %String(MAXLEN = 5000) [ Required ];

/// String representation of the Subject Distinguished Name of this X.509 Certificate
Property Subject As %String(MAXLEN = 200) [ Required ];

/// Return a text representation of the SHA-256 Fingerprint of this X.509 Certificate.
Method GetSHA256Fingerprint() As %String
{
}

}
