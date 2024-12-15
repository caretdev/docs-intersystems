/// This class defines the applications for a system.<br>
/// There are three types of applications which can be defined:<br><br>
/// 1) Web applications: CSP/ZEN and REST<br>
/// 2) Privileged routine applications<br>
/// 3) Doc DB Applications, previously known as Client Application<br><br>
/// Depending on the type of application defined (Type property), properties may or may not be relevant
/// to that type of application. See each property description for its relevance for
/// each type of application.<br>
/// Application names have the following properties:<br>
/// 1) Application names are case insensitive.<br>
/// 2) Maximum length of an application name is 64 characters.<br>
/// The %Admin Secure:USE permission is required to operate on an application<br>
/// <br><br>
/// The table for this class should be manipulated only through object access, the published API's
/// or through the System Management Portal. It should not be updated through direct SQL access.<br>
Class Security.Applications Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/Applications.xml#2 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/21 17:08:29 $"_$c(13,10)_"Changelist #:  $Change: 7298481 $"};

Parameter EMSSERVICE [ Internal ] = "Security";

Parameter VERSION [ Internal ] = 3;

/// Authentication and Session mechanisms enabled.<br>
/// For CSP Web Application only.<br>
/// Note that these bits correspond to the same bit numbers in the Security.System class<br>
/// Bit 2 = AutheK5API<br>
/// Bit 5 - AuthePassword<br>
/// Bit 6 = AutheUnauthenticated<br>
/// Bit 11 = AutheLDAP<br>
/// Bit 13 = AutheDelegated<br>
/// Bit 14 = LoginToken<br>
/// Bit 20 = TwoFactorSMS<br>
/// Bit 21 = TwoFactorPW<br>
Property AutheEnabled As Security.Datatype.Authentication [ InitialExpression = 64 ];

/// This specifies whether CSP files should automatically compile or not.<br>
/// For CSP Web Application only.<br>
/// If this is turned on, then when a CSP file is more recent than its compiled class,<br>
/// it is recompiled. This is normally something you would turn on in development environments<br>
/// and turn off in production environments.
Property AutoCompile As Security.Datatype.BooleanYN [ InitialExpression = 1 ];

/// A predefined change password page that can be sent out to the browser if the user account requires<br>
/// that a password change is required.<br>
/// For CSP Web Application only.<br>
Property ChangePasswordPage As %String(MAXLEN = 256);

/// List of time stamps and hash values for valid executables.
/// Each element is in the form $zdatetime($h,3)^HashValue.
/// For DocDB/Client Application only.
Property ClientApplications As list Of %String(MAXLEN = 64);

/// Scope of the session cookie.<br>
/// For CSP Web Application only.<br>
/// This determines which urls the browser will send the session cookie back to InterSystems IRIS.<br>
/// If your application name is 'myapp', it defaults to '/myapp/' meaning it will only send<br>
/// the cookie for pages under '/myapp/'. You should restrict this to only what is required<br>
/// by your application to prevent this session cookie being used by other CSP application<br>
/// on this machine, or from being seen by any other application on this web server.<br>
///
Property CookiePath As %String(MAXLEN = 256);

/// List of Origins for CORS policies.<br>
/// Set as comma-delimited string with Create() and Modify()<br>
/// This is an allowlist.<br>
Property CorsAllowlist As list Of %String(MAXLEN = 32767);

/// The tab has a check box for allowing credentials.
/// If true, Access-Control-Allow-Credentials header will be included in CORS-enabled responses.
///
Property CorsCredentialsAllowed As Security.Datatype.BooleanYN [ InitialExpression = 1 ];

/// List of custom headers to include when CORS is enabled.<br>
/// Set as comma-delimited string with Create() and Modify()<br>
///
Property CorsHeadersList As list Of %String(MAXLEN = 32767);

/// Indicates whether this application will process CSP/Zen Pages.
/// For CSP Web Application only.<br>
///
Property CSPZENEnabled As Security.Datatype.BooleanYN [ InitialExpression = 1 ];

/// Prevent login CSRF attack.<br>
/// For CSP Web Application only.<br>
/// When enabled generate a token and cookie in the login page that is validated before accepting
/// any username/password. Enabling this will prevent programatic access to pages in this application
/// that just pass in the username/password on the initial request. It also prevents the use of the
/// CSPSHARE=1 URL Parameter to pass the session token in the URL when cookies are required for the application.
Property CSRFToken As Security.Datatype.BooleanYN [ InitialExpression = 1 ];

