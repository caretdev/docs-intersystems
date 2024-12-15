/// Determine browser parameters from HTTP_USER_AGENT CGI variable.
Class %CSP.UserAgent Extends %RegisteredObject [ System = 4 ]
{

/// User agent for this class.
Property UserAgent As %String;

/// Supports XMLHttpRequest.
Property SupportsXMLHttpRequest As %Boolean;

/// Browser name
Property Browser As %String;

/// Browser platform
Property Platform As %String;

/// Browser version
Property Version As %String;

/// Initialize with HTTP_USER_AGENT.
Method %OnNew(userAgent As %String) As %Status
{
}

/// Set method for UserAgent property
Method UserAgentSet(value As %String) As %Status [ Internal ]
{
}

/// XMLHttpRequest returns true if XMLHttpRequest object is supported by the browser indicated by the userAgent.
/// Current implementation parses User Agents beginning with:
/// <table border=1 cellpadding=10>
/// <td>Opera/</td>
/// <td>Browser type is Opera. The version must be greater than or equal to 7.60.</td>
/// </tr><tr>
/// <td>Mozilla/5.0 (</td>
/// <td>If the User Agent contains "Safari/", the browser type is Safari. The version number must be greater 119.0.
/// <br><br>Otherwise the platform type must be one of Windows, Macintosh, or X11 and the User Agent must contain "Gecko/".
/// <br><br>Otherwise User Agent must contain "rv:". The browser type is Mozilla and the version must be greater than 1.3.
/// Camino version 5-- plus browsers listed in exclude-list are not supported.
/// </p></td>
/// </tr>
/// </ul>
ClassMethod XMLHttpRequest(userAgent As %String, ByRef browser As %String, ByRef platform As %String, ByRef version As %String) As %Boolean
{
}

/// Extract version information from specified start position as major.minor
ClassMethod GetVersion(version As %String, pos As %Integer, ByRef major As %String, ByRef minor As %String) [ Internal ]
{
}

}
