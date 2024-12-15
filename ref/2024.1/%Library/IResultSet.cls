/// <p>Interface for result sets.</p>
/// <p>
/// A result set is a type of result returned by executing either a SELECT statement or a CALL statement.
/// Please refer to <class>%SQL.Statement</class> and <class>%SQL.StatementResult</class> for more
/// information on how to prepare dynamic SQL statements and how to process the results the
/// of executing them.
/// </p>
Class %Library.IResultSet Extends %RegisteredObject [ Abstract, ClientDataType = HANDLE, ClientName = ResultSet, OdbcType = RESULTSET, System = 2 ]
{

Parameter COLUMNCOUNT;

Property %Message As %Library.String;

Property %Metadata As %Library.String(MAXLEN = "") [ MultiDimensional ];

/// %Objects is a list of column/extent pairs
Property %Objects As %Library.String(MAXLEN = "") [ Internal ];

/// %Parameters is a parameter metadata string containing the parameter name and type.
Property %Parameters As %Library.String(MAXLEN = "") [ Internal ];

Property %rsmd As %ResultSet.MetaData [ Internal, Private ];

Property %NextColumn As %RawString [ Private ];

/// %ResultColumnCount is the number of columns in the result set. This value is
/// always zero unless the current result is a RESULTSET object (instance of %SQL.IResultSet)
/// or a procedure context object (instance of %Library.IProcedureContext). For a CALL
/// statement result, this value represents the column count of the result set currently
/// bound. For more information on result set sequences and dynamic result set binding refer
/// to <<link needed here>>.
Property %ResultColumnCount As %Library.Integer [ ReadOnly ];

Method %ResultColumnCountGet() As %Integer [ CodeMode = expression ]
{
}

Property %ROWCOUNT As %Library.Integer;

Property %ROWID As %String(MAXLEN = "");

/// This property is set on instantiation to the current value of $zu(115,5). It
/// cannot be set directly by the user. It is to be used by the result set object
/// to format column and parameter values. SQL based result sets using SELECTMODE=RUNTIME
/// will use this value. The user can indirectly set this value by setting $zu(115,5) prior
/// to calling %Prepare() to instantiate the result set.
/// Possible values are:
/// <ul>
/// <li> 0 for LOGICAL mode.</li>
/// <li> 1 for ODBC mode.</li>
/// <li> 2 for DISPLAY mode.</li>
/// </ul>
Property %RuntimeMode As %Library.String [ Private ];

Property %SQLCODE As %Library.Integer;

/// %PrivateTables is an array of private temporary table orefs used by this result set subscripted by temp table name.
Property %PrivateTables As array Of %XSQL.DS.TempTable;

/// %LTT is an array of temporary table storage indexes subscripted by temp table name.
Property %LTT As %RawString [ Internal, MultiDimensional ];

/// %Prepare()
/// <p><p>This method is different for each type of result set class. This method has two tasks. First, instantiate the correct
/// concrete result set class. Think of the first parameter, queryId, as being an "index key value" that is used to lookup
/// the correct query implementation. For non-cached (static) queries this is simply the name of the class that implements
/// the query, i.e. the %IResultSet interface. The second task is to prepare the resulting object for data
/// retrieval by the caller.
/// <p>
/// <li><var>queryId</var> <ul>This can be the concrete subclass of <CLASS>%IResultSet</CLASS> that implements the desired query. For dynamic cached results this value
/// 				is generally the query text that can be parsed, a hashed value computed and the cached result implementation class
/// 				looked up in the query cache index.
///
/// 				<p><var>queryId</var> can also be a &lt;className&gt;&lt;colon&gt;&lt;queryName&gt; or &lt;className&gt;&lt;colon&gt;&lt;methodName&gt;. If it is a &lt;queryName&gt; then
/// 				the result set returned is an instance of %Library.ResultSet that is bound to that query. If it is the name of a method
/// 				Then that method is called, passing %args... to the method, and the first result set found in the context object (<var>%sqlcontext</var>)
/// 				is returned.<p></ul></li>
/// <li><var>%returnError</var>	<ul>If an error occurs this is returned by reference and is a <CLASS>%SYSTEM.Error</CLASS> object
///                 with properties set to describe information about the error. %returnError.Status contains the <CLASS>%Status</CLASS> value.<p></ul>
/// <li><var>%importPackages</var>	This is a comma delimited list of packages to import. This is only relevant if the result set implementation is
/// 				generated and the query source might include unqualified names. The import packages list is used to resolve package/schema names for
/// 				unqualified names.<p></ul>
/// <li><var>%args...</var>	<ul>Argument values to be passed to the query/method/class <METHOD>%Execute</METHOD>() method. Zero, one or more argument values can be passed.</ul>
ClassMethod %Prepare(queryId As %String(MAXLEN=""), ByRef %returnError As %SYSTEM.Error, %importPackages As %RawString = "", %args...) As %Library.IResultSet [ ServerOnly = 1 ]
{
}

/// <METHOD>%PrepareMetaData</METHOD> is similar to <METHOD>%Prepare</METHOD> except that no result set is instantiated. This
/// method returns an instance of <CLASS>%ResultSet.MetaData</CLASS>. Be aware that the implementation of this
/// method might cause the result set to be instantiated but that is up to the result set
/// class itself and no result set is actually returned by this method - only metadata.
/// <p>
/// <li><var>queryId</var> <ul>This can be the concrete subclass of <CLASS>%IResultSet</CLASS> that implements the desired query. For dynamic cached results this value
/// 			is generally the query text that can be parsed, a hashed value computed and the cached result implementation class
/// 			looked up in the query cache index.
///
/// 	<p><var>queryId</var> can also be a &lt;className&gt;&lt;colon&gt;&lt;queryName&gt; or &lt;className&gt;&lt;colon&gt;&lt;methodName&gt;. If it is a &lt;queryName&gt; then
/// 	the metadata is retrieved from the compiled query. If it is the name of a method then no metadata can be prepared since it requires the method to be executed.<p></ul>
/// <li><var>returnError</var>	<ul>If an error occurs this is returned by reference and is a <CLASS>%SYSTEM.Error</CLASS> object
///                 with properties set to describe information about the error. returnError.Status contains the <CLASS>%Status</CLASS> value.<p>
/// <li><var>importPackages</var>	This is a comma delimited list of packages to import. This is only relevant if the result set implementation is
/// 				generated and the query source might include unqualified names. The import packages list is used to resolve package/schema names for
/// 				unqualified names.<p></ul>
ClassMethod %PrepareMetaData(queryId As %String(MAXLEN=""), ByRef returnError As %SYSTEM.Error = "", importPackages As %RawString = "") As %ResultSet.MetaData
{
}

/// %CreateSnapshot(storageOffset,lastRow)
///
/// Copy all rows from the current position to the end of the cursor into a temporary
/// global. Fetch <var>rowCount</var> rows into a temporary global. If the <var>rowCount</var> is -1 then all rows are fetched
Method %CreateSnapshot(storageOffset As %Integer, ByRef lastRow As %Integer, ByRef pRuntimeMode As %Integer = "", pStatic As %ResultSet.Static = "") As %Status
{
}

/// Returns the value of the column with the name <var>name</var> in the current row of the result set.
/// <p>If <var>name</var> is not a valid column name, this method returns an empty string.
Method %Get(colname As %String = "") As %Library.String [ Abstract ]
{
}

/// Returns the value of column <var>colnbr</var> in the current row of the result set.
Method %GetData(colnbr As %Integer = 0) As %Library.String [ Abstract ]
{
}

/// Advance the result set cursor to the next row. Returns 0 if the cursor is at the end of the
/// result set.
Method %Next(ByRef sc As %Library.Status = {$$$OK}) As %Library.Integer [ Abstract ]
{
}

/// Fetch and send a series of rows for the ODBC/JDBC server. For internal use only.
Method %SendODBC() As %Library.Integer [ Abstract, Internal ]
{
}

/// Fetch and send a series of rows for continuous query client. For internal use only.
Method %SendDelimitedRows(pMaxRows As %Integer = 0, pDelimiter As %String = "", ByRef pReturnCount As %Integer = 0) As %Status [ Abstract ]
{
}

/// %SendObjects iterates over the rows in the result set and calls object export (quick load) on
/// each column that is present in ..%Objects. For internal use only.
Method %SendObjects(pObjectCount As %Integer = 0, pLock As %Integer = 0) As %Library.Integer [ Internal ]
{
}

/// This method is expected to be overridden by concrete subclasses
Method %CloseCursor() As %Status [ CodeMode = expression, Private ]
{
}

Method %OnClose() As %Status [ CodeMode = expression, Private ]
{
}

Method %DispatchGetProperty(pProperty As %String(MAXLEN=255))
{
}

/// Property dispatch method to catch references to
/// virtual properties.<br>
/// This should not be called directly.<br>
Method %DispatchSetProperty(pProperty As %String, pValue As %String) [ Final, Internal ]
{
}

Method %DispatchMethod(pMethod As %String, Args...)
{
}

Method %GetMetadata() As %ResultSet.MetaData
{
}

/// %Print()
/// <p>Write the current row to the current device. An optional column delimiter can be
/// specified. No formatting is applied other than writing <var>pDelimiter</var> between
/// column values. This can be useful for exporting result set data to tab delimited files.</p>
/// <p>For example:</p><p></p>
/// <example>
/// set sql = "select name,home_street,home_city,home_state,home_zip from sample.person"
/// set rset = ##class(%ResultSet.SQL).%Prepare(.sql,.err,"")
/// if '$Isobject(err) {
/// 	set file="c:\temp\names.asv"
/// 	open file:"WNS"
/// 	use file while rset.%Next() { do rset.%Print($char(9)) }
/// 	close file
/// }
/// </example>
/// <p><p>
/// Example data:
/// <table>
/// <tr><td>Cornell,Ezra M.</td><td>340 Franklin Court</td><td>Sarasota</td><td>NY</td><td>12866</td></tr>
/// <tr><td>Huff,Stephen A.</td><td>548 Washington Blvd</td><td>Brownfield Center</td><td>MD</td><td>53436</td></tr>
/// <tr><td>Sands,Jeep Q.</td><td>7298 Washington Drive</td><td>Xavier</td><td>WY</td><td>23685</td></tr>
/// </table>
Method %Print(pDelimiter As %String = " ") As %Status
{
}

/// alias for %Print, implement %Display for new result set interface
Method %Display(pDelimiter As %String = " ") As %Status
{
}

/// <p>Display the contents of the result object. If formatted display is available then format the results
/// using the requested format and, if appropriate, open the formatted results using the host OS. The output
/// is directed to one or more files and messages are placed in a result set object. All file names used
/// are returned in an array.</p>
/// <br>
/// 	<p>
/// 		<h4>Parameters</h4><br>
/// 		<table border="1" title="Parameters">
/// 			<tr>
/// 				<th>Name</th><th>Description</th>
/// 			</tr>
/// 			<tr>
/// 				<td>pFormat</td>
/// 				<td>
/// 					<p>The format applied to the result content. This parameter is also used to determine the file name extension.</p>
/// 				<p>Supported formats are:<br>
/// 						<table>
/// 						<tr><td>-1</td><td>%Display() format</td></tr>
/// 						<tr><td>0</td><td>XML</td></tr>
/// 						<tr><td>1</td><td>HTML</td></tr>
/// 						<tr><td>2</td><td>PDF (requires a renderer such as FOP)</td></tr>
/// 						<tr><td>99</td><td>TXT</td></tr>
/// 						<tr><td>100</td><td>CSV</td></tr>
/// 						</table>
/// 					</p>
/// 				<p>If <var>pFormat</var> is specified as any number not listed above then it will default to TXT.</p>
/// 				<p><var>pFormat</var> can also be specified as XML, HTML, PDF, TXT or CSV.</p>
/// 				<p><i>NOTE: <var>pFormat</var> of CSV/100 is not a true comma separated value, but instead uses TAB separated values.</i></p>
/// 				</td>
/// 		</tr>
/// 			<tr>
/// 				<td>pFileName</td>
/// 				<td>
/// 					<p>The base file name to be used to generate actual file names used for output. If no value is specified
/// 						then a file name will be generated, using the TEMP folder defined for the InterSystems IRIS instance.
/// 						This value is not expected to include an extension. An extension is added to this value to form the actual
/// 						file used. Also, if nested results exist then a number is appended to the file name specified to produce a unique
/// 						name for each result.
/// 					</p>
/// 				</td>
/// 		</tr>
/// 			<tr>
/// 				<td>pMessages</td>
/// 				<td>
/// 					<p>Instance of a system result set class. If no value is passed then the system message result class is instantiated.
/// 						This parameter is passed by reference. It is up to the caller to process the result set oref that is returned.
/// 						pMessages.Count() returns the number of messages contained in the result set. pMessages.%Display() will display the
/// 						messages on the current device. pMessages.%DisplayFormatted() is also implemented and can be used to display the
/// 						messages using the selected format.
/// 					</p>
/// 				</td>
/// 		</tr>
/// 			<tr>
/// 				<td>pFilesUsed</td>
/// 				<td>
/// 					<p>This pass-by-reference parameter will contain the number of files used to display the result content and the name of
/// 						each file. pFilesUsed is the number of files and pFilesUsed(<var>file_number</var>) is the name of the file. The
/// 						sequence of the files is the same sequence as the results are processed. For simple result objects, there is a single
/// 						file. For context objects that can contain result set sequences, the results are output in the order they are returned
/// 						and the files used are present in pFilesUsed in that same order.
/// 					</p>
/// 				</td>
/// 		</tr>
///  			<tr>
///  				<td>pTranslateTable</td>
///  				<td>
///  					<p>This is the translate table used for the output files when the format is CSV or TXT. This parameter is optional.
///  					</p>
///  				</td>
///  		</tr>
///  			<tr>
///  				<td>pDelimiter</td>
///  				<td>
///  					<p>The delimiter to use between columns in the export file. This parameter is optional and defaults to tab character if not specified.
///  					</p>
///  				</td>
///  		</tr>
/// 		</table>
/// </p>
/// <br>
Method %DisplayFormatted(pFormat As %String = -1, ByRef pFileName As %String(MAXLEN="") = "", ByRef pMessages As %SQL.Manager.Messages = "", ByRef pFilesUsed As %String(MAXLEN="") = 0, pTranslateTable As %String(MAXLEN="") = "", pDelimiter As %String = {$c(9)})
{
}

}