/// Indicates whether DeepSee access is enabled for this application.<br>
/// For CSP Web Application only.<br>
/// Corresponds with the Analytics option shown in Management Portal<br>
///
Property DeepSeeEnabled As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

/// Application description.<br>
/// For all application types.<br>
Property Description As %String(MAXLEN = 256);

/// If defined this will dispatch all requests in this CSP application to this one class.
/// This will bypass the normal url to classname conversion so allowing the specified
/// class complete control over this dispatch of the page. A predefined dispatch class
/// that can be used is 'CSP.REST' which provides REST dispatch capabilities.
/// For REST Web Application only.
///
Property DispatchClass As %String(MAXLEN = 256);

/// Application is enabled.<br>
/// For all application types.<br>
Property Enabled As Security.Datatype.BooleanYN [ InitialExpression = 1 ];

/// A CSP or CLS page that will be displayed if an error occurs when generating the page.<br>
/// For CSP Web Application only.<br>
Property ErrorPage As %String(MAXLEN = 256);

/// This specifies the class whose methods are invoked for CSP application events,<br>
/// such as a timeout.
/// For CSP Web Application only.<br>
Property EventClass As %String(MAXLEN = 64);

/// Used to force a save of the object
Property ForceSave As %Integer [ InitialExpression = 0, Private, Transient ];

/// Indicates whether this application's authentication will move in sync with other applications in the same id group.
/// For CSP Web Application only.
Property GroupById As %String(MAXLEN = 64);

/// <b>DEPRECATED</b>, no longer used in 2008.2. <br>
Property HyperEvent As %Integer(MAXVAL = 3, MINVAL = 0) [ Deprecated, InitialExpression = 0, Internal ];

/// Indicates whether iKnow access is enabled for this application.
/// Like the DeepSeeEnabled property , this corresponds with the Analytics option shown in Management Portal.
///
Property iKnowEnabled As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

/// Indicates whether this application will process Web Services.<br>
/// For CSP Web Application only.<br>
/// Corresponds with the "Inbound Web Services" option shown in Management Portal.
///
Property InbndWebServicesEnabled As Security.Datatype.BooleanYN [ InitialExpression = 1 ];

/// Indicates that this application is the default application for its namespace.
/// As such it will be returned by the call $System.CSP.GetDefaultApp().
/// Corresponds with the "Namespace Default Application" option shown in Management Portal.
///
Property IsNameSpaceDefault As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

/// Indicates that this application uses JWT Bearer tokens for authentication.
/// For REST Web Application only.<br>
///
Property JWTAuthEnabled As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

/// Specifies the timeout (in seconds) for JWT Access Tokens.
/// This is only relevant for REST Web Applications where <property>JWTAuthEnabled</property> is true.
Property JWTAccessTokenTimeout As %Integer(MINVAL = 1) [ InitialExpression = 60 ];

/// Specifies the timeout (in seconds) for JWT Refresh Tokens.
/// This is only relevant for REST Web Applications where <property>JWTAuthEnabled</property> is true.
Property JWTRefreshTokenTimeout As %Integer(MINVAL = 1) [ InitialExpression = 900 ];

/// Lock CSP Name. <br>
/// For CSP Web Application only.<br>
/// If true, then you can only access this CSP page if the url you enter matches
/// the url stored in the CSPURL parameter value in the class. CSP pages have
/// the CSPURL set to the original url requested automatically when they are
/// compiled. If the url does not match, you get a page not found error.
///
/// <P>For example if you have two CSP applications defined that both map to the same
/// namespace and the same directory '/A' and '/B'. Then you view '/A/page.csp'
/// this will load this page and create the class 'csp.page' with the CSPURL
/// parameter set to '/A/page.csp'. With this flag set you may only access this
/// page using the url '/A/page.csp'. If this flag is false you may access it
/// via the pages '/B/page.csp', '/A/csp.page.cls', '/B/csp.page.cls'.  Note that the flag is checked on
/// the application associated with the CSPURL parameter, so even if the '/B'
/// application has the flag turned off, if the '/A' application has it turned
/// on you will get a page not found error from '/B/page.csp'.
///
/// <P>If you modify the CSP class and change the CSPURL="" then this disables checking for this page.
Property LockCSPName As Security.Datatype.BooleanYN [ InitialExpression = 1 ];

