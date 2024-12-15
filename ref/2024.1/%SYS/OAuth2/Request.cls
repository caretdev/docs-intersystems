/// %SYS.OAuth2.Request creates and manages the request JWT needed  to support the request and
/// request_uri parameters that are defined in section 6 of OpenID Connect Core document.
Class %SYS.OAuth2.Request Extends %Persistent [ System = 4 ]
{

/// The IDKEY for the request object class.
/// The name of the client application associated with this request.
Property ApplicationName As %String(MAXLEN = 128) [ Required ];

/// The name of this request object.
Property RequestName As %String [ Required ];

/// The base64 encoded random state associated with the request.
/// The state is included as a fragment of in the URL in order to ensure cached requests are retrieved.
Property State As %String(MAXLEN = 1024);

/// The JWT created from the request object.
Property JWT As %String(MAXLEN = "");

/// The time when the request object was last updated.
Property UpdateTime As %Integer;

/// Create and return a JWT based on the specified properties.<br>
/// The JWT may be signed or encoded by the client configuration that is specified by applicationName.<br>
/// To add a request parameter which is a JSON object, you must create a properties element which is a %DynamicObject.
/// For example the claims parameter that is defined by OpenID Connect.
ClassMethod MakeRequestJWT(applicationName As %String, ByRef properties As %String, Output sc As %Status) As %String
{
}

/// Set the aud claim for the JSON object
ClassMethod SetAudClaim(json As %DynamicObject, issuer As %String) [ Internal, Private ]
{
}

/// Create or update a persistent %SYS.OAuth2.Request object which contains a
/// JWT based on the specified properties.  The new request object is both saved and returned by this method.<br>
/// The JWT may be signed or encoded by the client configuration that is specified by applicationName.<br>
/// To add a request parameter which is a JSON object, you must create a properties element which is a %DynamicObject.
/// For example the claims parameter that is defined by OpenID Connect.
ClassMethod UpdateRequestObject(applicationName As %String, requestName As %String, ByRef properties As %String, Output sc As %Status) As %SYS.OAuth2.Request
{
}

/// Open a persistent %SYS.OAuth2.Request object which contains a JWT identified by applicationName and requestName.
ClassMethod OpenRequestObject(applicationName As %String, requestName As %String, Output sc As %Status) As %SYS.OAuth2.Request
{
}

/// Delete the request object that is specified by applicationName and requestName.
ClassMethod DeleteRequestObject(applicationName As %String, requestName As %String) As %Status
{
}

/// Clean up the request object list by deleting any request object that has not been updated
/// for the specified client in interval seconds
ClassMethod CleanupRequestObjects(applicationName As %String, interval As %Integer) As %Status
{
}

/// Get the JWT associated with this request object
Method GetJWT() As %String [ CodeMode = expression ]
{
}

/// Get the URL associated with this persistent request object.
Method GetURL(Output sc As %Status) As %String
{
}

}
