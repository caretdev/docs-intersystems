/// %OAuth2.Login is the base class for login pages which use OAuth 2.0 or OpenID Connect.
/// The usual login class will only override the APPLICATION and SCOPE parameters.
/// Additional customization may be done by overriding the RESPONSEMODE parameter and DefineProperties method.
/// <p>The login page will directly log in the session using delegated authentication.
/// For an example ZAUTHENTICATE routine, see the
/// <a href="https://github.com/intersystems/Samples-Security">Samples-Security</a> repo in GitHub.</p>
Class %OAuth2.Login Extends %CSP.Login
{

/// The application name for the application being logged into.<br>
/// The actual login page will need to override this parameter.
Parameter APPLICATION As STRING;

/// The blank separated scope list to be used for the access token request.
/// The actual login page will need to override this parameter.
Parameter SCOPE As STRING;

/// The RESPONSEMODE parameter specifies the mode of the response as either query, fragment or form_post.
/// The default is query.
Parameter RESPONSEMODE As STRING;

/// The name of the query parameter used to carry the access token hash.
Parameter SessionQueryParameter [ Internal ] = "CSPOAUTH2";

ClassMethod OnPreHTTP() As %Boolean [ Internal ]
{
}

/// Callback to allow the overriding login subclass to define the class parameter values at run-time<br>
/// The default to use the class parameter values.
ClassMethod DefineParameters(Output application As %String, Output scope As %String, Output responseMode As %String)
{
}

/// Callback to allow the overriding login subclass to define the properties list for the GetAccessTokenAuthorizationCode call.<br>
/// properties is a local array specifying additional properties to be included in a token request
/// in the form properties(name)=value.  To add a request parameter which is a JSON object,
/// you may either create a properties element which is a %DynamicObject or is a string that is the
/// UTF-8 encoded serialized object.  For example the claims parameter that is defined by OpenID Connect.
/// If the request or request_uri request parameters are to be used, then the %SYS.OAuth2.Request class
/// is used to create  the JWT.  The the JWT is assigned to properties("request") or the URL for the
/// JWT is assigned to properties("request_uri")<br>
ClassMethod DefineProperties(Output properties As %String)
{
}

ClassMethod OnPage() As %Status [ Internal ]
{
}

}