/// A predefined login page that can be sent out to the browser if the application requires<br>
/// For CSP Web Application only.<br>
/// an authenticated identity and one is not available yet.<br>
Property LoginPage As %String(MAXLEN = 256);

/// Mapping of MatchRole/TargetRoles pairs to assign to the application<br>
/// For all application types.<br><br>
///
/// MatchRoles are in the format:<br>
/// MatchRole1:TargetRole1:TargetRole2,MatchRole2:TargetRole3:TargetRole4<br>
/// To specify a role to always be granted to an application, set MatchRole="", i.e. (:TargetRole1)<br><br>
///
/// For Routine/Database pairs, Routines are in the format:<br>
/// Routine1:dbname:Flag,Routine2:dbname:Flag<br><br>
///
/// For Client application identification hash, ClientApplications are in the format:<br>
/// Hash,Hash1,Hash2<br><br>
///
Property MatchRoles As list Of %String(MAXLEN = 32767);

/// Short Name for Application.
/// Web applications should start with a  "/".<br>
/// Client Applications are in the format AppName.EXE.<br>
/// Privileged routines can be any format.<br>
Property Name As %String(MAXLEN = 64, MINLEN = 1) [ Required ];

Property NameLowerCase As %String(MAXLEN = 64, MINLEN = 1, XMLPROJECTION = "NONE") [ Internal, ReadOnly, Required ];

/// The namespace where pages for this application are run.<br>
/// For CSP Web Application only.<br>
///
Property NameSpace As %String(MAXLEN = 64);

/// Force the namespace to be uppercase.<br>
Method NameSpaceSet(Val) As %Status [ Internal ]
{
}

/// Specifies the package to prefix to the class name for all CSP files in this application.<br>
/// For CSP Web Application only.<br>
/// If not specified it defaults to "csp".<br>
Property Package As %String(MAXLEN = 64);

/// This specifies the physical path (directory) for the CSP files on the InterSystems IRIS server.<br>
/// For CSP Web Application only.<br>
///
Property Path As %String(MAXLEN = 256);

/// A name pattern which is used by the CSP Server to limit the classes which may be run in this application. <br>
/// For CSP Web Application only.<br>
/// This is a COS pattern, (1"B",1"A".1N) match {B.cls, A0.cls ... A9.cls} <br>
Property PermittedClasses As %String(MAXLEN = "");

/// This specifies whether to use subdirectories.<br>
/// For CSP Web Application only.<br>
/// If WPath is the Web Path and PPath is the Physical Path, then with recurse turned on,<br>
/// WPath/xxx/yyy will look in PPath/xxx/yyy. If recurse is turned off, only files directly<br>
/// contained in WPath are used.
Property Recurse As Security.Datatype.BooleanYN [ InitialExpression = 1 ];

/// This specifies whether to use FHIR-standard redirects of empty paths.<br>
/// For REST Web Application only.<br>
/// For example, if the request is for WPath/csp/appname and the app /csp/appname/<br>
/// has this property enabled, then instead of serving the request with the next level down<br>
/// (csp, if it exists), the request will be served by /csp/appname/.
Property RedirectEmptyPath As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

/// The Resource name that controls access to this application.<br>
/// For all application types.<br>
/// If no resource is defined, then it is a public application which
/// anyone can run.<br>
Property Resource As %String(MAXLEN = 64, MINLEN = 0);

/// List of Routines that can invoke this application.<br>
/// For Privileged Routine Applications only.<br>
/// These are in the format Routine/Class:dbname:Flag, where dbname is the name of the database where the routine resides; Flag=0 is a routine, Flag=1 is a class name.
///
Property Routines As list Of %String(MAXLEN = 32767);

/// Allows the web server built into InterSystems IRIS to serve up static files, e.g., html or jpg files, from this application path.<br>
/// For CSP Web Application only.<br>
/// This also allows the stream server to serve files from this path.<br>
/// 0 - No - Never serve files from this application path<br>
/// 1 - Always - Always serve files from this application path, ignore CSP security setting for this path for static files. This is the default for new applications as it is backward compatible with serving files from the web server.<br>
/// 2 - Always and cached - Always serve files from this application path and allow the CSP gateway to cache these files to avoid having to request them from InterSystems IRIS. This is the mode we expect deployed application to use<br>
/// 3 - Use CSP security - If the user has permissions to view a csp/cls page in this application then allow them to view a static file, if they do not have permissions to view a csp/cls page then return a 404 page not found page.<br>
Property ServeFiles As %Integer(DISPLAYLIST = ",No,Always,Always and cached,Use CSP security", VALUELIST = ",0,1,2,3") [ InitialExpression = 1 ];

