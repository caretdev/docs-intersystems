/// The <b>SQLGatewayConnection</b> class provides low-level access to the SQLGateway.
/// The user should understand how to make ODBC calls in order to use this class.
/// Most of the calls which return <b>%Status</b> also set the <b>..sqlcode</b> property.  The user should check ..sqlcode if return status is not $$$OK.
/// The user can use a <b>%SQLGatewayConnection</b> class as follows:
/// <example>
/// #include %occInclude
/// 	//Create new Gateway connection object
/// 	set gc=##class(%SQLGatewayConnection).%New()
/// 	If gc=$$$NULLOREF quit $$$ERROR($$$GeneralError,"Cannot create %SQLGatewayConnection.")
///
/// 	//Make connection to target DSN
/// 	s pDSN="Samples"
/// 	s usr="_system"
/// 	s pwd="SYS"
/// 	set sc=gc.Connect(pDSN,usr,pwd,0)
/// 	If $$$ISERR(sc) quit sc
/// 	if gc.ConnectionHandle="" quit $$$ERROR($$$GeneralError,"Connection failed")
///
/// 	set sc=gc.AllocateStatement(.hstmt)
/// 	if $$$ISERR(sc) quit sc
///
/// 	//Prepare statement for execution
/// 	set pQuery= "select * from Sample.Person"
/// 	set sc=gc.Prepare(hstmt,pQuery)
/// 	if $$$ISERR(sc) quit sc
/// 	//Execute statement
/// 	set sc=gc.Execute(hstmt)
/// 	if $$$ISERR(sc) quit sc
/// 	//Get list of columns returned by query
/// 	set sc=gc.DescribeColumns(hstmt, .columnlist)
/// 	if $$$ISERR(sc) quit sc
///
/// 	//display column headers delimited by ":"
/// 	set numcols=$listlength(columnlist)-1  //get number of columns
/// 	for colnum=2:1:numcols+1 {
/// 		    Write $listget($listget(columnlist,colnum),1),":"
/// 	  		}
/// 	write !
///
/// 	//Return first 200 rows
/// 	set sc=gc.Fetch(hstmt)
/// 	if $$$ISERR(sc) quit sc
/// 	s rownum=1
/// 	while((gc.sqlcode'=100) && (rownum<=200)) {
/// 	      	for ii=1:1:numcols {
/// 		      	s sc=gc.GetData(hstmt, ii, 1, .val)
/// 		      	w " "_val
/// 		      	if $$$ISERR(sc) break
/// 	      	}
/// 	      	s rownum=rownum+1
/// 	 		write !
/// 	 		set sc=gc.Fetch(hstmt)
/// 			if $$$ISERR(sc) break
///
/// 	  		}
///
/// 	  //Close cursor and then disconnect
/// 	set sc=gc.CloseCursor(hstmt)
/// 	if $$$ISERR(sc) quit sc
/// 	 // Disconnect() should always be called when done with the connection.
/// 	 // On some platforms, not calling Disconnect() can lead to a hang when the process halts
/// 	set sc=gc.Disconnect()
///
/// 	Quit sc
/// </example>
/// <p>The sample class mentioned here (Sample.Person) is part of <a target="_top" href="https://github.com/intersystems/Samples-Data">https://github.com/intersystems/Samples-Data.</a>
/// See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=landing+githubsamples">Downloading Samples</a>.</p>
Class %Library.SQLGatewayConnection Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

Property ConnectionName As %String;

Property DSN As %String;

Property User As %String;

Property Password As %String;

Property DLLName As %String;

Property DLLHandle As %Binary;

Property sqlcode As %Integer;

Property ConnectionHandle As %Binary;

Property LegacyMode As %Integer;

Property GatewayStatus As %Integer [ Calculated ];

Property DisconnectOnClose As %Boolean;

///  The method <b>Connect</b> is used for establishing connection to a DSN.
/// If username and password are both empty it calls SQLDriverConnect.
/// If that call is unsuccessful or username/password are specified it calls SQLConnect.
/// SQLSetConnectAttr is called before connection to set SQL_ATTR_LOGIN_TIMEOUT if the <b>timeout</b> parameter is not 0.
Method Connect(dsn, usr, pwd, timeout) As %Status
{
}

///  Method <b>GetConnection</b> is used for establishing connection. It uses
///  an entry from InterSystems IRIS configuration for determening the DSN, user name, and password.
Method GetConnection(conn, timeout) As %Status
{
}

