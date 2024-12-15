///  This component draws an HTML table based on the contents
///  of a query.<br>
///  The data for the table can come from a pre-built class query,
///  an SQL statement, or the tablePane can create an SQL query automatically.<br>
///  The properties of the <class>tablePane</class>, as well as the auxiliary classes,
///  <class>%ZEN.Auxiliary.column</class>, <class>%ZEN.Auxiliary.condition</class>, and
///  <class>%ZEN.Auxiliary.parameter</class>, let you control the behavior and
///  appearance of the <class>tablePane</class>.<br>
///  Many of the characteristics of the tablePane are inherited from its
///  superclass, <class>%ZEN.Component.simpleTablePane</class>. Refer to it
///  for more details.
Class %ZEN.Component.tablePane Extends simpleTablePane [ Deprecated, System = 3 ]
{

Parameter SYSMODULE = "table";

Parameter DOMAIN = "%ZEN";

///  List of column information objects.<br>
///  Each object specifies additional details about a column
///  in the table.<br>
Property columns As list Of %ZEN.Auxiliary.column(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE");

///  User-defined list of parameters. These values are passed on
///  to the user callback function that provides the query for this table.
Property parameters As list Of %ZEN.Auxiliary.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT", XMLREF = 1);

///  A list of conditions. These are special expression objects that
///  are evaluated to add data-dependent styles to the table.
Property conditions As list Of %ZEN.Auxiliary.condition(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE");

///  Caption displayed for this table using the HTML caption element.<br>
///  This is a localized value.
Property caption As %ZEN.Datatype.caption;

///  If true, then the tooltip (HTML title attribute) displayed
///  for cells within the table will display the current value of the cell.
Property showValueInTooltip As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  If a browser does not support CSS nowrap correctly, this flag provides
///  a way to control whether table cells allow word wrapping or not.<br>
Property nowrap As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

///  Width used for extra columns, such as row number, row selector, etc.
Property extraColumnWidth As %ZEN.Datatype.length [ InitialExpression = 30 ];

///  If true, display column filters (if any).
Property showFilters As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

///  This property controls how to display the table header when
///  column filters are used.
///  <ul>
///  <li>"filtersOnTop" - (the default) Display column filters above column headers.</li>
///  <li>"headersOnTop" - Display column headers above filters.</li>
///  </ul>
Property headerLayout As %ZEN.Datatype.string(VALUELIST = ",filtersOnTop,headersOnTop") [ InitialExpression = "filtersOnTop" ];

///  If true, disable column filters (if any).
Property filtersDisabled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  If true (the default), automatically re-execute the query for this
///  table when the user changes the value of a column filter.<br>
///  If false, the query will only be re-executed when the
///  <method>executeQuery</method> is called.
Property autoExecute As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

///  If defined, this is the name of the data column that provides
///  a logical value for a selected row.
Property valueColumn As %ZEN.Datatype.string;

///  Specifies where the data columns of the table come from.<br>
///  "query" (the default)- columns are displayed for each column in the
///  data source query.<br>
///  "columns" - only columns explicitly defined in the <property>columns</property>
///  list are displayed.
Property dataSource As %ZEN.Datatype.string(VALUELIST = ",query,columns") [ InitialExpression = "query" ];

///  If true, create a temporary snapshot of the query results.
///  This allows for paging and sorting without re-executing the query.
Property useSnapshot As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  If true, then the header of the table will stay in position when the body
///  of the table is scrolled.
Property fixedHeaders As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  If present, this specifies the height
///  of the body section of the table.
Property bodyHeight As %ZEN.Datatype.length;

///  Amount of spacing around cells in the table. The default is 0 (no extra space around table cells).
///  For a slight but noticeable separation, a useful value is 2.
Property cellSpacing As %ZEN.Datatype.integer [ InitialExpression = 0 ];

///  If present, this is the number of rows returned by the current
///  query. This is calculated by the built-in query or the
///  automatic query.<br>
///  Note: this is a string as it could be set to "" or "100+".
Property rowCount As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0);

///  This is the number of items to display on
///  a single "page" of the table.
///  0, the default, means show all data on first page.
///  This can only be set to a non-zero value when the table
///  is in snapshot mode.
Property pageSize As %ZEN.Datatype.integer [ InitialExpression = 0 ];

///  For snapshot mode, this is the number (1-based) of the current "page" within the snapshot
///  that is displayed.
Property currPage As %ZEN.Datatype.integer [ InitialExpression = 1 ];

///  This is the logical name of the most recently selected column
///  header. Typically this is used for sorting.
Property currColumn As %ZEN.Datatype.string(ZENEXPRESSION = 1);

///  onheaderClick event handler:
///  This event is fired when the user clicks on a column header.
///  The name of the column will be in the <property>currColumn</property> property.
Property onheaderClick As %ZEN.Datatype.eventHandler;

///  For sortable tables, this is the order to sort values within the
///  current column. Values can be "", "asc" (ascending), or "desc" (descending).
Property sortOrder As %ZEN.Datatype.string(VALUELIST = ",asc,desc", ZENEXPRESSION = 1);

///  Internal property used to track last changed filter.
Property lastFilter As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

///  Internal property used to track the result set snapshot number.
Property snapshotId As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

///  Client-side, run-time flag that is set when client wants to force
///  re-execution of the table query when the table is in "snapshot" mode.
Property clearSnapshot As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0 ];

///  Time, in ODBC timestamp format, that the query for this table
///  was last executed. This is set on the server whenever the query is
///  for the tablePane is executed.
Property lastUpdate As %ZEN.Datatype.string(XMLPROJECTION = "none");

///  Server-side diagnostic flag. If true, display the query used
///  to get data for this table.<br/>
///  This is an encrypted value and cannot be set on the client.
Property showQuery As %ZEN.Datatype.boolean(ZENENCRYPT = 1, ZENEXPRESSION = 1) [ InitialExpression = 0 ];

///  Internal method.<br>
///  Applications should use the <method>executeQuery</method> of the
///  <class>tablePane</class> class.<br>
///  Call to the server and update the contents of the tablePane.
///  This is a wrapper around the <method>refreshContents</method> method.
ClientMethod refreshTable() [ Internal, Language = javascript ]
{
}

///  Localized "invalid date" message displayed by control.
Property invalidMessage As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Invalid Date","%ZEN")} ];

///  If true, then the tablePane will capture user keystrokes and use them
///  for simple table navigation.
Property useKeys As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  This property should be set to 1 by server-side methods that want to force
///  the query associate with the tablePane to be re-executed.
Property refreshRequired As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0 ];