/// Time, in seconds, of how long to cache static files.<br>
/// For CSP Web Application only.<br>
///
Property ServeFilesTimeout As %Integer [ InitialExpression = 3600 ];

/// This specifies the default superclass.<br>
/// For CSP Web Application only.<br>
/// If blank, it defaults to %CSP.Page.<br>
Property SuperClass As %String(MAXLEN = 1024);

/// This specifies the default session timeout, in seconds.<br>
/// For CSP Web Application only.<br>
///
Property Timeout As %Integer(MAXVAL = 100000, MINVAL = 0) [ InitialExpression = 900 ];

/// This specifies whether to use two-factor authentication for this application.<br>
/// For CSP Web Application only.<br>
/// Two Factor Authentication is used with Password authentication which causes a security token to be<br>
/// sent to the user. To complete authentication the user must enter the security token.
Property TwoFactorEnabled As Security.Datatype.BooleanYN [ InitialExpression = 0, Internal ];

/// Type - Bitmap describing the type of application<br>
/// Bit 0 = System Application - Reserved<br>
/// Bit 1 = CSP/REST Web Application (Default)<br>
/// Bit 2 = Privileged routine application<br>
/// Bit 3 = DocDB/Client Application<br>
Property Type As Security.Datatype.ApplicationType(MAXVAL = 9, MINVAL = 2) [ InitialExpression = 2 ];

/// This specifies whether to use cookies for CSP session management or not.<br>
/// For REST and CSP Web Application only.<br>
/// You can set this on a per-application basis. It does NOT affect the user's use of<br>
/// cookies in their application, simply how the session is managed. The available<br>
/// options are:<br>
/// 'Never' use cookies - This will just use the CSPCHD parameter to persist the session<br>
/// state from page to page and will not send a cookie to the browser at all.<br>
/// 'AutoDetect' (the default) - This will start by sending the cookie to the browser and<br>
/// also including the CSPCHD parameter in all the links and forms. Then when the user clicks<br>
/// on the next link if the browser accepted the cookie it will switch to the 'Always'<br>
/// mode and turn off the use of the CSPCHD parameters. If the browser did not accept<br>
/// the cookie it will turn into the 'Never' mode.<br>
/// 'Always' use cookies - Do not include the CSPCHD parameter. Default.<br>
/// 0 = Never, 1 = AutoDetect, 2 = Always
Property UseCookies As %Integer(DISPLAYLIST = ",Never,AutoDetect,Always", VALUELIST = ",0,1,2") [ InitialExpression = 2 ];

/// SameSite value that is used for CSP Session cookies.<br>
/// For REST and CSP Web Application only.<br>
/// This setting affects whether session cookies are sent for cross-site requests. <br>
/// The default setting for a new application is Strict.<br>
/// 0 - None - Send cookie with cross-site requests .<br>
/// 1 - Lax - Send cookie with top-level cross-site navigation. <br>
/// 2 - Strict - Do not send cookie with cross-site requests. Default.<br>
Property SessionScope As %Integer(DISPLAYLIST = ",None,Lax,Strict", VALUELIST = ",0,1,2") [ InitialExpression = 2 ];

/// Default SameSite value for cookies created by users' calls to %CSP.Response.SetCookie().<br>
/// For REST and CSP Web Application only.<br>
/// This setting affects whether session cookies are sent for cross-site requests. <br>
/// Users can override the default by specifying the SameSite value in their SetCookie call.<br>
/// 0 - None - Send cookie with cross-site requests .<br>
/// 1 - Lax - Send same-site cookies with top-level cross-site navigation. <br>
/// 2 - Strict - Do not send same-site cookies with cross-site requests. Default.
Property UserCookieScope As %Integer(DISPLAYLIST = ",None,Lax,Strict", VALUELIST = ",0,1,2") [ InitialExpression = 2 ];

/// This is the path of the directory containing the python application
///
Property WSGIAppLocation As %String(MAXLEN = 256);

/// This is the name of the WSGI-compliant python application (e.g flask_app)
///
Property WSGIAppName As %String(MAXLEN = 256);

/// This is the name of the WSGI application callable.
///
Property WSGICallable As %String(MAXLEN = 256) [ InitialExpression = "app" ];

