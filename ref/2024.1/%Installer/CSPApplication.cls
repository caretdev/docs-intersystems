/// This is a "CSPApplication" activity within a Manifest document
Class %Installer.CSPApplication Extends %Installer.Activity [ ServerOnly = 1, System = 3 ]
{

/// Application URL
Property Url As %String(MAXLEN = 1024) [ Required ];

/// Application Description
Property Description As %String(MAXLEN = 1024);

/// Path to CSP files.
Property Directory As %String(MAXLEN = 1024) [ Required ];

/// Resource required to access web app.
Property Resource As %String;

/// Flag to Recurse (service subdirectories)
Property Recurse As %Installer.Boolean [ InitialExpression = 0 ];

/// Login class
Property LoginClass As %String(MAXLEN = 128);

/// Session cookie path
Property CookiePath As %String(MAXLEN = 256);

/// Flags for enabled authentication methods. <br>
/// Commonly used values are 4=Kerberos, 32=password, and 64=unauthenticated. <br>
/// For supported authentication methods and the corresponding values to provide, see the AutheEnabled property in Security.Applications. <br>
/// If not specified, the default value depends on the installation type <br>
///
Property AuthenticationMethods As %String;

/// Lock CSP Name property
Property LockCSPName As %Installer.Boolean [ InitialExpression = 1 ];

/// Event Class
Property EventClass As %String(MAXLEN = 256);

/// Session timeout
Property DefaultTimeout As %Installer.Integer;

/// Default Superclass
Property DefaultSuperclass As %String(MAXLEN = 256);

/// Use Cookie for Session
Property UseSessionCookie As %Installer.Integer;

/// Service Files <br>
/// 0-No<br>
/// 1-Always<br>
/// 2-Always and cached<br>
/// 3-Use InterSystems security<br>
///
Property ServeFiles As %Installer.Boolean;

/// Serve Files Timeout
Property ServeFilesTimeout As %Installer.Integer;

/// Custom Error Page
Property CustomErrorPage As %String(MAXLEN = 1024);

/// Package Name
Property PackageName As %String(MAXLEN = 256);

/// Change Password Page
Property ChangePasswordPage As %String(MAXLEN = 1024);

/// Group By ID
Property GroupById As %String(MAXLEN = 1024);

/// Flag for CSP ZEN Enabled
Property CSPZENEnabled As %Installer.Boolean [ InitialExpression = 1 ];

/// Flag for inbound web services enabled
Property InboundWebServicesEnabled As %Installer.Boolean [ InitialExpression = 1 ];

/// Flag for two factor authentication enabled
Property TwoFactorEnabled As %Installer.Boolean [ InitialExpression = 0 ];

/// Is Namespace default
Property IsNamespaceDefault As %Installer.Boolean [ InitialExpression = 0 ];

/// PermittedClasses default
Property PermittedClasses As %String;

/// Autocompile flag
Property AutoCompile As %Installer.Boolean [ InitialExpression = 1 ];

/// If defined, this will dispatch all requests in this CSP application to this one class.
Property DispatchClass As %String(MAXLEN = 256);

/// Mapping of Match Roles to added Target Roles
Property MatchRoles As %String(MAXLEN = 32767);

/// Resource(s) granted when logged in.
Property Grant As %String(MAXLEN = 512);

/// Generate code for this document.
Method %OnGenerateCode(pTargetClass As %Dictionary.CompiledClass, pCode As %Stream.TmpCharacter, pDocument As %Installer.Manifest) As %Status [ Internal ]
{
}

}
