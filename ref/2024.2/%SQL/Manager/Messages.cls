Class %SQL.Manager.Messages Extends %SQL.CustomResultSet [ System = 4 ]
{

Property Message As %String(MAXLEN = 200);

Property Messages As list Of %String(MAXLEN = "") [ Private ];

Property %currentRow As %Integer [ Private ];

Property AtEnd As %Integer [ Private ];

/// Implement code to open the cursor here. You may also define new formal arguments. Any arguments defined
/// will be automatically added to the constructor interface and callers can specify actual arguments in the
/// call to %New().
/// <pre>
/// 		method %OpenCursor(pBeginDate as %Date = "", pEndDate as %Date = "") as %Library.Status [ private ]
/// 		{
/// 			set ..BeginDate = pBeginDate
/// 			set ..EndDate = $Select(pEndDate'="":pEndDate,1:$H)
/// 			quit $$$OK
/// 		}
/// </pre>
/// Given the above example implementation of %OpenCursor, the following is a valid call to instantiate a new instance.
/// <pre>
/// 		set tResult = ##class(MyCustom.ResultSet).%New(,$H-30,$H-10)
/// </pre>
/// To report an error from %OpenCursor just set ..%SQLCODE and %Message to appropriate
/// values. To report no rows found, set %SQLCODE to 100. Errors are indicated by negative
/// ..%SQLCODE values.
Method %OpenCursor() As %Library.Status [ Private ]
{
}

/// Advance to the next row in the result referenced by <var>%ProcCursor</var>. Returns 0 if the cursor is at the end of the
/// result set. An optional argument contains a %Status value on return. This %Status value
/// indicates success or failure of the %Next call. %SQLCODE is also set by %Next.
/// This implementation is overridden by classes that implement the result set interface.
Method %Next(ByRef sc As %Library.Status = {$$$OK}) As %Library.Integer
{
}

Method Count() As %Integer [ CodeMode = expression ]
{
}

Method Insert(pMessage As %String(MAXLEN=200)) [ CodeMode = expression ]
{
}

Method %SetIterator(pRowNumber As %Library.Integer = 0) As %Library.Integer
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
/// 					<p>Supported formats are:<br>
/// 						<table>
/// 						<tr><td>-1</td><td>%Display() format</td></tr>
/// 						<tr><td>0</td><td>XML</td></tr>
/// 						<tr><td>1</td><td>HTML</td></tr>
/// 						<tr><td>2</td><td>PDF (requires a renderer such as FOP)</td></tr>
/// 						<tr><td>99</td><td>TXT</td></tr>
/// 						</table>
/// 					</p>
/// 					<p>If <var>pFormat</var> is specified as any number not listed above then it will default to TXT.</p>
/// 					<p><var>pFormat</var> can also be specified as XML, HTML, PDF, or TXT.</p>
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

Method %Display(pDelimiter As %String = {$Char(9)})
{
}

}
