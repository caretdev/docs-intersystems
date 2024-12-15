/// The <CLASS>%CSP.Session</CLASS> class represents a session within a CSP application.
Class %CSP.Session Extends %Persistent [ StorageStrategy = custom, System = 3 ]
{

/// A flag that you set to '1' to terminate this session upon completion
/// of this request.
Property EndSession As %Boolean [ InitialExpression = 0 ];

/// The session id value for this session.
/// <P>The session id is a system-assigned unique value that
/// identifies this session.
Property SessionId As %String;

/// Group Id
/// If an group-by-id application was opened, this will contain
/// the groupId concatenated with the browser's id
Property GroupId As %String(MAXLEN = "") [ Internal ];

/// ByIdGroups
/// A list of all by-id groups applications opened have been members of. Used to remove this session from groups
Property ByIdGroups As %List [ Internal ];

/// Process Id
/// <p>If a session has Preserve=1 this contains the process id in which the session is running.></p>
Property ProcessId As %String;

Method EndSessionSet(val As %Boolean) As %Status [ Internal ]
{
}

/// Specifies the timeout value for the session in seconds.
/// <P>If no user requests are received within the specified time period,
/// then the session will end. The default value comes from the CSP application
/// setting for the application that the session starts in which is set in the
/// configuration manager, this is often 900 seconds or 15 minutes.
/// Note that if you start a session in one applicaiton and move to another application
/// the AppTimeout will not be changed to the new applications timeout value, if you wish
/// to modify this when the application changes you can use the session events 'OnApplicationChange'
/// method.
/// <P>For no timeout, set this property to 0.
Property AppTimeout As %Integer(MAXVAL = 31536000, MINVAL = 0) [ InitialExpression = 900 ];

/// Internal property to determine if we should send the 'secure' flag with the sessionId cookie
Property SecureSessionCookie As %Boolean [ InitialExpression = 0 ];

/// Property to determine how strictly to restrict the domain of the sessionId cookie.
/// Options are None (0), Lax (1), and Strict (2), where Strict means the cookie
/// can only be used within the current application.
/// Defaults to the CSP application's corresponding setting.
/// Applications default to Strict unless otherwise configured.
/// Note that None is invalid for insecure (HTTP) connections.
Property SessionScope As %Integer(DISPLAYLIST = ",None,Lax,Strict", VALUELIST = ",0,1,2") [ InitialExpression = 2 ];

/// Property to determine which SameSite attribute to send with user-created cookies.
/// Options are None (0), Lax (1), and Strict (2). Defaults to the CSP application's
/// corresponding setting. Applications default to Strict unless otherwise configured.
/// Note that None is invalid for insecure (HTTP) connections.
Property UserCookieScope As %Integer(DISPLAYLIST = ",None,Lax,Strict", VALUELIST = ",0,1,2") [ InitialExpression = 2 ];

/// If set then run this session in the namespace given rather than the one determined
/// by the CSP application. If the application then switches applications again it will revert
/// to the namespace determined by the CSP application.
Property RunNamespace As %String;

Method RunNamespaceSet(val As %String, app As %String) As %Status
{
}

Method RunNamespaceGet() As %String
{
}

Method RunNamespaceFind(application As %String) As %String
{
}

/// If set then use this page as the error page rather than the one obtained from the
/// CSP application settings.
Property ErrorPage As %String(MAXLEN = "");

/// Original referrer when session was created, copied from the HTTP_REFERER %request value
Property Referrer As %String(MAXLEN = "");

Method ReferrerSet(val As %String) As %Status
{
}

/// The name of the application event class to be called in response to certain CSP events.
/// This should be a class derived from <class>%CSP.SessionEvents</class>. At present the
/// events that are fired are for creation of a new session (OnStartSession), deletion of a
/// session (OnEndSession) and the timeout of an existing session by the CSP daemon (OnTimeout).
/// You can set the event class for a CSP application in the CSP options of the configuration manager.
/// Note that if you set the EventClass inside a CSP page then as the session has already been
/// created at this point it will not fire the OnStartSession event, if the EventClass is set in the
/// CSP application settings then it will fire the start session event as it knows which event class
/// to call before it creates the session.<br>
/// Note that this adds this event class to the list unless it is already present and will not replace any
/// existing event class. Setting this to "" will not have any effect, if you wish to remove an
/// EventClass then call <method>EventClassRemove</method>
Property EventClass As %String(MAXLEN = "") [ Calculated ];

/// Set method for EventClass property.
Method EventClassSet(class As %String) As %Status [ Internal ]
{
}

Method EventClassGet() As %String
{
}

/// Add an event class to the list of classes we will callback. If the class is already present we will
/// remove it and add this at the front of the list.
/// The namespace is optional and will default to the current namespace.
Method EventClassAdd(class As %String, namespace As %String) As %Status
{
}

/// Remove an event class from the set of event classes we will run on session events.
/// The namespace is optional and will default to the current namespace. Returns true if it removed
/// the class and false if it did not. If <var>class</var> is null then it will remove all event
/// classes defined in this namespace.
Method EventClassRemove(class As %String, namespace As %String) As %Boolean
{
}

/// Return true if this event class is present in the current session event list or false otherwise.
/// The namespace is optional and will default to the current namespace.
Method EventClassExists(class As %String, namespace As %String) As %Boolean
{
}

/// Remove all event classes from the event class list
Method EventClassClear() As %Status
{
}

/// Return an array of Array(namespace,classname)="" of the currently defined event classes
Method EventClassList(ByRef Array As %String) As %Status
{
}

/// Internal method to fix context of event class
Method EventClassFix(context As %String) As %Status [ Internal, Private ]
{
}

Property EventClassContext As %String(MAXLEN = "") [ Internal, Private ];

/// The StickyLogin is a description of the user authentication most recently attempted in this session. This is for internal use of the CSP Server.
Property StickyLogin As %String(MAXLEN = "") [ Internal, Private ];

Method StickyLoginGet() As %String [ Internal ]
{
}

/// stickyLogin is an exported security context
Method StickyLoginSet(stickyLogin As %String) As %Status [ Internal ]
{
}

/// The namespace this session was created from. This is set automatically when the
/// class is created to the current namespace. It is used by the session daemon so
/// that it can swap to the right namespace to run the timeout method on applications.
Property Namespace As %String;

/// A flag specifying the level of state preservation required by
/// this session. You can change the value of this flag at any time.
/// <P>This can take one of the following values:
/// <UL>
/// <LI><B>0</B> The only state information that is preserved is the information in the %session object.</LI>
/// <LI><B>1</B> The entire state of the session process is preserved from one request to the next.
/// This means that you tie up this process for just this one user. As it uses the same process
/// all local variables, locks, etc. are preserved from one request to the next.</LI>
/// </UL>
Property Preserve As %Integer [ InitialExpression = 0 ];

/// Set method for Preserve property.
Method PreserveSet(val As %Integer) As %Status [ Internal ]
{
}

/// Counter used internally that holds the number of times this session is used.
Property MessageNumber As %Integer [ InitialExpression = 0, Internal ];

/// Set method for MessageNumber property.
Method MessageNumberSet(val As %Integer) As %Status [ Internal, Private ]
{
}

/// Any headers we wish to sent on every request for this session
Property PersistentHeaders As %String(MAXLEN = "") [ Internal ];

Method PersistentHeadersSet(val As %String) As %Status [ Internal, Private ]
{
}

/// Set a persistent HTTP header values in the %session object so it will be output for every response from this session.
/// If there is already a header with this name then this will overwrite this prioir header.
Method SetPersistentHeader(name As %String, value As %String)
{
}

/// Return the value of the persistent session <var>name</var> header.
/// Note that <var>name</var> is not case sensitive
Method GetPersistentHeader(name As %String) As %String
{
}

/// Remove a persistent header from the session Note that <var>name</var> is not case sensitive
Method DeletePersistentHeader(name As %String)
{
}

/// Counter of number of SOAP requests made to this Session
Property SOAPRequestCount As %Integer [ InitialExpression = 0, Internal ];

/// Update the HMAC portion of the session token
Method UpdateHMAC() [ Internal ]
{
}

/// This is true when this CSP session is being debugged, and false otherwise.
/// It is set automatically by the CSP dispatch engine and you should not
/// alter its value yourself.
Property Debug As %Boolean [ InitialExpression = 0 ];

/// Set method for Debug property.
Method DebugSet(val As %Integer) As %Status [ Internal ]
{
}

/// Indicates whether this is the first request of the
/// session (True) or a subsequent request (False).
Property NewSession As %Boolean [ InitialExpression = 1 ];

Method NewSessionSet(val As %Boolean) As %Status
{
}

/// Record the path we sent the last session cookie with
Property CookiePath As %String(MAXLEN = "") [ Internal ];

/// This property contains the browser name based on parsing the HTTP_USER_AGENT CGI variable.
/// This property is set once when the session is created.
/// Possible values are "IE", "Mozilla", "Netscape", "Safari" and "".
/// Not all possible browsers are suppported and the value "" is used for unknown browsers.
/// "Mozilla" is used for all Mozilla based browsers such as Mozilla and Firefox.
Property BrowserName As %String(MAXLEN = "");

Method BrowserNameGet() As %String
{
}

/// This property contains the browser operating system based on parsing the HTTP_USER_AGENT CGI variable.
/// This property is set once when the session is created.
/// Possible values are "Windows", "Macintosh", "X11" and "".
/// Not all possible browsers are supported and the value "" is used for unknown browsers.
Property BrowserPlatform As %String(MAXLEN = "");

Method BrowserPlatformGet() As %String
{
}

/// This property contains the browser version based on parsing the HTTP_USER_AGENT CGI variable.
/// This property is set once when the session is created.
/// The version is "" or in the format "major.minor".
/// Not all possible browsers are supported and the value "" is used for unknown browsers.
Property BrowserVersion As %String(MAXLEN = "");

Method BrowserVersionGet() As %String
{
}

/// Contains the HTTP_USER_AGENT CGI variable passed in the initial session request.
Property UserAgent As %String(MAXLEN = "");

/// Stores the encryption key used to validate and secure the communication with the browser.
/// This key never leaves the server.
Property Key As %String;

/// Private accessor method
Method KeySet(val As %Boolean) As %Status [ Internal, Private ]
{
}

/// Indicates whether sessions should be maintained using cookies or not. There are three
/// possible values:<ul>
/// <li><b>0</b> - Never use cookies. This will pass the CSPCHD parameter around in all the
/// url links and as hidden fields in the &lt;FORM&gt; elements.</li>
/// <li><b>1</b> - Auto detect cookie support. This will start by trying to insert a cookie
/// into the browser, if this fails it will switch to mode 0 and never use cookies for this
/// session. The initial page will send both cookies to the browser and it will include the
/// CSPCHD parameter in all links and forms.</li>
/// <li><b>2</b> - Always use cookies. This will only use cookies so if the browser does not
/// accept the cookie then the session state will not be maintained.</li>
/// </ul>
Property UseSessionCookie As %Integer [ InitialExpression = 1 ];

/// Used by the CSP Gateway to store the session Id on the browser. Do not alter this property.
Property CSPSessionCookie As %String(MAXLEN = "");

/// The language (RFC 1766 format) in which pages in this CSP session are to be displayed.
/// The %session Language attribute is used as the default language for csp:text, span and div
/// tags if %response.Language is not set. If %session.Language is not set by the program,
/// then it will default to the best fit with the HTTP_ ACCEPT_LANGUAGE CGI variable.
Property Language As %String;

/// Internal property that hold the name of the license that this session is associated with
Property LicenseId As %String(MAXLEN = "");

/// Set method for LicenseId property.
Method LicenseIdSet(val As %String) As %Status [ Internal, Private ]
{
}

/// The username this CSP session is logged in as.
Property Username As %Library.Username [ Calculated ];

/// Get method for Username property.
Method UsernameGet() As %String [ CodeMode = expression ]
{
}

/// If we are passed an 'Authorization' HTTP header the value is stored here to avoid
/// attempting to login with this multiple times, for internal use only.
Property HttpAuthorization As %String(MAXLEN = "");

/// Record if we can not get a license for this session
Property NoLicense As %Boolean [ InitialExpression = 0, Internal, Private ];

/// If true and the CSP gateway supports this then use the HTTP keep alive support to reuse the
/// TCP/IP connection for any additional HTTP requests. If possible you should also supply the
/// Content-Length header otherwise the CSP gateway will have to buffer the output in order to
/// add the length of the message to the header. The default
/// for this property is true to keep the connection alive where possible except for HTTP/1.0 responses
/// where we will use the default for HTTP/1.0 which is to close the connection on each request.
Property KeepAlive As %Boolean [ InitialExpression = 1 ];

/// Stored the CSP application name so we can detect when the CSP application has changed.
/// This is required so we can revalidate the user against any security permissions the other
/// application requires that the first application does not. This is not set until the security
/// context for this application is validated.
Property Application As %String(MAXLEN = "");

/// Set method for Application property.
Method ApplicationSet(val As %String) As %Status [ Internal, Private ]
{
}

/// The data/time the session was created in UTC
Property CreateTime As %TimeStamp;

/// Set method for CreateTime property.
Method CreateTimeSet(val As %TimeStamp) As %Status [ Internal, Private ]
{
}

/// The date/time when this session was last modified in UTC
Property LastModified As %TimeStamp;

/// Set method for LastModified property.
Method LastModifiedSet(val As %TimeStamp) As %Status [ Internal, Private ]
{
}

/// For internal use only. Holds a serialized form of the sessions security context
Property SecurityContext As %String(MAXLEN = "") [ Internal ];

/// Set method for SecurityContext property.
Method SecurityContextSet(val As %String) As %Status [ Internal, Private ]
{
}

/// For internal use only. Holds a serialized form of the session's escalated security context
Property EscalationContext As %String(MAXLEN = "") [ Internal ];

/// Set method for SecurityContext property.
Method EscalationContextSet(val As %String) As %Status [ Internal, Private ]
{
}

/// Escalate the CSP session to the specified escalation role. The role must be one of the current user's configured EscalationRoles.
Method EscalateLogin(roleName As %String, password As %String) As %Status
{
}

/// Remove the escalation role added by <Method>EscalateLogin</Method>. If there is no current escalation role, this method does nothing.
/// After this the sessions's security context will be returned to the user's initial login roles.
Method ClearEscalation() As %Status
{
}

/// For internal use only
Property OldTimeout As %String [ Internal ];

Method OldTimeoutSet(val As %String) As %Status [ Internal, Private ]
{
}

/// Login with this username and password, returns a status code to show
/// if it worked or not. This method also trades license units at the same time so
/// this CSP session will be logged in as a named user.
/// If you pass <var>type</var>=1 then this will trade licenses only and not login as this user.
/// After the login completes it also updates the property <property>Username</property> to match the $username
/// value this session is logged in as. The property <property>LicenseId</property> is also updated to be the
/// license identifier that this session is logged in with.<br>
/// If a login fails then the property <property>Username</property> and property <property>LicenseId</property>
/// will remain at their previous values.
/// If you pass <var>oldpassword</var> then this will attempt to change the password of <var>username</var> from
/// <var>oldpassword</var> to <var>password</var> and login as this user.
/// Note new status return values:
/// CSP applications can be two-factor-enabled. If the current application is one such, then if Login() successfully
/// authenticates the username/password, it does not return $$$OK, but rather $$$CSPPendingTwoFactorAuthentication.
/// During Two-Factor Authentication, an 8-character numeric security string will be sent to the user's
/// cellphone. You must obtain this string from the
/// user and call CompleteTwoFactorLogin^%CSP.Session() to complete authentication of this user.
/// Also note that if the login SUCCEEDS (status returned will be $$$OK), but
/// you were unable to secure a license, the new apperr parameter will have the value of $$$CSPErrorTradeLicense. In such a case,
/// you may have to call the Login function again to trade a license. If you are calling merely to trade a license (type=1), then
/// if the license trade fails, Login will return a status of $$$CSPErrorTradeLicense.
Method Login(username As %String, password As %String = "", type As %Integer = 0, oldpassword As %String, apperr As %Status) As %Status
{
}

/// If this application has a Two-Factor-Authentication enabled, when this method allows you to finish the second part of the authentication. For example,
/// a security token was sent during the initial login attempt, Login^%CSP.Session().
/// You must obtain this security code (an 8-character numeric string) and call CompleteToFactorLogin() to
/// complete authencation for this user.
/// Note: This should only be called if Login^%CSP.Session() returns a status of $$$CSPPendingTwoFactorAuthentication
/// Returns: $$$CSPSecondFactorLoginFailed if request's application was not Two-Factor-Authentication enabled
/// Returns: $$$OK if login was completed
/// Returns: $$$CSPSecurityTokenMismatch is a token was found, but did not match the entered token,
/// else returns the error code which cause the completion to fail
Method CompleteTwoFactorLogin(EnteredToken As %String, apperr As %Status) As %Status [ CodeMode = expression ]
{
}

/// The place users can preserve any data within a session. You can set values into this
/// multidimensional property using:
/// <example>
/// Set %session.Data(1,2,"string")="value"
/// Write %session.Data("Key1","Key2"),!
/// Merge %session.Data(5)=array
/// </example>
/// This is faster than using the <method>Get</method> and <method>Set</method>
Property Data As %String [ MultiDimensional ];

/// Get the value of the user data at <var>index</var>. This is equivalent to:
/// <example>
/// Write $Get(%session.Data(index),default)
/// </example>
/// It is faster to access the property directly rather than use the <method>Get</method>
/// and <method>Set</method> methods. These are kept for backward compatibility.
Method Get(index As %String, default As %String = "") As %String [ CodeMode = expression, Final ]
{
}

/// Set the value of the user data at <var>index</var> to <var>value</var>. This is
/// equivalent to:
/// <example>
/// Set %session.Data(index)=value
/// </example>
/// It is faster to access the property directly rather than use the <method>Get</method>
/// and <method>Set</method> methods. These are kept for backward compatibility.
Method Set(index As %String, value As %String) [ Final ]
{
}

/// Return the next <var>index</var> in the user data <property>Data</property>. This
/// has been deprecated in favour of the faster syntax:
/// <example>
/// Write $Order(%session.Data(index))
/// </example>
Method Next(index As %String = "") As %String [ CodeMode = expression, Deprecated, Final ]
{
}

/// Remove the <var>index</var> from the user data <property>Data</property>. This
/// has been deprecated in favour of the faster syntax:
/// <example>
/// Kill %session.Data(index)
/// ; Or if index=""
/// Kill %session.Data
/// </example>
Method Kill(index As %String = "") [ Final ]
{
}

/// Tests if a name-value pair <VAR>name</VAR> is defined in the user data.
/// This has been deprecated in favour of the faster syntax:
/// <example>
/// Write $Data(%session.Data(index))
/// </example>
Method IsDefined(index As %String) As %Boolean [ CodeMode = expression, Deprecated, Final ]
{
}

/// Unlock the ^%cspSession global so that another process can access this objects storage
/// at the same time. Normally all accesss to the session object is serialised so that only
/// one process can modify the session object at any time. So if you are using
/// frames for example the same CSP user will make requests to get all frames at once, but
/// these will be serialised on the application server side. If you know that a frame will take a while
/// to generate but you do not wish this to hold up the generation of the other frames and
/// you do not need to modify the session object you can call Unlock to unlock this session
/// object so other processors can access it. This should be used with care.
/// The <var>save</var> is for internal use only, by default when you call Unlock if the
/// session is modified we will save the changes before unlocking the session.
Method Unlock(save As %Boolean = 1) As %Status
{
}

Property nosave As %Integer [ InitialExpression = 0, Internal, Transient ];

Property GetNewId As %Boolean [ InitialExpression = 0, Internal, Transient ];

/// If set, this causes the cspServer to destroy the Login Cookie, any
/// Security Tokens associated with this session, and the Sticky-login associated
/// with this session's browser. '1' to destory terminate this session upon completion
/// of this request.
Property LogoutCleanup As %Boolean [ InitialExpression = 0, Internal, Transient ];

/// Holds application licenses taken for this session.<br>
/// Format:  $lb($lb(appname1,type1,type2,...),$lb(appname2,type1,type2,...),...)<br>
/// Controled by $SYSTEM.License.TakeApplicationLicense(AppName,FeatureKeyword,.Count) and $SYSTEM.License.ReturnApplicationLicense(AppName,FeatureKeyword,.Released)
Property ApplicationLicenses As %List [ Internal ];

/// Lock the ^%cspSession global to prevent other InterSystems IRIS processes accessing this objects
/// storage. By default the ^%cspSession global is locked so you only need to call this
/// in rare cases where you use the <method>Unlock</method> and you wish to reaquire the
/// lock afterwards.
Method Lock(timeout As %Integer) As %Status
{
}

/// Initialize CSP session object.
Method %OnNew(initvalue, lock = 1) As %Status [ Internal ]
{
}

/// Cleanup CSP session object.
Method %OnClose() As %Status [ Internal, Private ]
{
}

/// Update the sessionId timeout after activity, for internal use
ClassMethod UpdateTimeout(id As %String) As %Status [ Internal ]
{
}

/// Load saved session
Method %LoadData(id As %String) As %Status [ Internal, Private ]
{
}

/// Save session
Method %SaveData(id As %String, notFinalSave As %Boolean = 0) As %Status [ Internal ]
{
}

/// Delete saved session data.
ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Internal ]
{
}