/// Flag to control whether session is unlocked during updates to the table.
Property unlockSession As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  onkeypress event handler:
///  If <property>useKeys</property> is true, then this event handler
///  code is run when the user presses a key within the tablePane.
Property onkeypress As %ZEN.Datatype.eventHandler;

Property msgNoResult As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("No Results","%ZEN")} ];

/// Flag for backwards compatibility.
/// If <property>permitClientSQL</property> is set to true, query parameters
/// may be set programatically through javascript on the client, depending on
/// site and application settings this may constitute a security risk. If set
/// to false (the default), the parameters may only be set on the server.  This
/// property is encrypted and any attempt to modify it on the client will result
/// in an <ILLEGAL VALUE> error.
Property permitClientSQL As %ZEN.Datatype.boolean(ZENENCRYPT = 1, ZENEXPRESSION = 1) [ InitialExpression = 0 ];

/// Flag for less intrusive remedial action when Client-side SQL modification is forbidden.
/// If <property>permitClientSQL</property> is set to false (the default), this flag controls
/// the rendering of the table if client side modification of the query parameters is detected.
/// By default, a Zen Exception will be raised, warning of the security risk.  If this flag is set
/// to true, however, the exception will be suppressed and the table will re-render using the last
/// known (server-side) values for the query parameters.  In this case the client-side modifications
/// are simply ignored.  The default value is "false" indicating that the exception should be raised.
Property suppressExceptionOnClientSQL As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// This method is used (server-side only) to set the refreshRequired
/// property when changing the underlying query from ObjectScript at
/// run time.  Client-side code should <b>not</b> "wrap" and call this
/// function.  Instead, JavaScript code should make use of the
/// refreshTable() method.
Method %ResetQuery() As %Status
{
}

