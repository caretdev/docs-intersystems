/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>An AutoPage pane that displays a table based on a class query.
Class %CSP.Util.TablePane Extends (Pane, %ZEN.Portal.abstractRefreshable) [ ServerOnly = 1, System = 4 ]
{

/// Default localization domain used for column headers
Parameter COLUMNDOMAIN = "%UtilityColumns";

/// Default localization domain used for column headers help messages
Parameter COLUMNHELPDOMAIN = "%UtilityColumnHelp";

/// Default refresh rate (in milliseconds)
Parameter RefreshRate = 11000;

/// Default wrap limit
Parameter WrapLimit = 40;

/// Should this page display timing stats
Parameter SHOWSTATISTICS = 0;

/// Should this page display SQL Info
Parameter SHOWSQLINFO = 0;

/// Do not display filter box when there are no results
Parameter HIDEFILTERWHENEMPTY = 1;

/// Show advanced search form
Parameter SHOWSEARCHFORM = 0;

/// Name of the class query that provides info for the Table.<br>
/// This is a full name: e.g., "Package.Class:QueryName"
Property Query As %String(MAXLEN = 128);

/// Optional SQL query for this table.<br>
/// If present, supercedes the value in Query.
Property SQLQuery As %String(MAXLEN = 512);

/// An array of actions, indexed by column name in the query.
/// These are associated with columns in a table.<br>
/// If the subscript name starts with a $, then the
/// action is displayed as an additional column in the table.
Property Actions As array Of %CSP.Util.Action(XMLKEYNAME = "name");

/// If true, then display the Filter box.
Property ShowFilter As %Boolean [ InitialExpression = 1 ];

/// If true, then rows are displayed using zebra styling.
Property ShowZebra As %Boolean [ InitialExpression = 0 ];

/// If true, then rows numbers are displayed.
Property ShowRowNumbers As %Boolean [ InitialExpression = 0 ];

/// If true, then checkboxes are displayed with each row.
Property ShowCheckboxes As %Boolean [ InitialExpression = 0 ];

/// If set, name of column that provides unique id values for checkboxes.
Property CheckboxId As %String(MAXLEN = 128);

/// If true, then rows in the table can be sorted.
Property Sortable As %Boolean [ InitialExpression = 1 ];

/// If true, then this table is automatically updated.
Property AutoRefresh As %Boolean [ InitialExpression = 0 ];

/// Max number of columns to show. (deprecated)
Property MaxColumns As %Integer [ Deprecated ];

/// Comma-separated list of columns that should <em>not</em> be displayed.
Property HiddenColumns As %String(MAXLEN = 500);

/// Max number of results to find.
Property MaxResults As %Integer [ InitialExpression = 10000 ];

/// Number of items to show per page.
Property ItemsPerPage As %Integer [ InitialExpression = 20 ];

/// A list of conditions; these are expressions that
/// are evaluated to add custom colors to the table
Property Conditions As list Of %CSP.Util.Condition;

/// Border of table (default is 0)
Property border As %Integer;

/// Cellspacing (default is 0)
Property cellspacing As %Integer;

/// Cellpadding (default is 0)
Property cellpadding As %Integer;

/// Table background color
Property bgcolor As %String(MAXLEN = 50);

/// Show Last Update box (if set to 0 then do not show last update box)
Property ShowLastUpdate As %Boolean [ InitialExpression = 1 ];

/// Show Advanced search page (deprecated)
Property ShowSearchPage As %Boolean [ Deprecated ];

Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

Method OnDrawHEADTablePane(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// Draw the BODY of the detail pane
Method DrawBODY(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// Runs the query and builds a temp file
Method CreateDataSet(ByRef pID As %String, pFileID As %String, pTempID As %String) As %Status
{
}

/// Execute a result set and create a temp file
Method CreateTempFile(pFileID As %String, pTempID As %String, ByRef pID As %String, pRS As %ResultSet) As %Status
{
}

/// This method performs the actual execution of the ResultSet
/// This can be overridden by subclasses
Method ExecuteResultSet(pRS As %ResultSet, ByRef pID As %String) As %Status
{
}

/// Generate JavaScript to draw the table
/// Also updates paging buttons
Method DrawTable(pInstance As PageInstance, ByRef pID As %String, pFileID As %String, pTempID As %String, pPageNo As %Integer = 1, pSort As %String = "", pDirection As %Integer = 1, pFilter As %String = "", pCBState As %String = "", ByRef pFound As %String) As %Status
{
}

Method OnGenerateCode() As %String
{
}

/// This method creates the %ResultSet object
/// that is used for the table pane.<br>
/// A subclass can override this to customize the
/// table displayed by this pane.<br>
/// <var>pID</var> is array of page variables...
Method CreateResultSet(ByRef pID As %String, ByRef pRS As %ResultSet) As %Status
{
}

/// Called from client to refresh the table
ClassMethod RefreshTable(pPageNo As %Integer, pTimeSlot As %Integer, pTempID As %String, pSort As %String, pDirection As %String, pFilter As %String, pAuto As %Boolean, pPageClass As %String, pFrame As %String, pCBState As %String, pID1 As %String, pID2 As %String, pNS As %String, pRate As %Integer)
{
}

/// Called from client to refilter the table
ClassMethod FilterTable(pPageNo As %Integer, pTimeSlot As %Integer, pTempID As %String, pSort As %String, pDirection As %String, pFilter As %String, pPageClass As %String, pFrame As %String, pCBState As %String, pID1, pID2, pNS As %String)
{
}

/// Called from client to update ItemsPerPage
ClassMethod ItemsPerPageUpdate(pPageSize As %Integer)
{
}

/// Returns default items per page value.
Method GetItemsPerPage() As %Integer
{
}

/// Purge all out-of-date temp data used by TablePane
ClassMethod PurgeTempData()
{
}

/// Return (localized) text message displayed near top of page.
/// Subclasses may override this.
Method GetDescriptiveText()
{
}

/// Show Last Update box
Method DrawLastUpdate()
{
}

/// This callback is invoked when specific or advanced search criteria is being drawn to
/// allow insert of additional UI elements at the end of table
Method DrawSearch(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// Generic method to draw error message for object status code.
ClassMethod DrawStatusError(tSC As %String)
{
}

/// This callback is invoked when the table filter is being drawn to
/// allow insert of additional UI elements
Method OnDrawFilter(pInstance As %CSP.Util.PageInstance) As %Status
{
}

/// Lookup a column name in the localization global and return localized
/// version if present
ClassMethod LocalizeColumnName(pName As %String, Output pHelpMsg) As %String
{
}

}
