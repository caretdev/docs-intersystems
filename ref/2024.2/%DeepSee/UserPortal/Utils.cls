/// APIs used by the UserPortal.
Class %DeepSee.UserPortal.Utils Extends %RegisteredObject [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%DeepSee";

/// Return the URL for the user portal home page.
ClassMethod %GetUserHomePageURL() As %String
{
}

/// Return the URL for the dashboard viewer.
ClassMethod %GetViewerURL() As %String
{
}

/// Return the URL for the user portal error page.
ClassMethod %GetErrorPageURL(pError As %String) As %String
{
}

/// Return an array containing the system preferences for the portal.
ClassMethod %GetPreferences(Output pPrefs) As %Status
{
}

/// Return the name of the current user (or given user name).
/// Return their full name if registered, otherwise return the login name.
ClassMethod %GetUserName(pUserName As %String = "") As %String
{
}

/// Return a list of DeepSee users.<br/>
/// pUsers(n) = $LB(id,name,icon)<br/>
/// If <var>pAlertsEnabled</var> is true, then only return users that have enabled alerts.
ClassMethod %GetUserList(Output pUsers, pSearchKey As %String = "", pAlertsEnabled As %Boolean = 0) As %Status
{
}

/// Return the current alerts list for the current user:
/// pAlerts(n) = $LB(alertId,from,subject,date,url,priority,icon,iconTip)
ClassMethod %GetAlertsForUser(Output pAlerts, Output pNewCount As %Integer, pMaxItems As %Integer = 25) As %Status
{
}

/// Return the current favorites list for the current user:
/// pItems(n) = $LB(fullName,name,folder,title,type,icon,date,url)
ClassMethod %GetFavoritesForUser(Output pFavorites) As %Status
{
}

/// Return the recent items list for the current user:
/// pItems(n) = $LB(fullName,name,folder,title,type,icon,date,url)
ClassMethod %GetRecentItemsForUser(Output pItems) As %Status
{
}

/// Format a $H value.
ClassMethod %FormatDate(pDate As %String, pUTCtoLocal As %Boolean = 0) As %String
{
}

/// Return a list of folder items for the current user:<br/>
/// pItems(n) = $LB(name,type,tip,date,url,icon,keywords,public,title,createdBy,resource,cover,category,owner,write,lastAccessed)<br/>
/// This list is returned in ID order; the caller will sort it.
/// If <var>pShowAll</var> is true, list items for all users.
ClassMethod %GetFolderItemsForUser(Output pItems, pFolderName As %String, pSearchKey As %String = "", pIncludePrivate As %Boolean = 0, pShowAll As %Boolean = 0) As %Status
{
}

/// Get the values of any SETTINGS parameters within the current URL and pull them apart.
/// A dashboard URL may contain any number of parameters called SETTINGS. Each takes the form:<br/>
/// SETTINGS=parm:value;parm:value;<br/>
/// Supported parameters and values include:<br/>
///
/// TARGET:widgetName;  ("*" if not specified)<br/>
/// FILTER:spec;<br/>
/// VARIABLE:pivotVar; (default value for pivot variable)<br/>
/// ROWCOUNT:#;<br/>
/// COLCOUNT:#;<br/>
/// ROWSORT:Measure;<br/>
/// COLSORT:Measure;<br/>
/// ROWSORTDIR:ASC|DESC;<br/>
/// COLSORTDIR:ASC|DESC;<br/>
/// <br/>
/// For some items, such as FILTER, there can be multiple values separated by ~<br/>
/// <br/>
/// ;; is an escape for ";"<br/>
/// ~~ is an escape for "~"<br/>
/// <br/>
/// A FILTER spec is of the form:<br/>
/// Name.Value or [Name].[Value], [Name].&[Value]<br/>
/// For an MDX-based filter, Name may have multiple pieces:<br/>
/// [DIM].[Hier].[Level].[Value]<br/>
///
/// A VARIABLE (pivot variable) spec is of the form:<br/>
/// VarName.Value<br/>
///
/// On return, <var>pSettings</var> will contain:<br/>
/// pSettings(target,parm) = "value"</br>
///
ClassMethod %GetSettingsFromURL(Output pSettings) As %Status
{
}

/// Register a DeepSee user.
ClassMethod %RegisterUser(pUserId As %String, pUserName As %String = "", pEMail As %String = "", pEnabled As %Boolean = 1) As %Status
{
}

/// Send a new alert.
ClassMethod %SendAlert(pAlert As %DeepSee.UserPortal.Data.Alert) As %Status
{
}

/// Delete the given alert.
ClassMethod %DeleteAlert(pAlertId As %String) As %Status
{
}

/// Delete all alerts in this namespace.
ClassMethod %KillAlerts() As %Status
{
}

/// Delete the current user settings for the current namespace.
ClassMethod %ClearUserSettings() As %Status
{
}

/// Delete the given user setting for the current namespace.
ClassMethod %RemoveUserSetting(pName As %String) As %Status
{
}

/// Return a list of the current user settings in the form:
/// pData(n) = $LB(name,value,comment,context)
ClassMethod %GetUserSettingsList(Output pData, pContext As %String = "") As %Status
{
}

/// Set the value and comment for the given user-defined setting.<br/>
/// <var>pName</var> is the name of the setting. This must be unique.<br/>
/// <var>pValue</var> is the value of the setting. This is in ObjectScript expression that is evaluated at run-time.<br/>
/// <var>pComment</var> is a comment.<br/>
/// <var>pContext</var> is the name of the context in which this setting is expected to be used. This allows the user to be presented with a limited set of settings.<br/>
ClassMethod %SetUserSetting(pName As %String, pValue As %String, pComment As %String = "", pContext As %String = "") As %Status
{
}

/// Get the value of the given user-defined setting.
/// A user-setting is an expression. This method evaluates the expression and returns the result.
ClassMethod %GetUserSetting(pName As %String, Output pSC As %Status) As %String
{
}

/// Delete the current user icons for the current namespace.
ClassMethod %ClearUserIcons() As %Status
{
}

/// Delete the given user icon for the current namespace.
ClassMethod %RemoveUserIcon(pName As %String) As %Status
{
}

/// Return a list of the current user icons in the form:
/// pData(n) = $LB(name,path)
ClassMethod %GetUserIconList(Output pData) As %Status
{
}

/// Set the path for the given user-defined icon.<br/>
/// <var>pName</var> is the name of the icon. This must be unique.<br/>
/// <var>pValue</var> is the path for the icon.<br/>
ClassMethod %SetUserIcon(pName As %String, pPath As %String) As %Status
{
}

/// Get the path of the given user-defined icon.
ClassMethod %GetUserIcon(pName As %String, Output pSC As %Status) As %String
{
}

/// Clear dashboard settings for the given dashboard (If <var>pUser</var> is "", then for all users).
ClassMethod %ClearDashboardSettings(pDashboard As %String, pUser As %String = "", pSaveLocalDataSource As %Boolean = 0) As %Status
{
}

/// Clear the localDataSource for a specific user and widget.
ClassMethod %ClearLocalDataSource(pDashboard As %String, pWidgetKey As %String) As %Status
{
}

/// A dashboard setting is a set of name/value pairs saved for a specific
/// dashboard and user. This lets the user save filters values, positions, etc.
ClassMethod %SaveDashboardSettings(ByRef pSettings As %String, pDashboard As %String, pUser As %String = "") As %Status
{
}

/// A dashboard setting is a set of name/value pairs saved for a specific
/// dashboard and user. This lets the user save filters values, positions, etc.
ClassMethod %LoadDashboardSettings(Output pSettings As %String, pDashboard As %String, pUser As %String = "") As %String
{
}

/// Print a list of all folder items to the console.<br/>
ClassMethod %ListFolderItems(pSearchKey As %String = "") As %Status
{
}

/// For the given folder item, <var>pName</var>, return a list of other items it depends upon.
ClassMethod %FindDependencies(pName As %String, Output pList As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// For the given folder item, <var>pName</var>, return a list of other items that use it.
/// This method does a full scan of all dashboard items, so use sparingly.
ClassMethod %FindIsUsedBy(pName As %String, Output pList As %String, pVerbose As %Boolean = 0) As %Status
{
}

/// Return an array the list of defined dashboard color schemes:
/// pScheme(n) = $LB(name,caption,jsFile,cssFile)
ClassMethod %GetColorSchemes(Output pScheme) As %Status
{
}

/// Find info on the given dashboard color scheme.
ClassMethod %GetColorSchemeInfo(pScheme As %String, Output pInfo) As %Status
{
}

/// Return an array of the defined chart series color schemes:
/// pScheme(n) = $LB(name,caption,[colorList])
ClassMethod %GetChartSeriesSchemes(Output pScheme) As %Status
{
}

/// Find info on the given chart series color scheme.
ClassMethod %GetChartSeriesSchemeInfo(pScheme As %String, Output pSchemeName, Output pColorList) As %Status
{
}

/// Return an array of the defined color sets.
/// A color set is a name list of up to 256 colors used by a color picker.
/// pSet(n) = $LB(name,caption,;-delimited list of colors)
ClassMethod %GetColorSets(Output pSet) As %Status
{
}

/// Resolve a csv-list of localized text strings at run time.
ClassMethod %ResolveTextList(pText As %String) As %String
{
}

/// Resolve a localized text string at run time.
/// A localized string can take the following forms:<br/>
/// "String" -- not localized.<br/>
/// "$$$String" -- equivalent to $$$Text("String","DeepSeeUser")<br/>
/// "$$$String/Domain" -- equivalent to $$$Text("String","Domain")<br/>
ClassMethod %ResolveText(pText As %String) As %String
{
}

ClassMethod %ResolveName(pName) As %String
{
}

/// This is a special parser for handling the filter context of selected
/// cells produced during a detail listing. This is designed to parse a
/// pExpression provided in the pivotTable.listingFilters property into
/// display Level-Member name pairs to provide context for a listing export or
/// display.
ClassMethod %ParseCellSelectionContext(pExpression = "", pCubeName = "", Output pContextFilters) [ Internal ]
{
}

/// Inspect an open dashboard definition object and add names to any widgets that do not have names. All widgets
/// that are assigned new names will have a name of the form <var>WidgetXXX</var> that is unique to the dashboard
/// assigned. All names assigned in this manner will be returned in an index available through the by reference argument<br>
/// <var>pNewWidgetNames</var>(widgetPosition) = newName<br>
/// This method will not change the stored dashboard definition DFI document.
ClassMethod AddWidgetNames(pDashboard As %DeepSee.Dashboard.Definition = "", ByRef pNewWidgetNames) As %Status
{
}

/// Look through all of the widgets in a dashboard and make sure each that has a logical name also has a defined key.
ClassMethod AddWidgetKeys(pDashboard As %DeepSee.Dashboard.Definition = "") As %Status
{
}

}