Method %OnAddToPageAfter() As %Status
{
}

/// This callback is invoked by the %ZENDeserialize method.
Method %OnZENDeserialize() As %Status
{
}

Method ValidateQueryIntegrity() As %Status [ Internal ]
{
}

///  Draw innerHTML for this component (without enclosing div).
Method %DrawHTML()
{
}

///  Draw the table.
Method %DrawTable(pRS As %ResultSet) As %Status
{
}

///  Invoke user method to provide contents for a cell
Method %DrawCell(pMethod As %String, pName As %String, pSeed As %String) As %Status
{
}

///  Invoke user method to provide contents for a column filter.
Method %DrawFilter(pMethod As %String, pName As %String, pColInfo As %ZEN.Auxiliary.column) As %Status
{
}

///  Create a temporary snapshot file from a result set.
///  Assumes that result set has been created and executed.
///  Users should not call this method.
Method %CreateSnapshot(pTempID As %String, pRS As %ResultSet) As %Status
{
}

///  Add a new column definition to this tablePane.
///  If <var>pColumn</var> is not provided, this method will create
///  a new column object.
Method %AddColumn(pColumn As %ZEN.Auxiliary.column = "") As %ZEN.Auxiliary.column
{
}

///  Add a new parameter definition to this tablePane.
///  If <var>pParm</var> is not provided, this method will create
///  a new parameter object.
Method %AddParameter(pParm As %ZEN.Auxiliary.parameter = "") As %ZEN.Auxiliary.parameter
{
}

///  User has clicked on a column header.
ClientMethod headerClick(name) [ Language = javascript ]
{
}

///  User has pressed a key within a filter.
ClientMethod filterKeyPressed(evt, filterName, type, index) [ Language = javascript ]
{
}

///  User has changed the value of a filter.
///  <var>filterName</var> is the name of the filter.<br>
///  <var>refresh</var> indicates if the query should be re-executed.<br>
///  <var>type</var> (optional) is type of filter.<br>
///  <var>index</var> (optional) is control index for filters with multiple controls.<br>
ClientMethod filterChanged(filterName, refresh, type, index) [ Language = javascript ]
{
}

///  If we are in autoExecute mode, then re-execute the query
///  for this table using the current value of any column filters.
///  If we are not in autoExecute mode, then do nothing.
ClientMethod applyFilters() [ Language = javascript ]
{
}

///  Reset the values of the column filters (if there are any).
ClientMethod resetColumnFilters() [ Language = javascript ]
{
}

///  Disable (or enable) the column filters for this table.
ClientMethod disableColumnFilters(flag) [ Language = javascript ]
{
}

///  Get current value of column filter associated with column <var>cname</var>.
ClientMethod getFilterValue(cname) [ Language = javascript ]
{
}

///  Set the value of column filter associated with column <var>cname</var>.
ClientMethod setFilterValue(cname, value) [ Language = javascript ]
{
}

///  Get column filters (if there are any).
///  Returns an associative array containing the current
///  values of the filter controls indexed by column name.
ClientMethod getColumnFilters() [ Language = javascript ]
{
}

///  Set the value of all column filters (if there are any).
///  <var>state</var> is an associative array containing the current
///  values of the filter controls indexed by column name (as
///  returned by <method>getColumnFilters</method>.
ClientMethod setColumnFilters(state) [ Language = javascript ]
{
}

///  Show or hide columns filters (if there are any).
///  Users should use setProperty('showFilters',true) instead.
ClientMethod showColumnFilters(flag) [ Language = javascript ]
{
}