/// This describes if the WSGI application is in Debug Mode
///
Property WSGIDebug As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

/// This determines if the application is WSGI or ASGI compliant.
///
Property WSGIType As %Integer(DISPLAYLIST = ",WSGI,ASGI", VALUELIST = ",1,2") [ InitialExpression = 1 ];

/// Version number of the record. <br>
/// Used for Export/Import.<br>
Property Version As %Decimal(SCALE = 1) [ Internal ];

/// Copy an application.<br>
/// Copy an existing application in the Security database to a new one.<br>
/// Parameters:<br>
/// Name - Name of the Application to be copied<br>
/// NewName - Name of the Application to be created<br>
/// NewDescription - Full name of the application<br>
ClassMethod Copy(Name As %String, NewName As %String, NewDescription As %String = "") As %Status
{
}

/// Create an Application.<br>
/// Create an Application in the Security database.<br>
/// For all application types.<br>
/// Parameters:<br>
/// Name - Name of the application to create<br>
/// Properties - Array of properties to set.<br>
/// Properties only need to be defined if required for that type of application.
/// Properties are in the format defined by the property definitions for the class
/// with the following exceptions:<br><br>
/// "MatchRoles" - MatchRole/TargetRoles pairs to assign to the application<br>
/// MatchRoles are in the format:<br>
/// MatchRole1:TargetRole1:TargetRole2,MatchRole2:TargetRole3:TargetRole4<br>
/// "Routines" - Routine/Database pairs<br>
/// Routines are in the format:<br>
/// Routine1:dbname:Flag,Routine2:dbname:Flag<br>
/// "ClientApplications" - Client application identification hash<br>
/// ClientApplications are in the format:<br>
/// Hash,Hash1,Hash2
/// "CorsAllowlist" - List of Origins for CORS policies<br>
/// CorsAllowlist are in the format:<br>
/// Origin,Origin1,Origin2
/// "CorsHeadersList" - List of custom headers to include when CORS is enabled<br>
/// CorsHeadersList are in the format:<br>
/// Header,Header1,Header2
/// <EXAMPLE>kill prop
/// Set prop("AutheEnabled")=authenticationType
/// Set prop("DispatchClass")=dispatch
/// Set prop("NameSpace")=namespace
/// set name=xxx
/// set sc=##class(Security.Applications).Create(name,.prop)</EXAMPLE>
/// For CSP applications, if the path specified does not exist, it is created.
ClassMethod Create(Name As %String, ByRef Properties As %String) As %Status
{
}

ClassMethod CreateOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Delete an Application.<br>
/// This method will delete an application from the security database.<br>
/// For all application types.<br>
/// Parameters:<br>
/// Name - Name of application to delete<br>
ClassMethod Delete(Name As %String) As %Status
{
}

ClassMethod DeleteOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Application exists.<br>
/// This method checks for the existence of an application in the security database.<br>
/// For all application types.<br>
/// Parameters:<br>
/// Name - Name of the application to check existence of<br>
/// Return values:<br>
///
/// If Value of the method = 0 (Application does not exist, or some error occured)<br>
/// Application = Null<br>
/// Status = Application "x" does not exist, or other error message<br><br>
///
/// If Value of the method = 1 (Application exists)<br>
/// Application = Object handle to application<br>
/// Status = $$$OK<br>
ClassMethod Exists(Name As %String, ByRef Application As %ObjectHandle, ByRef Status As %Status) As %Boolean
{
}

/// This method exports Application records to a file in xml format.<br>
/// For all application types.<br>
/// Parameters:<br>
/// FileName - Output file name<br>
/// NumExported (byref) - Returns number of records exported<br>
/// Applications - Comma separated list of Applications to export, "*" = All<br>
/// Type - Bitmap describing the type of applications to export, -1 = all<br>
/// Bit 0 = System Application - Reserved<br>
/// Bit 1 = CSP/REST Web Application<br>
/// Bit 2 = Privileged routine application<br>
/// Bit 3 - Client/DocDB Application<br>
ClassMethod Export(FileName As %String = "ApplicationsExport.xml", ByRef NumExported As %Integer, Applications As %String = "*", Type As %Integer = -1) As %Status
{
}

/// Get an application's properties.<br>
/// Gets an applications properties from the security database.<br>
/// For all application types.<br>
/// Parameters:<br>
/// Name - Name of the application to get<br>
/// Return values:<br>
/// Properties - See the Create method for more information on properties returned
ClassMethod Get(Name As %String, ByRef Properties As %String) As %Status
{
}

