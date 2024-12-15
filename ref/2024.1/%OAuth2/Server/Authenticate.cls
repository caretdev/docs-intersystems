/// %OAuth2.Server.Authenticate acts as the subclass for all user written Authenticate classes as
/// well as being the default Authenticate class.
/// The Authenticate class is used by Authorization Endpoint at OAuth2.Server.Auth to authenticate
/// the user.  This class allows the customization of the authentication process.<br>
/// The following methods may be implemented to override the default in OAuth2.Server:
/// DirectLogin, DisplayLogin and DisplayPermissions.<br>
/// The scope argument to all of these methods is a %ArrayOfDatatypes where the keys
/// are scope values and the values are the display form of the scope value.<br>
/// <table><tr><th>The CSS style is defined in DrawStyle. </th></tr>
/// <tr><td>loginForm is for DisplayLogin</td></tr>
/// <tr><td>permissionForm is for DisplayPermissions</td></tr>
/// <tr><td>Customer can modify these CSS to tailor desired look and feel.</td></tr>
/// </table>
Class %OAuth2.Server.Authenticate Extends %CSP.Page [ System = 4 ]
{

/// Login page localization domain
Parameter DOMAIN = "%OAuth2Login";

/// The GetLanguageList method returns a comma separated list of the languages that are supported
/// for the message domain used for this class.
/// This language list is returned as the ui_locales server metadata property.
ClassMethod GetLanguageList() As %List
{
}

/// The BeforeAuthenticate method of the Authenticate class is called before any authentication takes place
/// to allow the scope or claims associated with the request to be modified based on
/// scope values or request parameters.
ClassMethod BeforeAuthenticate(scope As %ArrayOfDataTypes, properties As %OAuth2.Server.Properties) As %Status
{
}

/// The AfterAuthenticate method of the Authenticate class is called after any authentication
/// is completed (including if the authentication is cookie based)
/// to allow the scope or properties associated with the request to be modified based on
/// scope values or request parameters.
/// AfterAuthenticate may add properties to the authentication HTTP response,
/// by adding them to properties.ResponseProperties.
ClassMethod AfterAuthenticate(scope As %ArrayOfDataTypes, properties As %OAuth2.Server.Properties) As %Status
{
}

/// DelegatedAuthentication can be used to redirect the flow of the authorization process to another authentication system, such as an OpenID Connect
/// Identity Provider. If it is not null, the resource owner will be redirected to <var>delegatedAuthenticationURL</var>.
/// <var>localRedirectURL</var> is a URL that the delegated authentication service should
/// redirect to after completion in order to reinsert the user back into the original authorization flow. This method
/// may set values of the properties.CustomProperties array that may be used in the ValidateDelegatedAuthentication method of the Validate class.
ClassMethod DelegatedAuthentication(properties As %OAuth2.Server.Properties, localRedirectURL As %String, Output delegatedAuthenticationURL As %String) As %Status
{
}

/// If DirectLogin chooses to do authentication by some means other than display of the user login form,
/// DirectLogin sets the username and password arguments which will later be used
/// to obtain the properties associated with the access token and to generate the token.
/// If username is set to $char(0), then the access_denied error will be returned.<br>
/// This method may directly look at the request properties and set properties
/// for GenerateAccessToken using the properties array argument.
ClassMethod DirectLogin(scope As %ArrayOfDataTypes, properties As %OAuth2.Server.Properties, Output username As %String, Output password As %String) As %Status
{
}

/// DisplayLogin is responsible for writing out the HTML to display the user login form.
/// The login form must contain a Username field, a Password field and an AuthorizationCode hidden field.
/// The Authorization code hidden field is inserted by DisplayLogin using the InsertHiddenField
/// method of %CSP.Page. The form will normally be submitted using a button named "Login". If it is submitted
/// with a button named "Accept", then the page will skip calling DisplayPermissions to authorize the scopes.
/// If this done, the page <i>should</i> display the requested scopes prior to submitting.
/// If the form is submitted using a button named Cancel, then the authorization process will
/// terminate with an error return of access_denied.<br>
/// loginCount is the integer count of which login attempt is taking place.<br>
/// This method may directly look at the request properties and set properties
/// for GenerateAccessToken using the properties array argument. In addition, any submitted
/// values with name beginning with p_ (i.e. the element name begins with p_) will be copied to
/// the properties.CustomProperties array with the p_ prefix removed from the name.
ClassMethod DisplayLogin(authorizationCode As %String, scope As %ArrayOfDataTypes, properties As %OAuth2.Server.Properties, loginCount As %Integer = 1) As %Status
{
}

/// Display2fa is responsible for writing out the HTML to display an HTML form to allow the user to perform
/// two factor authentication.The form should include a 2FAToken field and an AuthorizationCode hidden field.
/// The Authorization code hidden field is inserted by Display2fa using the InsertHiddenField
/// method of %CSP.Page. The form will normally be submitted using a button named "Login". If it is submitted
/// with a button named "Accept", then the page will skip calling DisplayPermissions to authorize the scopes.
/// If this done, the page <i>should</i> display the requested scopes prior to submitting.
/// If the form is submitted using a button named Cancel, then the authorization process will
/// terminate with an error return of access_denied.<br>
/// loginCount is the integer count of which login attempt is taking place.<br>
/// This method may directly look at the request properties and set properties
/// for GenerateAccessToken using the properties array argument.
ClassMethod Display2FA(authorizationCode As %String, scope As %ArrayOfDataTypes, properties As %OAuth2.Server.Properties, loginCount As %Integer = 1) As %Status
{
}

/// DisplayPermissions is responsible for writing out the HTML to display the user accept permissions form.<br>
/// The accept permissions form should display the already obtained scopes in display format based on currentScopeArray.<br>
/// The accept permissions form should display the requested scopes in display format based on scopeArray.<br>
/// The Authorization code hidden field is inserted by DisplayPermissions
/// using the InsertHiddenField method of %CSP.Page.
/// The form should be submitted using a button named "Accept".
/// If the form is submitted using a button named Cancel,
/// then the authorization process will terminate with an error return of access_denied.<br>
/// This method may directly look at the request properties and set properties
/// for GenerateAccessToken using the properties array argument. In addition, any submitted
/// values with name beginning with p_ (i.e. the element name begins with p_) will be copied to
/// the properties.CustomProperties array with the p_ prefix removed from the name.
ClassMethod DisplayPermissions(authorizationCode As %String, scopeArray As %ArrayOfDataTypes, currentScopeArray As %ArrayOfDataTypes, properties As %OAuth2.Server.Properties) As %Status
{
}

ClassMethod DrawLoginHead(LOGINHEADTITLE, MSGUSERNAME, MSGPASSWORD, MSGUSERNAMEPASSWORD)
{
}

ClassMethod Draw2FAHead(TITLE2FA, MSGTOKEN)
{
}

ClassMethod DrawStyle()
{
}

ClassMethod DrawFooter()
{
}

ClassMethod DrawAcceptHead(ACCEPTHEADTITLE)
{
}

}