///  Display date selector for a date filter box.
ClientMethod showDateSelector(cname, index, type, minDate, maxDate) [ Language = javascript ]
{
}

///  Set value of date filter box. index is 0 or 1 to indicate
///  which date box to set.
ClientMethod setDateFilter(group) [ Language = javascript ]
{
}

///  For multi-page display, calculate the number of pages.
ClientMethod getPageCount() [ Language = javascript ]
{
}

///  For multi-page display, go to previous page, if possible.
///  If <var>giveFocus</var> is true, then give focus back to
///  the  hidden control.
ClientMethod previousPage(giveFocus) [ Language = javascript ]
{
}

///  For multi-page display, go to next page, if possible.
ClientMethod nextPage(giveFocus) [ Language = javascript ]
{
}

///  For multi-page display, go to the first page.
ClientMethod firstPage() [ Language = javascript ]
{
}

///  For multi-page display, go to the last page.
ClientMethod lastPage() [ Language = javascript ]
{
}

///  For multi-page display, go to specified page (1 is first page), if possible.
ClientMethod gotoPage(page) [ Language = javascript ]
{
}

///  Associate a navigator component with this tablePane.
///  This is called by the navigator component.
ClientMethod addNavigator(nav) [ Language = javascript ]
{
}

///  Remove the navigator component with this tablePane.
///  This is called by the navigator component.
ClientMethod removeNavigator() [ Language = javascript ]
{
}

///  Force query for this table to be executed on the server.
///  If the table is in snapshot mode, then a new snapshot will
///  be created.<br>
///  If <var>remember</var> is true, then the table will
///  stay on the same page after the new results are displayed.
///  If <var>sync</var> is defined and is true, the refresh will be executed
/// synchronously (unless we are in deferred mode).
ClientMethod executeQuery(remember, sync) [ Language = javascript ]
{
}

///  For tables in snapshot mode only.<br>
///  Go to the server and fetch the data for the specified row
///  (0-based) from the table snapshot data. This data is packaged
///  into a JavaScript object whose properties correspond to the
///  names of the columns in the snapshot table.<br>
///  For non-snapshot tables or out of range row numbers, returns null.
ClientMethod getRowData(row) [ Language = javascript ]
{
}

///  Explore the DOM and extract the data for the specified phyiscal table row
///  (0-based) from the rendered table data (not to be confused with
///  the logical row number of the data itself in a multi-page table).<br>
///  This data is packaged into a JavaScript object whose properties
///  correspond to the names of the columns in the table.  If
///  showRowNumbers is true the object will also contain a property
///  called rowNum and will be contain the logical, enumerated row
///  of the result set record <br>
///  This is a client-side only call and can query only the values of
///  the current page of the current table.  The full, logical contents
///  of the table (in snapshot mode) resides at the server and logical
///  rows may be accessed using getRowData() <br>
///  If there are not data columns to report or if the requested row is
///  greater than the page size for the table, this function returns null.<br>
///
ClientMethod getRenderedRowData(row) [ Language = javascript ]
{
}

///  Internal method.<br>
///  Fetch data from snapshot global and package up as a client object.
///  <var>pIndex</var> is index of client component.<br>
///  <var>pID</var> is internal ID of snapshot global.<br>
///  <var>pRow</var> is row number to fetch.<br>
ClassMethod FetchRowFromSnapshot(pIndex As %Integer, pID As %String, pRow As %Integer, pCurrColumn As %String = "", pSortOrder As %String = "") As %Boolean [ ZenMethod ]
{
}

///  Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

///  Process key down event within the table's invisible edit control.
ClientMethod tpKeyDownHandler(evt) [ Language = javascript ]
{
}

///  Process key press event within the table's invisible edit control.
ClientMethod tpKeyPressHandler(evt) [ Language = javascript ]
{
}

///  Client-side method to input focus to this control.
ClientMethod focus() [ Language = javascript ]
{
}

