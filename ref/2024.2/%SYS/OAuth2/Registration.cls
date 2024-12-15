/// The %SYS.OAuth2.Registration class contains the client side methods to support OpenID Connect
/// Discovery and Dynamic Client Registration.
Class %SYS.OAuth2.Registration Extends %RegisteredObject [ System = 4 ]
{

/// The Discover method uses the OpenID Connect Discovery protocol to obtain the server metadata
/// for a client.  The Discover method saves the server metadata in an existing or new OAuth2.ServerDefinition
/// instance for the specified issuerEndpoint.
ClassMethod Discover(issuerEndpoint As %String, sslConfiguration As %String, Output server As OAuth2.ServerDefinition) As %Status
{
}

/// The RegisterClient method uses the OpenID Connect Dynamic Registration protocol to register the client
/// specified by applicationName.
/// The RegisterClient method saves the response properties and response client metadata in the OAuth2.Client instance.
ClassMethod RegisterClient(applicationName As %String) As %Status
{
}

/// The ReadClient method uses the OpenID Connect Dynamic Registration protocol to read the client metadata
/// of a dynamically registered client.
/// The ReadClient method saves the response properties and response client metadata in the OAuth2.Client instance.
ClassMethod ReadClient(applicationName As %String) As %Status
{
}

/// The UpdateClient method uses the Dynamic Client Registration protocol (RFC 7592) to uptate the client metadata
/// of a dynamically registered client on the server.
/// The UpdateClient method saves the updated response properties and response client metadata in the OAuth2.Client instance.
ClassMethod UpdateClient(applicationName As %String) As %Status
{
}

/// The DeleteClientRegistration method uses the Dynamic Client Registration protocol (RFC 7592) to delete the client metadata
/// of a dynamically registered client. The local OAuth2.Client instance is unchanged.
ClassMethod DeleteClientRegistration(applicationName As %String) As %Status
{
}

}