/// method <b>GatewayStatusGet</b> returns an error code for the last call.  It does not initialize the error code and can be called multiple times.  The possible return values are:
/// <br>
/// <ul>
/// <li>0 - success</li>
/// <li>-1 - SQL error</li>
/// <li>-1000 - critical error</li>
/// </ul>
///
Method GatewayStatusGet() As %Integer
{
}

/// method <b>GetGTWVersion</b> returns the current version of odbcgateway.dll(so)
Method GetGTWVersion() As %Integer
{
}

/// method <b>GetLastSQLCode</b> returns an SQL code for the last call if this call does not return an SQL code (e.g. SQLGetData).
///
Method GetLastSQLCode() As %Integer
{
}

/// Method <b>GetErrorList</b> sets a list of errors.  It calls SQLDiagRec as long as
///  it returns errors for the given <b>hdbc</b>, <b>hstmt</b> (<b>hdbc</b> is set implicitly to the handle of the active connection).
/// <b>errorlist</b> is a delimited string (with platform specific new line characters as delimiters) metalist; each element corresponds to
/// a particular error, in the format:
/// SQLState: (...) NativeError: [...] Message: [...
/// <b>GetErrorList(0, .errorlist)</b> - returns the error status of the ODBC function most
/// recently called with the current hdbc;
Method GetErrorList(hstmt, Output errorlist As %List) As %Status [ ProcedureBlock = 1 ]
{
}

/// Method <b>Prepare(hstmt, sql)</b> invokes SQLPrepare for a given handle.
Method Prepare(hstmt, sql) As %Status
{
}

/// Method <b>PrepareW(hstmt, sql)</b> invokes SQLPrepareW for a given handle.
Method PrepareW(hstmt, sql) As %Status
{
}

///  The method <b>getResultSet</b> is used for encapsulating data retrival from already executed statement.
/// It return a resultset and all the resultset methods for data and metadata access are internally translated to ODBC calls.  It means that if this path is chosen the user should not
/// call Fetch, GetData etc independently, otherwise the results may be not complete and/or correct.
Method getResultSet(hstmt) As %SQL.IResultSet
{
}

/// Method <b>ParamData(hstmt)</b> invokes <b>SQLParamData</b> for a given handle.
Method ParamData(hstmt, ByRef ind As %Integer) As %Status [ ProcedureBlock = 1 ]
{
}

/// Method <b>Execute(hstmt)</b> invokes <b>SQLExecute</b> for a given handle.
Method Execute(hstmt) As %Status
{
}

/// Method <b>AllocateStatement(hstmt)</b> invokes <b>SQLAllocHandle</b> and creates the corresponding structures in the SQL Gateway.
Method AllocateStatement(ByRef hstmt) As %Status
{
}

/// Method <b>Disconnect</b> closes the connection.<br>
/// Disconnect() should always be called when done with the connection.
/// On some platforms, not calling Disconnect() can lead to a hang when the process halts
Method Disconnect() As %Status
{
}

/// Method <b>Fetch(hstmt)</b> invokes <b>SQLFetch</b>.  It returns an error for all non zero SQL codes.  The user should check the <b>..sqlcode</b> property.
Method Fetch(hstmt) As %Status
{
}

/// Method <b>RowCount(hstmt)</b> returns <b>SQLRowCount</b> for the corresponding <b> hstmt</b>.
Method RowCount(hstmt) As %Integer
{
}

/// Method <b>MoreResults(hstmt)</b> returns <b>SQLMoreResults</b> for the corresponding <b> hstmt</b>.
Method MoreResults(hstmt) As %Integer
{
}

Method getNextResultSet(hstmt, ByRef qrc As %Integer = 0) As %Library.ObjectHandle
{
}

/// BindParameters is used for binding all the parameters for a given statement handle.
/// <br>Arguments :
/// <ul>
/// <li><b>hstmt</b> - Statement handle</li>
/// <li><b>ptype</b> -  input/ouput types of the parameters in <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> format</li>
/// <li><b>dtype</b> - SQL datatypes of parameters in the $list format</li>
/// <li><b>precision</b> - $list of the correponding precision values - used for reserving buffers for parameter values</li>
/// <li><b>scale</b> - $list of the correponding scale values</li>
/// <li><b>cd</b> - $list of column sizes</li>
/// </ul>
/// <p> They are used in the following places of the <b>SQLBindParameter</b> function
/// <pre>
/// SQLRETURN SQLBindParameter(
///     SQLHSTMT         StatementHandle,   // hstmt
///     SQLUSMALLINT     ParameterNumber,
///     SQLSMALLINT      InputOutputType,   // $list element from ptype
///     SQLSMALLINT      ValueType,
///     SQLSMALLINT      ParameterType,     // $list element from dtype
///     SQLUINTEGER      ColumnSize,        // $list element from cd
///     SQLSMALLINT      DecimalDigits,     // $list element from scale
///     SQLPOINTER       ParameterValuePtr ,
///     SQLINTEGER       BufferLength,
///     SQLINTEGER *     StrLen_or_IndPtr);
/// </pre>
Method BindParameters(hstmt, ptype As %List, dtype As %List, precision As %List, scale As %List, cd As %List) As %Status
{
}