///  Appends new column object to this table with the given
///  column name. Returns the new column object.<br/>
///  Call the <method>executeQuery</method> method after calling this
///  to update the table.
ClientMethod appendColumn(colName) [ Language = javascript ]
{
}

///  Tests if a column type is a numeric type.
/// 	Zen uses the CLIENTDATATYPE value, not ODBCTYPE. Client types are defined as:
/// Returns the type of column <var>n</var> in the result set where type is an integer associated with
/// the client datatype. If the type cannot be determined, 0 (zero) is returned.
/// <table>
/// <tr><td>1<td><td>BINARY</td></tr>
/// 	<tr><td>2<td><td>DATE</td></tr>
/// 	<tr><td>3<td><td>DOUBLE</td></tr>
/// 	<tr><td>4<td><td>HANDLE</td></tr>
/// 	<tr><td>5<td><td>INTEGER</td></tr>
/// 	<tr><td>6<td><td>LIST</td></tr>
/// 	<tr><td>7<td><td>LONGVARCHAR</td></tr>
/// 	<tr><td>8<td><td>TIME</td></tr>
/// 	<tr><td>9<td><td>TIMESTAMP</td></tr>
/// 	<tr><td>10<td><td>VARCHAR</td></tr>
/// 	<tr><td>11<td><td>STATUS</td></tr>
/// 	<tr><td>12<td><td>BINARYSTREAM</td></tr>
/// 	<tr><td>13<td><td>CHARACTERSTREAM</td></tr>
/// 	<tr><td>14<td><td>NUMERIC</td></tr>
/// 	<tr><td>15<td><td>CURRENCY</td></tr>
/// 	<tr><td>16<td><td>BOOLEAN</td></tr>
/// 	<tr><td>17<td><td>OID</td></tr>
/// 	<tr><td>18<td><td>BIGINT</td></tr>
/// 	<tr><td>19<td><td>FDATE</td></tr>
/// 	<tr><td>20<td><td>FTIMESTAMP</td></tr>
/// </table>
ClassMethod %IsTypeNumeric(pType As %Integer) As %Boolean [ CodeMode = expression ]
{
}

///  Explore the DOM structure and return the first child of the given node
///  that matches the given class name
ClientMethod findChildByClass(node, className) [ Internal, Language = javascript ]
{
}

///  Explore the DOM structure and return the first child of the given node
///  that matches the HTML tag type
ClientMethod findChildByTag(node, tagName) [ Internal, Language = javascript ]
{
}

///  Explore the DOM in a depth first recursive search to find the first
///  descendant of the given node of of the given class
ClientMethod findDescendantByClass(node, className) [ Internal, Language = javascript ]
{
}

ClientMethod resizeHeaders() [ Language = javascript ]
{
}

///  Under IE with fixedHeaders set to true, the table headers and the body
///  columns may become misaligned.  This routine checks for alignment issues
///  in the rendered table and, if needed, reformats the header to accound for
///  the space taken up by a vertical scrollbar in the body of the table.
ClientMethod getInsideWidth(element) [ Language = javascript ]
{
}

ClientMethod setOffsetWidth(element, width) [ Language = javascript ]
{
}

ClientMethod packRowsIE() [ Language = javascript ]
{
}

ClientMethod packRows() [ Language = javascript ]
{
}

///  if the position of the enclosing div for table has not been explicitly set
///  to some desired value, force its positioning to relative with an offset of 0,0
///  such a that any absolutely positioned child elements will have a known, local
///  offset parent.
ClientMethod anchorDiv() [ Internal, Language = javascript ]
{
}

ClientMethod launchConfirmDialog(url, pageName, features, parms) [ Internal, Language = javascript ]
{
}

///  Called after refreshContents when table is actually visible.
///  Call the resizeHeaders routine to see if any alignment issue need to be
///  addressed.
ClientMethod onDisplayHandler() [ Internal, Language = javascript ]
{
}

///  When the page is loaded, check for alignment issues between the table header
///  and the table body.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
