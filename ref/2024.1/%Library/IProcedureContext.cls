/// Base procedure context interface
Class %Library.IProcedureContext Extends %SQL.StatementResult [ Abstract, System = 2 ]
{

/// Holds oref of the current resultset currently bound. Deprecated - use %CurrentResult.
Property CurrentResult As %RegisteredObject [ Internal ];

Method CurrentResultGet() As %Library.RegisteredObject [ CodeMode = expression, Internal ]
{
}

Method CurrentResultSet(value As %RawString) As %Library.Status [ CodeMode = expression, Internal ]
{
}

Property Error As %SYSTEM.Error;

Method ErrorSet(newvalue As %RawString) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Called to return the next resultset object.
/// This also removes the reference to the existing object so it can cleanup and close itself
Method NextResult() As %RegisteredObject
{
}

/// Close the current resultset object, used to allow the cleanup code to run and the cursor to close
Method CloseCurrentResult() As %Status
{
}

Method %ResultColumnCountGet() [ CodeMode = expression, Internal ]
{
}

Method %ProcCursorGet() [ Internal ]
{
}

/// %MoreResults() will serially bind the next result set to the result object cursor
/// (implemented as %Next()). If a result set was previously bound to the result object
/// cursor (referred to as the "procedural cursor" by the SQL Standard) then it will be
/// unbound and the reference to that result set removed. Under normal circumstances the previously
/// bound result set is destructed.
Method %MoreResults() As %Integer
{
}

/// Advance the procedural result set cursor to the next row. Returns 0 if the cursor is at the end of the
/// result set or if an error was encountered. Errors are reported in dynamic SQL using the %SQLCODE and %Message
/// properties of the statement result. An optional argument will contain a %Status value on return. This %Status value
/// indicates success or failure of the %Next call but it should be considered to be a secondary error reporting interface,
/// <property>%SQLCODE</property> being the primary error reporting mechanism.
/// This implementation can be overridden by classes that implement the procedural cursor interface.
Method %Next(ByRef pStatus As %Library.Status) As %Library.Integer
{
}

/// Returns the value of the column with the name <var>pColumnName</var> in the current row of the result set.
/// <p>If <var>pColumnName</var> is not a valid column name, this method returns an empty string.
Method %Get(pColumnName As %String = "") As %Library.String [ CodeMode = expression ]
{
}

/// Returns the value of column <var>pColumnNumber</var> in the current row of the result set.
Method %GetData(pColumnNumber As %Integer = 0) As %Library.String [ CodeMode = expression ]
{
}

/// Return the result set metadata as a %SQL.StatementMetadata instance.
Method %GetMetadata() As %SQL.StatementMetadata [ CodeMode = expression ]
{
}

/// Fetch and send a series of rows for the ODBC/JDBC server. For internal use only.
Method %SendODBC() As %Library.Integer [ CodeMode = expression, Internal ]
{
}

/// Fetch and send a series of rows for continuous query client. For internal use only.
Method %SendDelimitedRows(pMaxRows As %Integer = 0, pDelimiter As %String = "", ByRef pReturnCount As %Integer = 0) As %Status [ CodeMode = expression, Internal ]
{
}

/// %SendObjects iterates over the rows in the result set and calls object export (quick load) on
/// each column that is present in ..%Objects. For internal use only.
Method %SendObjects(pObjectCount As %Integer = 0, pLock As %Integer = 0) As %Library.Integer [ CodeMode = expression, Internal ]
{
}

/// Print the contents of the current row on the current device.
Method %Print(pDelimiter As %String = " ") As %Status [ CodeMode = expression ]
{
}

Method %DispatchGetProperty(pProperty As %String(MAXLEN=255)) [ Internal ]
{
}

/// Property dispatch method to catch references to
/// virtual properties.<br>
/// This should not be called directly.<br>
Method %DispatchSetProperty(pProperty As %String, pValue As %String) [ Internal ]
{
}

/// Display the contents of this object on the current device
Method %Display(pDelimiter As %String = {$Char(9)})
{
}

/// <p>Display the contents of the %OutputValues() multidimentional property. If formatted display is available then format the results
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
/// 					<p><var>pFormat</var> can also be specified as XML, HTML, PDF, TXT or CSV.</p>
/// 					<p><i>NOTE: <var>pFormat</var> of CSV/100 is not a true comma separated value, but instead behaves the same as TXT, displaying each %OutputValues() on a numbered line.</i></p>
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
/// 		</table>
/// </p>
/// <br>
Method %DisplayFormatted(pFormat As %String = -1, ByRef pFileName As %String(MAXLEN="") = "", ByRef pMessages As %SQL.Manager.Messages = "", ByRef pFilesUsed As %String(MAXLEN="") = 0, pTranslateTable As %String(MAXLEN="") = "", pDelimiter As %String)
{
}

}