/// End the CSP session, not for public use.<br>
/// timedout - flag set to true if this was ended because of a timeout<br>
/// forceend - 0 to use the 'EndSession' property to see if the session should be ended,
/// and 1 will end the session even if 'EndSession' is false but will not free the license,
/// 2 will force the end of the session and free the license.
Method endSession(timedout, forceend, requestid = "") As %Boolean [ Internal ]
{
}

/// Log data to CSP session object.
Method Log(msg As %String, data As %Binary = "") [ Internal ]
{
}

/// Retrieve session object associated with sessionId
ClassMethod GetSession(sessionId As %String, CSPSessionCookie As %String = "", lock As %Boolean = 1, request As %CSP.Request) As %CSP.Session [ Internal ]
{
}

/// Allow sessionId of existing session to be udpated to a brand new value
Method ChangeSessionId(sessionId As %String, request As %CSP.Request) [ Internal, Private ]
{
}

/// Resets this %CSP.Session object to its initial state
Method Reset() [ CodeMode = generator, Final, Private ]
{
}

/// Internal function called when InterSystems IRIS restarts
ClassMethod SystemRestart() As %Status [ Internal ]
{
}

/// Standard extent query
/// Execute method for Extent query
ClassMethod ExtentExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Fetch method for Extent query
ClassMethod ExtentFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ExtentExecute ]
{
}