/// BindParameter is calling SQLBindParameter with the corresponding values, the buffer length is guaranteed to be not less then StrLen.
Method BindParameter(hstmt, ParameterNumber As %Integer, IOType As %Integer, ValueType As %Integer, ParameterType As %Integer, ColumnSize As %Integer, DecimalDigits As %Integer, StrLen As %Integer)
{
}

/// Method <b>SetParameter(hstmt, pvalue, pnbr)</b> is used for setting the previously bound parameter with the ordinal number <b>pnbr</b> to the value which is contained in a <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> format in <b>pvalue</b>.
/// If the allocated buffer is not sufficient a new buffer will be allocated.
Method SetParameter(hstmt, pvalue, pnbr) As %Status
{
}

/// Method <b>SetParameterBinary(hstmt, pvalue, pnbr)</b> is used for setting the previously bound binary parameter with the ordinal number <b>pnbr</b> to the value which is contained in a <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> format in <b>pvalue</b>.
/// If the allocated buffer is not sufficient a new buffer will be allocated.
Method SetParameterBinary(hstmt, pvalue, pnbr) As %Status
{
}

/// Method <b>DescribeColumns</b> returns a list with column information in a second argument. It calls <b>SQLDescribeCols</b> and <b>SQLColAttribute</b>.
/// Each list element of the returned list is a list itself.  The first list element contains the header in the <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> format containing 8 elements:
/// <br>
/// <ol>
/// <li>the number of columns in the given statement</li>
/// <li>the string "SqlType"</li>
/// <li>the string "Precision"</li>
/// <li>the string "Scale"</li>
/// <li>the string "Nullable"</li>
/// <li>the string "Datatype"</li>
/// <li>the string "DisplaySize"</li>
/// <li>the string "IsMoney?"</li>
/// </ol>
/// <br>Next elements correspond to the statement column and also  contains 8 elements:
/// <br>
/// <ol>
/// <li>column name</li>
/// <li>SQL type of the column</li>
/// <li>column size</li>
/// <li>decimal digits</li>
/// <li>nullable</li>
/// <li>column datatype</li>
/// <li>column display size</li>
/// <li>SQL_TRUE or SQL_FALSE depending whether this is a currency type</li>
/// </ol>
Method DescribeColumns(hstmt, Output clist As %List) As %Status
{
}

/// Method <b>FetchRows</b> retrieves <b>nrows</b> of rows  for the given hstmt (it should be a statement which returns a result set)
/// It returns rlist - a list of row.s
/// If there is no data (SQL_CODE = 100) fetching is assumed to be successful
/// This call truncates character fields up to 120 characters so that more fields would fit in a row.  It is advised to use <b>GetData</b> call when non truncated data is needed.
Method FetchRows(hstmt, Output rlist As %List, nrows As %Integer) As %Status
{
}

/// Method <b>Columns</b> invokes <b>SQLColumns</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method Columns(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String, ColumnName As %String) As %Status
{
}

/// Method <b>ColumnPrivileges</b> invokes <b>SQLColumnPrivileges</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method ColumnPrivileges(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String, ColumnName As %String) As %Status
{
}

/// Method <b>Tables</b> invokes <b>SQLTables</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method Tables(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String, TableType As %String) As %Status
{
}

/// Method <b>TablePrivileges</b> invokes <b>SQLTablePrivileges</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method TablePrivileges(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String) As %Status
{
}

/// The wide version of <b>Columns</b>. See documentation for <b>Columns</b>
Method ColumnsW(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String, ColumnName As %String) As %Status
{
}

/// The wide version of <b>Columns</b>. See documentation for <b>ColumnPrivilegesW</b>
Method ColumnPrivilegesW(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String, ColumnName As %String) As %Status
{
}

/// The wide version of <b>SpecialColumns</b>. See documentation for <b>SpecialColumns</b>
Method SpecialColumnsW(hstmt, IdentifierType As %Integer, CatalogName As %String, SchemaName As %String, TableName As %String, Scope As %Integer, Nullable As %Integer) As %Status
{
}

