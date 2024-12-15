/// The <class>%SYSTEM.CSP</class> class provides an interface for managing CSP pages.
/// <p>You can use it via the special <b>$system</b> object:
/// <example>
/// Do $SYSTEM.CSP.LoadPage("/user/apps/page.csp","ck")
/// </example>
Class %SYSTEM.CSP Extends Help [ Abstract, System = 4 ]
{

/// Load a CSP page from disk and compile it.
/// <p>Load a CSP page from the file <var>pageURL</var> specified as a URL
/// and create a class representation of them. The class created will be compiled unless you
/// pass the qualifier <i>/cspcompileclass=0</i>.
ClassMethod LoadPage(pageURL As %String, flags As %String = "ck") As %Status [ CodeMode = expression ]
{
}

/// Load all CSP pages in a directory from disk and compile them.
/// <p>Load all CSP page from the directory <var>dirURL</var> specified as a URL
/// and create a class representation of them. The classes created will be compiled unless you
/// pass the qualifier <i>/cspcompileclass=0</i>.
ClassMethod LoadPageDir(dirURL As %String, flags As %String = "ck") As %Status [ CodeMode = expression ]
{
}

/// Delete a CSP page from the disk file <var>pageURL</var> specified as a URL
/// as well as the associated class representation.
ClassMethod DeletePage(pageURL As %String, qspec As %String) As %Status
{
}

/// Display a CSP page on the console.
/// Displays the CSP page with URL <var>url</var> to the primary
/// device (console). If auto-compiling is enabled, it checks the
/// timestamp of the source file to see if a recompilation is
/// required and peforms it if necessary.<br>
/// <var>showhttp</var> if false will skip the HTTP headers and the OnPreHTTP callback<br>
/// <var>session</var> if you pass in an existing %CSP.Session object it will use this one rather
/// than making a new one.
ClassMethod Show(url As %String, showhttp As %Boolean = 1, session As %CSP.Session) As %String
{
}

/// Load a CSP rule file.
/// <p>Loads the CSP rule file <var>file</var> (<i>.csr</i> file) into
/// the current namespace and compiles it.
ClassMethod LoadRule(file As %String, flags As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Load a CSP rule file specified as a URL.
/// <p>Loads the CSP rule file <var>url</var> (<i>.csr</i> file) into
/// the current namespace and compiles it.
ClassMethod LoadRuleFile(url As %String, flags As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Load all CSP rule files in a directory specified as a URL.
/// <p>Loads all the CSP rule files in <var>directory</var> (<i>.csr</i> files) into
/// the current namespace and compiles it.
ClassMethod LoadRuleDir(directory As %String, flags As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Delete all the user defined rules in the current namespace.
ClassMethod DeleteAllRules() As %Status [ CodeMode = expression ]
{
}

/// Delete the rules that had been loaded by a CSP rule file specified
/// as a URL.  DeleteRuleFile allows easy cleanup of previously
/// loaded rules.
ClassMethod DeleteRuleFile(url As %String, flags As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Delete a CSP rule.
/// <p>Deletes the CSP rule <var>rulename</var> in
/// the current namespace.
ClassMethod DeleteRule(rulename As %String, flags As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Provide a shell to get CSP pages on the command line.
/// <p>Provide a command line interface to display CSP pages. This
/// is useful for debugging.
ClassMethod Shell()
{
}

/// Return the CSP class name for a url.
/// <p>Return the class name of the class that will be generated from <var>url</var>.
/// If you use a relative URL then you should also specify <var>baseurl</var> which
/// is the URL this page is relative to.
ClassMethod GetClassName(url As %String, baseurl As %String = "") As %String [ CodeMode = expression ]
{
}

/// Return the filename for a url of a CSP page.
/// <p>Return the file name associated with the page <var>url</var>.
ClassMethod GetFileName(url As %String) As %String [ CodeMode = expression ]
{
}

/// Return the CSP application name from the url of a CSP page.
ClassMethod GetAppName(url As %String) As %String
{
}

/// Return the default CSP application name for this namespace.
/// <p>The default application
/// may be explicitly defined by going to the desired appliction, setting its namespace,
/// and then checking the Is-Namespace-Default checkbox.</p>
/// <p>If there is no explicitly defined
/// default, the following rules apply.
/// If /csp/&lt;namespace&gt; is defined
/// then this will be the default application name, otherwise it will return the first CSP application
/// that maps to this namespace.</p>
ClassMethod GetDefaultApp(namespace As %String) As %String [ CodeMode = expression ]
{
}

Parameter Config = ",8BitLocaleCharset,DebugErrorPage,DefaultErrorPage,ClearSessionsOnRestart,SessionLockTimeout,Expire,DefaultServerName,CSPConfigName,DefaultLoginPage,DefaultPasswordChangePage,OptionalBrokerJS,FileServerPage,UseLegacySessionSharing,ProtectSessionCallback,DisableGatewayCacheClear,GatewayPingHTTPSConfig,GatewayPingHTTPSPort,SessionPersistentHeaders,SQLGatewayTimeout,";

/// Set a CSP configuration parameter.
/// <p>Set one of the CSP configuration parameters that effect
/// how CSP runs on this entire machine. Pass in the <var>param</var>
/// name and the <var>val</var> that you wish to set.
ClassMethod SetConfig(param As %String, val As %String)
{
}

/// Get the value of a CSP configuration parameter.
/// <p>Gets the value of one of the CSP configuration parameters that effect
/// how CSP runs on this entire machine. Pass in the <var>param</var>
/// name and it returns the current value.
ClassMethod GetConfig(param As %String) As %String
{
}

/// Displays the current global CSP configuration parmeters and what they mean.
/// <p>Displays a list of the current CSP configuration parameters,
/// their values and what each of them means.
ClassMethod DisplayConfig()
{
}

/// Take an absolute file name, e.g., "c:\dir1\dir2\myfile.dat".
/// Search the lists of files for the CSP applications to find a match. (There may be more than one.)
/// The matches are returned as a list of urls to the file: {"/csp/app1/myfile.dat","/csp/otherapp/myfile.dat"}
ClassMethod FilenameToUrls(filename As %String) As %List
{
}

/// The gateway registry gives access to the CSP Gateways connected to InterSystems IRIS.
ClassMethod GetGatewayRegistry() As %CSP.Mgr.GatewayRegistry
{
}

/// Pass it a classname, e.g. 'User.Test' and it returns if this is a CSP page or not
/// by looking if it extends %CSP.Page class.
ClassMethod WebPage(class As %String) As %Boolean
{
}

/// Return the correct CSP application link for this portal page.
/// Return
/// <ol>
/// <li>"" if we can not link to portal application in this namespace,</li>
/// <li>otherwise return either the default application
/// i.e. /csp/&lt;namespace&gt;/ for this namespace if this is linking to something like ensemble or deepsee portal page which have to run in
/// an application defined in this namespace</li>
/// <li> or return /csp/sys/ if this is a system management portal page which always runs in /csp/sys/ application
/// (or subapplication) and handles namespace switching itself.</li>
/// </ol>
ClassMethod GetPortalApp(namespace As %String, page As %String) As %String
{
}

/// Return true if this url is up to date and false otherwise
ClassMethod IsUpToDate(url As %String) As %Boolean
{
}

}