/// Close method for Extent query
ClassMethod ExtentClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ExtentExecute ]
{
}

/// Standard extent query
/// Execute method for Extent query
ClassMethod SessionInfoExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Fetch method for Extent query
ClassMethod SessionInfoFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ExtentExecute ]
{
}

/// Close method for Extent query
ClassMethod SessionInfoClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ExtentExecute ]
{
}

Method ProcessRequest(request, response, ByRef preserve) [ Internal ]
{
}

Method SetContext() [ Internal ]
{
}

Method Callback(method As %String) [ Internal ]
{
}

/// Logout all CSP sessions for the indicated user.
/// Callbacks can't stop logout
/// The login cookie and any pending-second-factor logins are cancelled.
/// Note: username="" implies username=$username.
/// Note: $Roles must have "%All" to call this
/// Note: LogoutAll calls %SaveData on the changed sessions.
Method LogoutAll(username As %String = "")
{
}

/// This call logs out the current session. The EndSession is not set to 1.
/// This call uses the stored security context from the Event Class Context to call "OnLogout" Event Class callbacks,
/// so the caller of Logout() must have sufficient privileges to call $System.Security.Users.ImportSecurityContext() if callbacks exist.
/// The OnLogout callback may set EndSession to 1, if desired.
/// The Session is logged out only if there are no callbacks, the "OnLogout" callbacks return $$$OK, or 'force' is true.
/// If the caller has the %All role, the login cookie will also be destroyed and any pending second factor tokens for this session will be deleted.
/// Note: Caller must do a %SaveData() on the session instance
Method Logout(force As %Integer = 0)
{
}

