/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25SQL.Shell">Using the SQL Shell</a>.</p>
/// %SQL.Shell - Interactive SQL shell
///
/// <p>The interactive SQL shell allows the user to execute SQL statements dynamically. There are two execution modes - immediate and
/// deferred. The execution mode can be set by executing a <var>set executemode</var> command with <var>immediate</var> or <var>deferred</var>
/// as the executemode value. If the execution mode is immediate, then SQL statements are prepared and executed immediately. If execute
/// mode is deferred, then a statement is only prepared and not executed until either a <var>#</var> or <var>go</var> command is entered.
/// The result of executing the statement is displayed on the current device after the statement is executed.</p>
/// <p>If <var>displaymode</var> is <var>currentdevice</var> and <var>messages</var> is <var>on</var> then the time taken to prepare the current
/// statement and the time taken to execute the current statement are displayed after the result is displayed. Execute time includes the time
/// to instantiate the result object and the time to display the statement.</p>
/// <p>SQL statements can span multiple lines. To enter a multiline statement, simply press the enter key to enter multiline mode. When
/// the statement is complete enter <var>go</var> to exit multiline mode. If execution mode is immediate the multiline statement will be
/// executed at that point, otherwise and additional <var>#</var> or <var>go</var> will cause the statement to execute.</p>
/// <p>The user is prompted to supply a value for each parameter defined in the statement each time the statement is executed. If the value entered begins
/// with a colon then the user is prompted to enter if the value is a literal or not. If the value is a literal the user must answer with <var>Y</var> or <var>y</var>.
/// The default is <var>N</var> and if that is the desired response simply press <var>Enter</var> and the value entered is assumed to be a ObjectScript expression or
/// host variable. Host variables are assumed to be public variables. Public variables can be set using the <var>! set var = value</var> command. Other
/// expressions can be entered, including function calls and class methods that return a value. The statement can be executed again by entering 'go'
/// resulting in prompts for new statement values. The expression used to execute the statement is
/// displayed just prior to executing the statement. If the statement does not contain any parameters then execution will proceed without any prompting.</p>
///
/// <p>The Shell supports statement recall. Any statement that is prepared may be recalled from the statement buffer by entering <b>#</b><var>nbr</nbr>
/// where <var>nbr</var> is the statement number in the buffer. Just entering <b>#</b> will list the statements currently in the buffer. Entering <b>#clear</b>
/// will clear the statement buffer on confirmation. Entering <b>#0</b> will recall the most recently prepared statement from the buffer. If <var>executemode</var>
/// is set to <var>immediate</var> then the recalled statement will also be executed.</p>
/// <p>Statements can also be saved in a statement pool. To save the current statement enter <b>save</b> <var>name</var>. That statement is saved in the pool
/// and can be later recalled by entering <b>open</b> <var>name</var>.<p>
/// <p>Statements can be deleted from the statement pool by entering <b>clear</b> <var>name</var>. If no <var>name</var> is specified then all statements are removed
/// from the pool on confirmation.</p>
/// <p>
/// Shell commands are entered in the first column and do not often conflict with executable statements. In some cases, such as <var>set</var>, a command and an SQL statement
/// can be ambiguous. This occurs most often in complex statements such as <var>CREATE PROCEDURE</var>. To eliminate confusion, the SQL Shell supports a command prefix
/// that can be set to any value. The command prefix allows the user to specify that all commands begin with a special character or character sequence. To set the command prefix
/// simply set <b>commandprefix</b> option using the <b>set</b> command:<br>
/// <pre>
/// 		USER>>set commandprefix = .
/// </pre>
/// <br>
/// Once the command prefix is set, all commands must be prefixed by the value of the commandprefix setting. There are three exceptions - <b>?</b>, <b>#</b> and <b>GO</b> do
/// not have to be prefixed.</p>
/// <p>
/// The <b>commandprefix</b> option is saved by the <b>set save</b> command and, if saved, will be restored automatically the next time the user starts the shell. By default there is no
/// <b>commandprefix</b>. To reset the command prefix back to the default once it has been set to something else, enter:<br>
/// <pre>
/// 		USER>>set commandprefix = ""
/// </pre>
/// </p>
/// <p>Shell context settings are set by the <b>set</b> command. Context settings can be retained and used by future instances of the shell by entering <b>set save</b> and
/// cleared by entering <b>set clear</b>. Entering <b>set</b> without any additional qualifiers will display the current shell context settings.</p>
/// 	<p>To execute an SQL statement, type it in and press ENTER.</p>
/// 	<p>To execute a multiline SQL statement, press ENTER to enter multiline mode, type in the statement, and enter <var>go</var>.</p>
/// 	<p>Available commands:</p>
/// <p><table cols=2 border=1>
/// 		<tr>
/// 				<td width="20%" valign="top">Press ENTER</td>
/// 				<td width="50%" valign="top">Enter multiline statement mode. While in multiline
/// 							statement mode, some basic commands are supported.
/// 							<p>
/// 								<table cols=2 border=1>
/// 									<tr><td width="20%" valign="top">c[lear]</td><td width="50%" valign="top">
/// 											Clear all statement lines entered.
/// 										</td>
/// 									</tr>
/// 									<tr><td width="20%" valign="top">c[lear] <var>line nbr</var></td><td width="50%" valign="top">
/// 											Clear line <var>line nbr</var>.
/// 										</td>
/// 									</tr>
/// 									<tr><td width="20%" valign="top">g[o]</td><td width="50%" valign="top">
/// 											Exit multiline statement mode. If <var>EXECUTEMODE</var>
/// 										is immediate then execute the statement. The result is displayed
/// 											after execution.
/// 										</td>
/// 									</tr>
/// 									<tr><td width="20%" valign="top">l[ist]</var></td><td width="50%" valign="top">
/// 											List the statement lines entered.
/// 										</td>
/// 									</tr>
/// 									<tr><td width="20%" valign="top">q[uit]</td><td width="50%" valign="top">
/// 											Exit multiline statement mode and discard any statement lines.
/// 										</td>
/// 									</tr>
/// 	 								<tr>
/// 	 									<td width="20%" valign="top">
/// 	 										<table cols=1 border=0>
/// 	 										<tr>
/// 	 											<td>?</td>
/// 	 											</tr>
/// 	 										<tr>
/// 	 											<td>help</td>
/// 	 											</tr>
/// 	 										</table>
/// 	 									</td>
/// 	 									<td width="50%" valign="top">
///  											Display statement mode help.
/// 							 			</td>
/// 									</tr>
/// 								</table>
/// 							</p>
/// 					</td>
/// 				</tr>
/// 	<tr><td width="20%" valign="top"><var>SQL Statement</var></td><td width="50%" valign="top">Prepare the statement. If <var>EXECUTEMODE</var>
/// is immediate then execute the statement. The result is displayed after execution.</td></tr>
/// 		<tr>
/// 			<td width="20%" valign="top">
/// 				<table cols=1 border=0>
/// 				<tr>
/// 					<td><b>?</b></td>
/// 					</tr>
/// 				<tr>
/// 					<td><b>help</b></td>
/// 					</tr>
/// 				</table>
/// 			</td>
/// 			<td width="50%" valign="top">
/// 				Display help.
/// 			</td>
/// 		</tr>
/// 	<tr><td width="20%" valign="top"><b>#</b></td><td width="50%" valign="top">List statements currently in the history buffer.</td></tr>
/// 	<tr>
/// 			<td width="20%" valign="top"><b>#</b><var>nbr</var></td>
/// 			<td width="50%" valign="top">
/// 				Recall statement <var>nbr</var> from the statement history buffer. If <var>nbr</var> is zero then recall the most recent statement.
/// 				Recalled statements are executed if <var>EXECUTEMODE</var> is set to 'immediate'.
/// 				If <var>EXECUTEMODE</var> is set to 'deferred' then it is necessary to enter <var>GO</var> to execute the recalled statement.
/// 			</td>
/// 		</tr>
/// 	<tr><td width="20%" valign="top"><b>#?</b></td><td width="50%" valign="top">List statements currently in the history buffer.</td></tr>
/// 	<tr><td width="20%" valign="top"><b>#clear</b></td><td width="50%" valign="top">Clear the statement history buffer.</td></tr>
/// 		<tr>
/// 			<td width="20%" valign="top">
/// 				<b>c[lear]</b> <var>name</var>
/// 			</td>
/// 			<td width="50%" valign="top">
/// 				Clear (delete) the statement identified by <var>name</var> from the statement pool.
/// 			</td>
/// 		</tr>
/// 	<tr><td width="20%" valign="top"><b>!</b> <var>objectscript_command</var></td><td width="50%" valign="top">Execute <var>objectscript_command</var>.</td></tr>
/// 	<tr><td width="20%" valign="top"><b>g[o]</b></td><td width="50%" valign="top">Run the most recently executed or loaded statement.</td></tr>
/// 	<tr><td width="20%" valign="top"><b>l[ist]</b></td><td width="50%" valign="top">List statements in the statement pool.</td></tr>
/// 	<tr><td width="20%" valign="top"><b>load</b> <var>filename</var></td><td width="50%" valign="top">Load a statement from <var>filename</var>.</td></tr>
/// 	<tr><td width="20%" valign="top"><b>m[etadata]</b></td><td width="50%" valign="top">Displays the metadata for the current statement.</td></tr>
/// 	<tr><td width="20%" valign="top"><b>obj[ectscript]</b> <var>objectscript_command</var></td><td width="50%" valign="top">Execute <var>objectscript_command</var>.</td></tr>
/// 	<tr><td width="20%" valign="top"><b>o[pen]</b> <var>name</var></td><td width="50%" valign="top">Open the statement name <var>name</var> from the statement pool. The retrieved statement
/// 		is prepared and executed (depending on the EXECUTEMODE setting).</td></tr>
/// 		<tr>
/// 			<td width="20%" valign="top">
/// 				<table cols=1 border=0>
/// 				<tr>
/// 					<td><b>q[uit]</b></td>
/// 					</tr>
/// 				<tr>
/// 					<td><b>e[xit]</b></td>
/// 					</tr>
/// 				</table>
/// 			</td>
/// 			<td width="50%" valign="top">
/// 				Exit the shell.
/// 			</td>
/// 		</tr>
/// 	<tr><td width="20%" valign="top"><b>run</b> [<var>filename</var>]</td><td width="50%" valign="top">Run an SQL script. If <filename> is not specified then the user will be prompted for the file name.</td></tr>
/// 	<tr><td width="20%" valign="top"><b>saveglobal</b>|<b>sg</b> <var>name</var></td><td width="50%" valign="top">Save the currently prepared statement in the statement global using the given <var>name</var>.</td></tr>
/// 	<tr><td width="20%" valign="top"><b>s[ave]</b> <var>filename</var></td><td width="50%" valign="top">Save the currently prepared statement to <var>filename</var>.</td></tr>
/// 	<tr>
/// 				<td width="20%" valign="top"><b>set</b></td>
/// 				<td width="50%" valign="top">
/// 					Display the current context settings.</td>
/// 			</tr>
/// 		<tr>
/// 				<td width="20%" valign="top"><b>set clear</b></td>
/// 				<td width="50%" valign="top">
/// 					Clear the saved Shell settings for this user.
/// 				</td>
/// 			</tr>
/// 	<tr>
/// 			<td width="20%" valign="top"><b>set colalign</b> [=] <var>delim[iter]</var> | <var>header</var> | <var>data</var></td>
/// 			<td width="50%" valign="top">
/// 				Set column alignment for the SQL Resultset. The context setting <var>colalign</var> can be set to one of the following values:
///                    <ul style="margin-top: 0px; margin-bottom: 0px">
///                       <li><var>delim[iter]</var> - The SQL Resultset header/data columns will be aligned based on the standard delimiter (tab).  [<b>Default</b>]</li>
///                       <li><var>header</var> - The SQL Resultset header/data columns will be aligned based on the length of the column header and the standard delimiter (tab).</li>
///                       <li><var>data</var> - The SQL Resultset header/data columns will be aligned based on the precision/length of the column data property and the standard delimiter (tab).</li>
///                    </ul>
/// 			</td>
/// 	</tr>
/// 	<tr>
/// 				<td width="20%" valign="top"><b>set commandprefix</b> [=] <var>string value</var></td>
/// 				<td width="50%" valign="top">
/// 					Sets the command prefix to <var>string value</var>. To set the command prefix to nothing, enter <var>""</var> as the string value.
/// 				</td>
/// 		</tr>
/// 	<tr>
/// 				<td width="20%" valign="top"><b>set dialect</b> [=] <var>sybase | mssql | IRIS</var></td>
/// 				<td width="50%" valign="top">
/// 					Sets the dialect to the desired SQL dialect. If <var>schemalist</var> is empty then IRIS SQL is assumed.
/// 					The dialect setting determines which dialect mode is used when preparing a statement.
/// 				</td>
/// 		</tr>
/// 	<tr>
/// 			<td width="20%" valign="top"><b>set displayfile</b> [=] <var>file</var></td>
/// 			<td width="50%" valign="top">
/// 				Set the name of the file to be used for displaying the results of executing SQL statements. If no file name is specified
/// 					then a random file name will be generated for each statement execution. Additionally, a messages file may be produced. The
/// 					name of the file containing messages is either the <var>file</var> concatenated with "Messages" or it is a random file name
/// 					if <var>file</var> is set to nothing. To set the <var>file</var> setting to nothing after it was previously set, enter "".
/// 				</td>
/// 		</tr>
/// 	<tr>
/// 			<td width="20%" valign="top"><b>set displaymode</b> [=] <var>displaymode</var></td>
/// 			<td width="50%" valign="top">
/// 				Set the DISPLAYMODE. If <var>displaymode</var> is not specified, the current DISPLAYMODE setting is displayed on the current device.
/// 				<var>displaymode</var> values can be <b>cur[rentdevice]</b>,<b>xml</b>,<b>html</b>,<b>pdf</b>, or <b>txt</b>. When DISPLAYMODE is set to
/// 				CURRENTDEVICE, statement results are displayed on the current device. When XML, HTML, PDF or TXT are specified then statement results are written
/// 				to a temporary file using a ZEN Report that is generated from the statement metadata.
/// 				</td>
/// 		</tr>
/// 	<tr>
/// 			<td width="20%" valign="top"><b>set displaypath</b> [=] <var>path</var></td>
/// 			<td width="50%" valign="top">
/// 				Set the path where files used to save statement results will be placed.
/// 				</td>
/// 		</tr>
/// 	<tr>
/// 			<td width="20%" valign="top"><b>set displaytranslate[table]</b> [=] <var>translatetable</var></td>
/// 			<td width="50%" valign="top">
/// 				Set the translate table used for <var>displayfile</var> when writing output in 'csv' and 'txt' formats.
/// 				For example, "UTF8". Values are case sensitive.
/// 				</td>
/// 		</tr>
/// 	<tr>
/// 			<td width="20%" valign="top"><b>set executemode</b> [=] <var>executemode</var></td>
/// 			<td width="50%" valign="top">
/// 			Set EXECUTEMODE to <var>executemode</var>. Valid values are <b>immediate</b> and <b>deferred</b>.
/// 				If <var>immediate</var> then SQL statements are executed immediately. If <var>deferred</var> then the current statement
/// 				is executed by entering a 'go' command. If <var>executemode</var> is not specified then the current EXECUTEMODE
/// 				setting is displayed.
/// 				</td>
/// 		</tr>
/// 	<tr>
/// 			<td width="20%" valign="top"><b>set log</b> [=] on | off | <var>file</var></td>
/// 			<td width="50%" valign="top">
/// 				Turn logging on or off. If a <var>file</var> is specified, logging is turned on and the log is written to the file specified.
/// 				The default file for logging is used if logging is simply turned 'on'.
/// 			</td>
/// 		</tr>
/// 	<tr>
/// 			<td width="20%" valign="top"><b>set messages</b> [=] on | off</td>
/// 			<td width="50%" valign="top">
/// 				Turn messages on or off. If <var>messages</var> is off then results are displayed without any additional information. Times are
/// 					not displayed.
/// 			</td>
/// 		</tr>
/// 	<tr>
/// 				<td width="20%" valign="top"><b>set path</b> [=] <var>schemalist</var></td>
/// 				<td width="50%" valign="top">
/// 					Sets the current schema search path. If <var>schemalist</var> is empty then the current path is displayed.
/// 					To set PATH to the default schema then specify <var>schemalist</var> as """".
/// 					</td>
/// 		</tr>
/// 	<tr>
/// 				<td width="20%" valign="top"><b>set save</b></td>
/// 				<td width="50%" valign="top">
/// 					Save the current Shell settings for this user. The settings are restored when the current user
/// 					starts another Shell session.
/// 				</td>
/// 		</tr>
/// 	<tr>
/// 				<td width="20%" valign="top"><b>set selectmode</b> [=] <var>selectmode</var></td>
/// 				<td width="50%" valign="top">
/// 					Sets the current SELECTMODE to <b>odbc</b>, <b>logical</b>, or <b>display</b>.
/// 					If <var>selectmode</var> is NULL the current setting is displayed.</td>
/// 			</tr>
/// 	<tr>
/// 				<td width="20%" valign="top"><b>show [pl[an]] [v[erbose]]</b></td><td width="50%" valign="top">
/// 					Show the execution plan for the current statement.
/// 					<br/>If the <b>verbose</b> qualifier is used, show all the module details for the current statement's execution plan; Otherwise, display only the top-level module details by default.</td>
/// 			</tr>
/// 	<tr>
/// 				<td width="20%" valign="top"><b>show planalt [v[erbose]]</b></td><td width="50%" valign="top">
/// 					Run the ShowPlanAlt() method on the the current statement which allows user to browse alternate execution plans.
/// 					<br/>If the <b>verbose</b> qualifier is used, show all the module details for the current statement's execution plan and all alternate plans; Otherwise, display only the top-level module details by default.</td>
/// 			</tr>
/// 	<tr>
/// 				<td width="20%" valign="top"><b>show st[atement]</b></td><td width="50%" valign="top">
/// 					Show the current statement text and other details such as the implementation class.</td>
/// 			</tr>
/// </table></p>
Class %SQL.Shell Extends %Library.RegisteredObject [ System = 4 ]
{

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
Method %OnNew(initvalue As %RawString) As %Status [ Internal, Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Property Statement As %SQL.Statement;

Property StatementNbr As %Integer;

/// <p>
/// <property>ColAlign</property> represents the column alignment for the SQL Resultset, and can be set to one of the following values:
///    <ul style="margin-top: 0px; margin-bottom: 0px">
///       <li><var>delim[iter]</var> - The SQL Resultset header/data columns will be aligned based on the standard delimiter (tab).  [<b>Default</b>]</li>
///       <li><var>header</var> - The SQL Resultset header/data columns will be aligned based on the length of the column header and the standard delimiter (tab).</li>
///       <li><var>data</var> - The SQL Resultset header/data columns will be aligned based on the precision/length of the column data property and the standard delimiter (tab).</li>
///    </ul>
/// <pre>
/// USER>>set colalign [=] delim[iter]
/// USER>>set colalign [=] header
/// USER>>set colalign [=] data
/// </pre>
Property ColAlign As %Integer(DISPLAYLIST = ",delimiter,header,data", VALUELIST = ",0,1,2") [ InitialExpression = 0 ];

Property StatementText As %Library.String(MAXLEN = "") [ MultiDimensional ];

/// <p>CommandPrefix is the string value used to indicate that a command is being entered. The default value is null, meaning
/// that no command prefix is in use. If CommandPrefix is set to a non-empty value then that prefix must be entered as a prefix
/// to most commands.  There are three commands that do not require a prefix: <var>?</var>, <var>#</var> and <var>GO</var>.</p>
/// <pre>
/// USER>>set commandprefix = /
/// USER>>/set save
/// USER>>/quit
/// </pre>
Property CommandPrefix As %String(MAXLEN = 10);

/// Dialect is the dialect of SQL to be used when preparing a statement. Supported dialects are IRIS (default), Sybase and MS SQL Server.
Property Dialect As %Library.String;

Method DialectSet(pValue As %String = "") As %Status
{
}

/// DisplayMode is the format in which results are displayed.
Property DisplayMode As %Integer(DISPLAYLIST = ",currentdevice,xml,html,pdf,txt,csv", VALUELIST = ",-1,0,1,2,99,100") [ InitialExpression = -1 ];

Property DisplayDelimiter As %String;

Property DisplayPath As %Library.String(MAXLEN = "");

Property DisplayFile As %Library.String(MAXLEN = "");

Property DisplayTranslateTable As %Library.String(MAXLEN = "");

/// EchoMode is either on (not zero) or off (zero). If on, statements and results are echoed to the current device.
/// This setting does not impact logging.
Property EchoMode As %Integer(DISPLAYLIST = ",off,on", VALUELIST = ",0,1") [ InitialExpression = 1 ];

/// EscapeCondition is the argument to an ObjectScript IF condition which must evaluate to TRUE in order to execute ObjectScript commands from the shell
/// The process running the SQL Shell must also be in programmer mode, not application mode.
/// When IF <EscapeCondition> evaluation results in an error, executing ObjectScript commands will not be allowed.
Property EscapeCondition As %String(MAXLEN = "");

Property EscapeAllowed As %Boolean [ Internal, Private ];

/// ExecuteMode defines when the current statement will be executed. If ExecuteMode is 'immediate' then each statement is executed as
/// so as it is prepared. If ExecuteMode is 'deferred' then the statement is prepared but not executed until a 'GO' command is entered.
Property ExecuteMode As %Integer(DISPLAYLIST = ",deferred,immediate", VALUELIST = ",0,1") [ InitialExpression = 1 ];

/// executeStartTime is the time the statement execute started. This is reset during execute() after parameter values are entered.
/// The execute time is computed after %Display() is complete and displayed after the rowcount and SQLCODE.
Property executeStartTime As %Time;

/// Used to compute how many lines this query executes, global reads and disk latency
Property executeStats As %List;

/// Log instance. This is an oref that references a log object to be used when logging statements, messages, and results.
Property Log As %XSQL.Log;

/// Either on or off. If on then statements, messages and results will be logged using the current Log value.
Property LogMode As %Integer(DISPLAYLIST = ",off,on", VALUELIST = ",0,1") [ InitialExpression = 0 ];

/// MessageMode is either on (not zero) or off (zero). If on, messages will be displayed on the current device.
/// This does not impact the LogMode setting.
Property MessageMode As %Integer(DISPLAYLIST = ",off,on", VALUELIST = ",0,1") [ InitialExpression = 1 ];

/// Path is the schema search path used when resolving unqualified names.
Property Path As %String(MAXLEN = "");

/// prepareTime is the time is took to prepare the most recent statement.
Property prepareTime As %Time;

/// Used to compute how many lines this query executes, global reads and disk latency
Property prepareStats As %List;

/// SelectMode defines the format of literals and column values when executing an SQL statement.
Property SelectMode As %Integer(DISPLAYLIST = ",logical,odbc,display", VALUELIST = ",0,1,2") [ InitialExpression = 0 ];

/// %Go() - instantiate the shell and prompt for commands.
ClassMethod %Go(pDialect As %String) [ PublicList = SQLCODE ]
{
}

Method dispatcher(ByRef pInput As %Library.String = "") [ PublicList = SQLCODE ]
{
}

Method processCache(ByRef pInput As %Library.String = "", pCommand As %Library.String(MAXLEN="") = "")
{
}

/// cmdObjectScript will execute a object script command
Method cmdObjectScript(ByRef pInput As %Library.String(MAXLEN="") = "")
{
}

Method cmdGo()
{
}

/// Display the current statement's metadata.
Method cmdMetadata(ByRef pInputLC As %Library.String(MAXLEN="") = "")
{
}

/// Open (retrieve) a statement from the SQL statement pool.
Method cmdOpen(ByRef pInput As %Library.String(MAXLEN="") = "")
{
}

Method cmdProcessStatement(ByRef pInput As %Library.String(MAXLEN="") = "")
{
}

Method cmdSaveGlobal(ByRef pInput As %Library.String(MAXLEN="") = "")
{
}

Method cmdSet(ByRef pInputLC As %Library.String(MAXLEN="") = "", pInput As %Library.String(MAXLEN=""))
{
}

Method cmdShow(ByRef pInputLC As %Library.String(MAXLEN="") = "", pCommand As %Library.String = "")
{
}

Method execute(pStatement As %SQL.Statement) As %SQL.StatementResult
{
}

ClassMethod cmdLoad(pInput As %String(MAXLEN=""), ByRef pStatement As %String(MAXLEN=""))
{
}

Method cmdSave(pInput As %String(MAXLEN=""))
{
}

/// EnterStatement - multi-line statement entry
Method EnterStatement(ByRef pInput As %Library.String(MAXLEN="") = "")
{
}

ClassMethod parseSet(pCommand As %String(MAXLEN="") = "", ByRef pOption As %String(MAXLEN="") = "", ByRef pValue As %String(MAXLEN="") = "") As %Status [ Internal ]
{
}

ClassMethod displayStatement(ByRef pStatement As %Library.String(MAXLEN=""), pIndentFirst As %Library.String = {$Char(9)}, pIndent As %Library.String = {$Char(9)})
{
}

ClassMethod Help()
{
}

ClassMethod HelpStatementMode()
{
}

/// cmdRun will run a SQL script file - Currently only Sybase is supported.
Method cmdRun(ByRef pInput As %Library.String(MAXLEN="") = "")
{
}

/// This method displays the result produced by executing the current statement. DISPLAYMODE determines how the statement is displayed
/// and ECHOMODE suppresses the results display on the current device.
Method displayResult(pResult As %SQL.StatementResult = "")
{
}

/// getPrompt() returs the string to use for the prompt based on the configured Terminal Prompt settings
ClassMethod getPrompt(lasttime As %Library.String = "0.0")
{
}

/// Given a string, display the string on this, and as many lines needed, between the given margins.
ClassMethod display(str As %String, lmargin As %Integer = 25, rmargin As %Integer = 80)
{
}

}
