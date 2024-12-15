/// Zen page for System Management Portal - NLS Locale Definition
Class %CSP.UI.Portal.NLS Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Locale Definitions";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.NLS.zen";

Parameter HELPADDRESS = "Home,Configuration,Locale Definitions";

Parameter EMSSERVICE = "Config";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked one of the Browse buttons.
/// Save the name of the textfield so that when you return you know which textfield to update.
ClientMethod browseSelect(name, wildcard) [ Language = javascript ]
{
}

/// User changed default. Call server method to reload.
ClientMethod changedDefault(newVal) [ Language = javascript ]
{
}

/// User changed a locale. If it's null, then disable buttons
ClientMethod changedLocale(locale) [ Language = javascript ]
{
}

ClientMethod getLocale() As %String [ Language = javascript ]
{
}

/// User clicked Validate. Set seed, show and redraw the content.
ClientMethod validateLocale() [ Language = javascript ]
{
}

/// hide all fields
ClientMethod hideFlds() [ Language = javascript ]
{
}

/// User clicked "Copy" button. Show Copy fields.
ClientMethod copyLocale() [ Language = javascript ]
{
}

/// User clicked OK for Copy. Set seed, show and redraw the content.
ClientMethod doCopy() [ Language = javascript ]
{
}

/// User clicked Cancel. Hide sub form.
ClientMethod doCancel() [ Language = javascript ]
{
}

/// User clicked "Export" button. Show Export fields.
ClientMethod exportLocale() [ Language = javascript ]
{
}

/// User clicked OK for Export. Process Export.
ClientMethod doExport() [ Language = javascript ]
{
}

/// User clicked "Install" button. Show Install fields.
ClientMethod installLocale() [ Language = javascript ]
{
}

/// User clicked Install Now for Installing a new locale. Process Install.
ClientMethod doInstall() [ Language = javascript ]
{
}

/// User clicked "Load Table" button. Show Load Table fields.
ClientMethod loadTable() [ Language = javascript ]
{
}

/// User clicked OK for Load Table. Process Load Table.
ClientMethod doLoadTable() [ Language = javascript ]
{
}

/// User changed a table type. Load table names based on the table type selected.
ClientMethod tabletypeChanged(table) [ Language = javascript ]
{
}

/// User changed a character set table name.
ClientMethod tablenameChanged(tablename) [ Language = javascript ]
{
}

/// User clicked "Delete" button.
ClientMethod deleteLocale() [ Language = javascript ]
{
}

ClientMethod edit() [ Language = javascript ]
{
}

/// After running action, display error message or refresh page.
ClientMethod displayResult(ok) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Return an updated title description
ClassMethod GetLocaleDesc(locale As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod GetLocaleDescription(locale As %String) As %String
{
}

/// Load Table Names drop-down list based on user selected table type.
/// Build temp array Properties which contains the table names for this table type.
ClassMethod DrawTableNames(locale, table As %String) As %String [ ZenMethod ]
{
}

/// This method is called when the query is run for the locale list.
Method ExecuteRS(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// Actually write out result.
/// When the page is first opened, seed is null.
/// When it's called from Prepare, seed = action^the selected locale.
Method DrawResult(seed As %String) As %Status
{
}

/// Copy selected locale
ClassMethod CopyNow(sLoc As %String, sNew As %String, Description As %String) As %String [ ZenMethod ]
{
}

/// Delete selected locale.
ClassMethod DeleteNow(locale As %String) As %String [ ZenMethod ]
{
}

/// Export selected locale.
ClassMethod ExportNow(locale, FileName) As %String [ ZenMethod ]
{
}

/// Save "Use locale date/time/number formats for current locale" and then reload.
ClassMethod ReloadDefault(locale As %String, defaultFormat As %Integer) As %String [ ZenMethod ]
{
}

/// Validate if the locale is installable
/// Return 1 if ok; 0 if there are errors; 2 if there are warnings
/// Error message or warnings will be set to message fields.
ClassMethod ValidateInstall(locale As %String) As %String [ ZenMethod ]
{
}

/// Install selected locale. Validation is already done before coming here.
ClassMethod InstallNow(locale) As %String [ ZenMethod ]
{
}

/// Save selected locale.
ClassMethod SaveNow(locale As %String) As %String [ ZenMethod ]
{
}

/// Load locale table.
ClassMethod LoadTableNow(locale, tabletype, tablename) As %String [ ZenMethod ]
{
}

/// Set Locator bar and determine whether to show change password option.
Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

}