/// Method <b>SpecialColumns</b> invokes <b>SQLSpecialColumns</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method SpecialColumns(hstmt, IdentifierType As %Integer, CatalogName As %String, SchemaName As %String, TableName As %String, Scope As %Integer, Nullable As %Integer) As %Status
{
}

/// The wide version of <b>Tables</b>. See documentation for <b>Tables</b>
Method TablesW(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String, TableType As %String) As %Status
{
}

/// The wide version of <b>TablePrivileges</b>. See documentation for <b>Tables</b>
Method TablePrivilegesW(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String) As %Status
{
}

/// The wide version of <b>PrimaryKeys</b>. See documentation for <b>SQLPrimaryKeys</b>
Method PrimaryKeysW(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String) As %Status
{
}

/// Method <b>PrimaryKeys</b> invokes <b>SQLPrimaryKeys</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method PrimaryKeys(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String) As %Status
{
}

/// Method <b>DropStatement(hstmt)</b> invokes <b>SQLFreeHandle</b> with <b>SQL_HANDLE_STMT</b>.
Method DropStatement(hstmt) As %Status
{
}

/// Method <b>CloseCursor(hstmt)</b> invokes <b>SQLCloseCursor</b> .
Method CloseCursor(hstmt) As %Status
{
}

/// Method <b>UnbindParameters(hstmt)</b> invokes <b>SQLFreeStmt</b> with <b>SQL_UNBIND</b>.
/// Unbinding is done automatically when <b>BindParameters</b> is called.
Method UnbindParameters(hstmt) As %Status
{
}

/// Method <b>SetConnectOption(opt, val)</b> invokes <b>SQLSetConnectAttr</b>. Only integer values are supported.  Integer values for the <b>opt</b>
/// may be taken from sql.h and sqlext.h header files.
Method SetConnectOption(opt, val) As %Status
{
}

/// Method <b>SetStmtOption(hstmt, opt, val)</b> invokes <b>SQLSetStmtAttr</b>. Only integer values are supported. Integer values for the <b>opt</b>
/// may be taken from sql.h and sqlext.h header files.
Method SetStmtOption(hstmt, opt, val) As %Status
{
}

/// Method <b>Transact( type)</b> invokes <b>SQLEndTran</b>.  Pass 0 for SQL_COMMIT and 1 for SQL_ROLLBACK.
Method Transact(type) As %Status
{
}

/// Method <b>GetParameter(hstmt, pnbr,  value)</b> returns the current value of the parameter with the ordinal number <b>pnbr</b> in <b>value</b>.
Method GetParameter(hstmt, pnbr, ByRef value) As %Status
{
}

/// Method <b>DescribeProcedureColumns</b> invokes <b>SQLProcedureColumns</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method DescribeProcedureColumns(hstmt, CatalogName As %String, SchemaName As %String, ProcName As %String, ColumnName As %String) As %Status
{
}

/// Method <b>DescribeProcedureColumns</b> invokes <b>SQLProcedureColumns</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method DescribeProcedureColumnsW(hstmt, CatalogName As %String, SchemaName As %String, ProcName As %String, ColumnName As %String) As %Status
{
}

/// Method <b>DescribeProcedures</b> invokes <b>SQLProcedures</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method DescribeProcedures(hstmt, CatalogName As %String, SchemaName As %String, ProcName As %String) As %Status
{
}

/// Method <b>DescribeProcedures</b> invokes <b>SQLProcedures</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method DescribeProceduresW(hstmt, CatalogName As %String, SchemaName As %String, ProcName As %String) As %Status
{
}

/// Method <b>GetData</b> calls <b>SQLGetData></b> for the column <b>icol</b> and
/// returns data in the last argument..  The supported types are 1 (SQL_CHAR),-2 (SQL_BINARY) and -8 (SQL_WCHAR).  This method may be called repeatedly
/// for the same column in the case when the data length exceeds 31K.
Method GetData(hstmt, icol, type, ByRef val) As %Status
{
}

/// Method <b>GetDataL</b> calls <b>SQLGetData></b> for the column <b>icol</b> and returns data in the last argument. This method support long strings
/// and requests the specified number of bytes.  The supported types are 1 (SQL_CHAR),-2 (SQL_BINARY) and -8 (SQL_WCHAR).  This method may be called repeatedly
/// for the same column.
Method GetDataL(hstmt, icol, type, length, ByRef val) As %Status
{
}

