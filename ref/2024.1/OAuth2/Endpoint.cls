/// Define an OAuth 2.0 endpoint
Class OAuth2.Endpoint Extends %SerialObject [ System = 4 ]
{

/// If the URL is TLS/SSL
Property UseSSL As %Boolean [ InitialExpression = 1, Internal ];

/// The host part of the address
Property Host As %String(MAXLEN = 256) [ Internal ];

/// The port part of the address
Property Port As %String [ Internal ];

/// The CSP prefix part of the address
Property Prefix As %String [ Internal ];

/// The server porion of Locarion
Method GetServerURL() As %String [ Internal ]
{
}

}
