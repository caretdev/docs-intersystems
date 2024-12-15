/// APIs used by the System Management Portal.
Class %CSP.Portal.Utils Extends %RegisteredObject [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%Utility";

/// Add item to favorites list.
ClassMethod %AddFavorite(pName As %String, pLink As %String) As %Status
{
}

/// Return the current favorites list for the current user:
/// pItems(n) = $LB(name,date,url)
ClassMethod %GetFavoritesForUser(Output pFavorites) As %Status
{
}

/// Return the recent items list for the current user:<br/>
/// pItems(n) = $LB(name,date,url)<br/>
/// These are reset on system restart.
ClassMethod %GetRecentItemsForUser(Output pItems) As %Status
{
}

/// Add this item to the recent item list.
ClassMethod %RegisterRecentItem(pName As %String, pURL As %String) As %Status
{
}

/// Delete recent item list for given user. If user is not specified, delete all items.
ClassMethod %ClearRecentItems(pUser As %String = "") As %Status
{
}

/// Delete favorite item list for given user. If user is not specified, delete all items.
ClassMethod %ClearFavoriteItems(pUser As %String = "") As %Status
{
}

/// Delete a recent item for the current user.
ClassMethod %RemoveRecentItem(pName As %String) As %Status
{
}

/// Delete a favorite item for the current user.
ClassMethod %RemoveFavoriteItem(pName As %String) As %Status
{
}

/// Get a list of namespaces which the current user may access.
/// <var>pNamespaces</var> is returned as an array with the following structure:
/// pNamespaces("NAMESPACE") = $lb(enabled,remote)
ClassMethod %GetNamespaceList(Output pNamespaces As %String) As %Status
{
}

/// Get the custom resource assigned to a given id (url).
/// Note that <var>pID</var> should be URL-encoded.
ClassMethod %GetCustomResource(pID As %String) As %String
{
}

/// Set the custom resource assigned to a given id (url).
/// Note that <var>pID</var> should be URL-encoded.
ClassMethod %SetCustomResource(pID As %String, pResource As %String) As %Status
{
}

/// Check the custom resource (if any) assigned to a given URL.
/// Note that <var>pURL</var> should be URL-encoded.
ClassMethod %CheckCustomResource(pURL As %String) As %Boolean
{
}

ClassMethod %CheckTaskResource() As %Boolean
{
}

ClassMethod %DrawError(pStatus As %Status) As %Status
{
}

/// Return a list of all currently used custom resource names.
ClassMethod %GetCustomResourceList(pList As %String) As %Status
{
}

/// Return a boolean to indicate whether a supplied URL/Link is a page in the ISC portals.<br/>
/// <var>pPage</var> should be URL-encoded.<br/>
/// If the URL is in the portal, then <var>pNormPage</var> is the classname of the class that handles requests for the URL.
ClassMethod %IsPortalPage(pPage As %String = "", Output pNormPage As %String) As %Boolean [ Internal ]
{
}

/// CheckLinkAccess determines whether the target user is permitted
///    to view a given CSP or Zen page based on the security requirements
///   for the relevant target Web application, the underlying page class,
///   and any custom resources applied to the link.
/// <p>Returns 0 if the link is not to a csp application. (enable)</p>
/// <p>Returns 1 if the user is permitted access to the page. (enable) </p>
/// <p>Returns 2 if could not determine Target User. Clicking on link will bring up login page. (choice: enable or disable)</p>
/// <p>Returns 3 if the user doesn't have access to the CSP application.(disable)</p>
/// <p>Returns 4 if the user doesn't have resources specific to the page.(disable)</p>
/// <ol>
/// <li>It is assumed the CheckLinkAccess is called from a context in which
///    %session and %request are available, ie, from callpage in the CSP Server </li>
/// <li>In order to minimize information trolling, CheckLinkAccess will just return
///    a bit indicating if the link should be enabled in the current calling context.</li>
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
///   source application.</p>
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
/// <li>The target application will be in the current session. The CSP server has already
/// handled logic for determing the user.
///  <ol>
///   <li>The session's user is not UnknownUser. The target user is $Username.</li>
///   <li>The session's user is UnknownUser
/// <ul>
/// <li>If the target application is the source application, the Target User is UnknownUser.</li>
/// <li>If the target application is different, the target user is the user from the session's Sticky-context.
/// If the session has no sticky-context, the Target User will be UnknownUser</li>
/// </ul></li>
/// </li></ol></li></ol>
///  <h3>CheckLinkAccess Policy</h3>
/// <ul>
/// <li>If the Target Application is not a CSP Application, return ENABLE/UNKNOWN	</li>
/// <li>If the Source and Target application are the same, skip to check resources.</li>
/// <li>If the Target Application is neither in an authenticated by-id group nor in the
///  Source Application's session, return ENABLE/UNKNOWN</li>
/// <li>Compute the Target User. See 'Who is Target User?' above.</li>
/// <li>If the Target Application is two-factor enabled and the Target User is not, return NO_APP_ACCESS.</li>
/// <li>Get any application-defined and user-defined
///   resources assigned to the Target Page.</li>
/// <li>If Source and Target Applications are different, check that the Target User has
///   the right roles to enter the Target Application.
///   If not, return NO_APP_ACCESS.</li>
/// <li>Check Resources:
/// <p>If the Target User can access the Target Page's Resources after escalating roles
///   from the Target Application, return ENABLE/UNKNOWN. Else return NO_PAGE_ACCESS.</p>
/// </li>
/// </ul>
ClassMethod CheckLinkAccess(link As %String) As %Integer
{
}

ClassMethod CheckLoggedInResources(targetResources As %List) As %Integer
{
}

ClassMethod GetValidatedLink(refreshpage As %String) As %String
{
}

/// Helper method to indicate whether pages in the management portal are allowed to perform
/// automatic refreshes that poll the server.
ClassMethod %IsAutoRefreshEnabled() As %Boolean
{
}

ClassMethod %IsConnectivityPopupDisabled() As %Boolean [ Internal ]
{
}

/// This method will retrieve the set of root directories that are visible
/// by the <Class>%ZEN.Dialog.fileSelect</Class> page. If the system is configured
/// to restrict the directories that are visible the method will return 1 (true) and
/// <b>dirs</b> will contain the set of root directories. Otherwise it will return 0 (false),
/// and all directories will be visible.
ClassMethod GetAllowedDirectories(Output dirs) As %Boolean
{
}

/// This method will allow the given directory (and its descendants) to be visible
/// by the <Class>%ZEN.Dialog.fileSelect</Class> page. If the set of directories was
/// previously unrestricted, and if the restriction was not explicitly disabled by
/// calling <Method>RestrictDirectories</Method> then only this directory and its descendants
/// will be visible. If the specified directory is invalid or does not exist, this method will
/// return 0 (false), and no change is made.
ClassMethod AllowDirectory(dir As %String) As %Boolean
{
}

/// This method will remove the given directory from the set of root directories that
/// are visible by the <Class>%ZEN.Dialog.fileSelect</Class> page. If the given directory
/// was not previously configured as an available root directory, this will have no effect.
ClassMethod RemoveDirectory(dir As %String)
{
}

/// This method will clear the set of directories that are visible by the
/// <Class>%ZEN.Dialog.fileSelect</Class> page. After this all directories
/// available to the system will be visible in the fileSelect page.
ClassMethod ClearDirectories()
{
}

/// If <b>flag</b> is true then the <Class>%ZEN.Dialog.fileSelect</Class> page will only
/// allow navigation to the set of directories configured by <Method>AddDirectory</Method>.
/// If no directories are configured, then the fileSelect page will
/// not display any files.<br>
/// If <b>flag</b> is false, then the fileSelect page will allow navigation to all files.
/// The set of directories configured by <Method>AddDirectory</Method> (if any) is not removed.
/// Return 1 (true) if we were previously configured to use restricted directories, 0 (false) otherwise.
ClassMethod RestrictDirectories(flag As %Boolean) As %Boolean
{
}

/// This method will allow <Class>%CSP.UI.Dialog.Import</class> to validate an import path
/// Return 0 (false) if directories are restricted and <b>dirs</b> is not found in set of
/// root directories that are visible by the <Class>%ZEN.Dialog.fileSelect</Class> page.
/// Return 1 (true) if <b>dirs</b> is an allowed root directory
/// or if <b>dirs</b> is a subdirectory of an allowed root directory
/// or if directories are not restricted
ClassMethod IsDirectoryAllowed(dir As %String) As %Boolean
{
}

}