/// Get an application's properties.<br>
/// Gets an applications properties from the security database.<br>
/// For all application types.<br>
/// Parameters:<br>
/// Application - Object handle to an application record<br>
/// Return values:<br>
/// Properties - See the Create method for more information on properties returned
ClassMethod GetProperties(Application As %ObjectHandle, ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Return a hash value and last modified timestamp for a visual basic cache direct executable
/// For Client/DocDB application.
///
ClassMethod GetClientApplicationHash(FileName As %String, ByRef Hash As %Integer) As %Status
{
}

/// Import Applications records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import Application records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String = "ApplicationsExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Check whether app <param>appName</param> is created by IRIS by default or is something created by the user
ClassMethod IsDefault(appName As %String, namespace As %String = "", dispatchClass As %String = "") As %Boolean [ Internal ]
{
}

/// Initialize database of built-in Applications.<br>
/// Used in CheckSecurityTables() of Security.System<br>
ClassMethod Initialize(SecuritySetting As %String = "None", NewInstall As %Boolean = 0) As %Status [ Internal, ProcedureBlock = 0 ]
{
}

/// Application is public.<br>
Method IsPublic() As %Boolean
{
}

/// Modify an aplication.<br>
/// Modify an existing application's properties in the security database.<br>
/// Parameters:<br>
/// Name - Name of the application to modify<br>
/// Properties - Array of properties to modify.<br>
/// See the Create() method for a description of the Properties parameter.<br>
ClassMethod Modify(Name As %String, ByRef Properties As %String) As %Status
{
}

ClassMethod ModifyOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Given an application name, return its description
ClassMethod NameToDescription(Name As %String, Description As %String) As %String [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%OnDelete</METHOD> method of
/// the Roles class to provide notification that the role is being removed
ClassMethod RemoveRoleFromAllApplications(RoleName As %String) As %Status [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>RemoveRolesFromApplications</METHOD> class method
/// to provide notification that the role is being removed.
///
Method RemoveRoleFromApplication(RoleName As %String) As %Status [ Internal ]
{
}

/// Initialize an EMS client when an application changes
ClassMethod StartEMS() [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnAfterSave(insert As %Boolean) As %Status [ Private ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%ValidateObject</METHOD> method to
/// provide notification that the current object is being validated.
/// <P>If this method returns an error then <METHOD>%ValidateObject</METHOD> will fail.
Method %OnValidateObject() As %Status [ Internal, Private ]
{
}

/// ValidateCorsOrigin checks that the new origin is a valid origin with proper schema, host, and port. newOrigin is the new entry. Return $$$OK for a good origin or an error message for a bad origin.
ClassMethod ValidateCorsOrigin(newOrigin As %String) As %Status [ Internal ]
{
}

/// Detail all Application records, brief display. <br>
/// Names - Comma separated list of application names, "*" = All<br>
/// Type - Bitmap describing the type of application, -1 = all<br>
/// Bit 0 = System Application - Reserved<br>
/// Bit 1 = CSP Application<br>
/// Bit 2 = Privileged routine application<br>
/// Bit 3 - Client Application<br>
/// Note: This query may change in future versions<br>
ClassMethod DetailExecute(ByRef %qHandle As %Binary, Names As %String = "*", Type As %Integer = -1) As %Status [ Internal ]
{
}

ClassMethod DetailFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

ClassMethod DetailClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

/// List all Application records.<br>
/// Names - Comma separated list of application names, "*" = All<br>
/// Type - Bitmap describing the type of application, -1 = all<br>
/// Bit 0 = System Application - Reserved<br>
/// Bit 1 = CSP Application<br>
/// Bit 2 = Privileged routine application<br>
/// Bit 3 - Client Application<br>
/// Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef %qHandle As %Binary, Names As %String = "*", Type As %Integer = -1, Filter As %String = "") As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

/// List Application records associated with a namespace.<br>
/// Namespaces - Comma separated list of namespace names, "*" = All<br>
/// Note: This query may change in future versions<br>
ClassMethod NamespaceListExecute(ByRef %qHandle As %Binary, Namespaces As %String = "*") As %Status [ Internal ]
{
}

ClassMethod NamespaceListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = NamespaceListExecute ]
{
}

ClassMethod NamespaceListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = NamespaceListExecute ]
{
}

/// Extent query of Service.Applications excluding Client Applications
}