/// Return the Username from the by-id groups sticky context. This could be
/// the empty string if no authenticated user has logged into the group yet.
Method GetByIdUsername(runtimeGroupId As %String) As %String [ Internal ]
{
}

/// CheckLinkAccess determines whether the target user is permitted
///    to view a given CSP or Zen page based on the security requirements
///   for the relevant target Web application, the underlying page class,
///   and any custom resources applied to the link.
/// <p>Positive return values indicate that there is already enough information to
/// determine if the link should be enabled (Target variables may be undefined.).
/// Negative values indicate that further processing
/// needs to be done. Checking that the Target User can be logged into the Target Application
/// and/or checking if the link's page has target resources which the Target User
/// must have privileges to.</p>
/// <p>Returns 0 if the link is not to a csp application. (enable)</p>
/// <p>Returns 1 if the user is permitted access to the page. (enable) </p>
/// <p>Returns 2 if could not determine Target User. Clicking on link will bring up login page. (choice: enable or disable)</p>
/// <p>Returns 3 if the user doesn't have access to the CSP application.(disable)</p>
/// <p>Returns 4 if the user doesn't have resources specific to the page.(disable)</p>
/// <p>Returns -1 if check both if the Target User can log into the Target Application
/// and check the Page's resources if any.</p>
/// <p>Returns -2 just check for access to the link's Page's resources, if any.</p>
/// <ol>
/// <li>It is assumed the GetLinkTargets is called from a context in which
///    %request is available, ie, from callpage in the CSP Server </li>
/// <li>Definitions:
///    <ol><li>Source application - application in which the current caller is being run</li>
///    <li>Current user - ($Username) the user currently logged into the Source Application</li>
///   <li>Target Application - the application pointed to by the link</li>
///    <li>Target User - the computed username under which the user will be logged
///       into the Target Application</li>
///    <li>Target Page: the page portion of the link, e.g., /csp/app/mypage.csp:  mypage.csp</li>
///   </ol></ol>
/// <p>This method is meant to be called from the link's containing page
///   within the context of the CSP server. The containing page is part of a
///   session's current application.</p>
/// <p>We must be able to detemine which target user will be used to check privileges. The target user cannot be
/// determined if the source and target applications are different and the target is neither part of an active
/// by-id group nor sharing-sessions with the source application.</p>
/// <p>Applications share sessions when:</p>
/// <ul>
/// <li>The source and target are the same application.</li>
/// <li>The link to the target page contains CSPSHARE=1.</li>
/// <li>Source and target applications have the same Session Cookie Path.</li>
/// </ul>
/// <h3>Who is the target user?</h3>
///  <p>Since this is called from with a CSP session, there are the following situations:</p>
///  <ol>
/// <li>The target application is a member of an authenticated by-id group. That group's
///  authenticated user is the Target User.</li>
/// <li>If the target application will be in the current session, the CSP server has already
/// handled logic for determing the user.
///  <ol>
///   <li>The session's user is not UnknownUser. The target user is $Username.</li>
///   <li>The session's user is UnknownUser
/// <ul>
/// <li>If the target application is the same as the source application, the Target User is UnknownUser.</li>
/// <li>If the target application is different, the target user is the user from the session's Sticky-context.
/// If the session has no sticky-context, the Target User will be UnknownUser</li>
/// </ul></li>
/// </li></ol></li></ol>
///  <h3>CheckLinkAccess Policies</h3>
/// <ul>
/// <li>If the Target Application is not a CSP Application, return ENABLE/UNKNOWN	</li>
/// <li>If the Source and Target application are the same, return CHECK_RESOURCES_ONLY.</li>
/// <li>If the Target Application is not enabled, return NO_APP_ACCESS	</li>
/// <li>If the Target Application is part of an authenticated By-ID group, set Target User to group's User, return CHECK_ALL</li>
/// <li>If the Target Application is part of an authenticated By-Session group, set Target User to group's User, return CHECK_ALL</li>
/// <li>If the Target Application is neither in an authenticated by-id group nor in the Source Application's session, return ENABLE/UNKNOWN</li>
/// <li>If an exception occurs, return NO_ACCESS_TO_RESOURCE</li>
/// </li>
/// </ul>
Method GetLinkTargets(link As %String, ByRef targetUsername As %String, ByRef targetAppName As %String, ByRef targetNamespace As %String) As %Integer
{
}

Method GlobalReplace(source As %String, dest As %String)
{
}

ClassMethod collate(source As %String, dest As %String) [ Private ]
{
}

}