/// Method <b>GetDataL</b> calls <b>SQLGetData></b> for the column <b>icol</b> and returns data in the last argument. This method support long strings
/// and requests the specified number of bytes.  The supported types are 1 (SQL_CHAR) and -8 (SQL_WCHAR).  This method may be called repeatedly
/// for the same column.
Method GetDataLW(hstmt, icol, type, length, ByRef val) As %Status
{
}

/// Method <b>PutData</b> calls <b>SQLPutData></b> for the column <b>icol</b> and sets the sqlcode property.
Method PutData(hstmt, ByRef val) As %Status
{
}

/// Method <b>PutDataW</b> calls <b>SQLPutData></b> for the column <b>icol</b> and sets the sqlcode property.
Method PutDataW(hstmt, ByRef val) As %Status
{
}

/// Method <b>GetDataW</b> calls <b>SQLGetData></b> for the column <b>icol</b> and returns data in the last argument..  The supported types are 1 (SQL_CHAR) and -8 (SQL_WCHAR).  This method may be called repeatedly
/// for the same column in the case when the data length exceeds 31K.
Method GetDataW(hstmt, icol, type, ByRef val) As %Status
{
}

/// Method <b>GetOneRow</b> retrieves the next  for the given hstmt (it should be a statement which returns a result set)
/// It returns rlist - a list of fields
/// If there is no data (SQL_CODE = 100) fetching is assumed to be successful but the return list is empty.
/// This call truncates character fields up to 120 characters so that more fields would fit in a row.  It is advised to use <b>GetData</b> call when non truncated data is needed.
Method GetOneRow(hstmt, ByRef row) As %Status
{
}

/// Method <b>DescribeParameters</b> returns a list with parameter information in a second argument. It calls <b>SQLDescribeParam</b> and <b>SQLNumParams</b>.
/// Each list element of the returned list is a list itself.  The first list element contains the header in <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> format containing 5 elements:
/// <br>
/// <ol>
/// <li>the number of parameters in the given statement</li>
/// <li>the string "SqlType"</li>
/// <li>the string "Precision"</li>
/// <li>the string "Scale"</li>
/// <li>the string "Nullable"</li>
/// </ol>
/// <br>The next elements correspond to the statement parameter and contains 4 elements:
/// <ol>
/// <li>the SQL type of the parameter</li>
/// <li>the parameter size</li>
/// <li>the scale</li>
/// <li>whether the value is nullable</li>
/// </ol>
Method DescribeParameters(hstmt, Output plist As %List) As %Status
{
}

/// Method <b>GetInfo</b> calls <b>SQLGetInfo</b> for the current connection handle.
Method GetInfo(infotype, ByRef infoval) As %Status
{
}

/// Method <b>GetInfo</b> calls <b>SQLGetTypeInfo</b> for the current connection handle.
Method GetTypeInfo(hstmt, infotype As %Integer) As %Status
{
}

/// Method <b>Statistics</b> invokes <b>SQLStatistics</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method Statistics(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String, unique As %Integer) As %Status
{
}

/// Method <b>StatisticsW</b> invokes <b>SQLStatisticsW</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method StatisticsW(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String, unique As %Integer) As %Status
{
}

/// Method <b>ForeignKeys</b> invokes <b>SQLForeignKeys</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method ForeignKeys(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String, ForeignCatalogName As %String, ForeignSchemaName As %String, ForeignTableName As %String) As %Status
{
}

/// Method <b>ForeignKeysW</b> invokes <b>SQLForeignKeysW</b>.  It should be followed by the usual retrieval of a result set.
/// Users should pass empty strings instead of the corresponding null values and <b>$c(0)</b> instead of empty strings.  All other ODBC conventions for arguments in catalog functions apply.
Method ForeignKeysW(hstmt, CatalogName As %String, SchemaName As %String, TableName As %String, ForeignCatalogName As %String, ForeignSchemaName As %String, ForeignTableName As %String) As %Status
{
}

/// Method <b>GetUV</b> returns whether the dll was built as Unicode.
Method GetUV(ByRef infoval) As %Status
{
}

/// This method unloads odbcgateway.dll from the process memory.
Method UnloadDLL() As %Status
{
}

Method %OnClose() As %Status
{
}

/// Decide whether the text of an error returned from the driver represents
/// a disconnection implying the need to re-connect.
/// If you encounter other error signatures that ought to be in this list,
/// please contact InterSystems so that we may update this method.
ClassMethod IsTextNetworkError(ErrorText As %String) As %Boolean [ ProcedureBlock = 1 ]
{
}

}
