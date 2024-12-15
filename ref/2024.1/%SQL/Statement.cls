/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25SQL.Statement">Using Dynamic SQL</a>.</p>
/// <p>The sample class mentioned here (Sample.Person) is part of <a target="_top" href="https://github.com/intersystems/Samples-Data">https://github.com/intersystems/Samples-Data.</a>
/// See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=landing+githubsamples">Downloading Samples</a>.</p>
/// <p><class>%SQL.Statement</class> implements an interface to prepare and execute dynamic SQL statements. </p>
/// <h2>Dynamic SQL</h2>
/// <p>The %SQL.Statement class implements an interface for managing dynamic SQL statements. The interface consists of the
/// <method>%Prepare</method>, <method>%Execute</method>, <method>%ExecDirect</method> methods and the
/// <property>%Dialect</property>, <property>%Metadata</property>, <property>%SchemaPath</property>, and <property>%SelectMode</property> properties.
/// </p>
/// <p>To prepare and execute a dynamic SQL statement, use an instance of %SQL.Statement, such as:
/// </p>
/// <example>
///  set tStatement = ##class(%SQL.Statement).%New(2,"Sample")
/// </example>
/// <p><method>%New</method> accepts three optional parameters as follows:</br></br>
/// %New(selectmode,schemapath,dialect) where <i>selectmode</i> is one of the allowed values of the %SelectMode property of this class, <i>schemapath</i> is one of the allowed values of the %SchemaPath property of this class, and <i>dialect</i> is one of the allowed values of the %Dialect property of this class.</br></br>
/// You can explicitly set these properties at any time; the value of each affects subsequent statement preparation and execution.
/// </p>
/// <p>Next, prepare the dynamic statement by invoking the <method>%Prepare</method> method. %Prepare() accepts an SQL statement in the form of a simple value or in an array passed by reference. For an array, the value of the base node is the number of lines in the array and each node&rsquo;s subscript specifies its line number; the value of each subnode is a portion of the SQL statement. An example of preparing an array is:
/// </p>
/// <example>
///  set tSQL = 3
///  set tSQL(1) = "select %ID as id, Name, DOB, Home_State"
///  set tSQL(2) = "from Person where Age > 80"
///  set tSQL(3) = "order by 2"
///  set tStatus = tStatement.%Prepare(.tSQL)
/// </example>
/// <p><method>%Prepare</method> returns a status value that indicates success or failure. If the statement is successfully prepared, the next step is to execute it by invoking the <method>%Execute</method> method.
/// </p>
/// <example>
///  set tResult = tStatement.%Execute()
/// </example>
/// <p>The <method>%Execute</method> method returns an instance of the <class>%SQL.StatementResult</class> class. Refer to that class for more information
/// on the result object interface. All result objects support a %Display() method that is useful for testing.
/// </p>
/// <p>The following example demonstrates the use of the %Prepare(), %Execute, and %Display() methods:
/// </p>
/// <pre>
///  SAMPLES>s tStatus = tStatement.%Prepare(.tSQL)
///
///  SAMPLES>w tStatus
///  1
///  SAMPLES>s tResult = tStatement.%Execute()
///
///  SAMPLES>d tResult.%Display()
///  id    Name                  DOB           Home_State
///  99    Finn,George V.        03/23/1928    MA
///  140   Hanson,James K.       04/02/1928    VT
///  14    Klein,Michael X.      06/17/1923    WV
///  159   Klingman,Brenda U.    07/09/1924    WA
///  49    Paladino,Rhonda H.    06/29/1923    AR
///  63    Vonnegut,Nellie K.    03/24/1926    HI
///  146   Zimmerman,Martin K.   05/25/1924    OH
///
///  7 Rows(s) Affected
/// </pre>
/// <p>Once an SQL statement has been successfully prepared, its <property>%Metadata</property> property is available. %Metadata is an instance of the <class>%SQL.StatementMetadata</class> class. %SQL.Metadata implements a %Display() method that is useful for examining the metadata interactively, such as:
/// </p>
/// <pre>
///  SAMPLES>do tStatement.%Metadata.%Display()
///  Columns (property 'columns'):
///  Column Name  Type Prec Scale Null
///  -----------  ---- ---- ----- ----
///  id              4   10     0    0 id           Person       Sample       0            Y  N  N  Y0    1
///  Name           12   50     0    0 Name         Person       Sample       0            N  N  N  N0    0
///  DOB             9   10     0    1 DOB          Person       Sample       0            N  N  N  N0    0
///  Home_State     12    2     0    1 Home_State   Person       Sample       0            N  N  N  N0    0
///
///  Statement Parameters (property 'parameters'):
///
///  Nbr. Type precision scale nullable colName      columntype
///  ---- ---- --------- ----- -------- ------------ ----------
///     1    4     10        0     1    %parm(1)        1
///     2   12      2        0     1    %parm(2)        1
///
///  Formal Parameters (property 'formalParameters'):
///
///  Nbr. Type precision scale nullable colName      columntype
///  ---- ---- --------- ----- -------- ------------ ----------
///     2    4     10        0     1    %parm(1)        1
///     2   12      2        0     1    %parm(2)        1
///
///  Objects:
///
///  Column Name    Extent    ExportCall
///  -----------    ------    ----------
///  %%ID        Sample.Person    %QuickLoad^Sample.Person.T1(%rowid,%nolock,0,0,1)
///  SAMPLES>
/// </pre>
/// <p>You can execute a successfully prepared statement repeatedly. This is most useful when the statement includes parameters, where a parameter is defined in the SQL statement source by a question mark (&ldquo;?&rdquo;). A statement may include an arbitrary number of parameters. (There are system limitations that limit the number of dynamic parameters; up to 200 are always supported.)
/// </p>
/// <p>The <method>%Execute</method> method accepts parameter values in the order in which they appear in the source statement.  For example:
/// </p>
/// <pre>
///  SAMPLES>set tSQL=3
///
///  SAMPLES>set tSQL(1)="select %ID as id,Name,DOB,Home_State"
///
///  SAMPLES>set tSQL(2)="from Person where Age > ? and Home_State = ?"
///
///  SAMPLES>set tSQL(3)="order by 2"
///
///  SAMPLES>set tStatus = tStatement.%Prepare(.tSQL)
///
///  SAMPLES>set tResult = tStatement.%Execute(80,"VT")
///
///  SAMPLES>do tResult.%Display()
///  id     Name                DOB           Home_State
///  140    Hanson,James K.     04/02/1928    VT
///
///  1 Rows(s) Affected
///  SAMPLES>set tResult = tStatement.%Execute(50,"VT")
///
///  SAMPLES>do tResult.%Display()
///  id     Name                DOB           Home_State
///  3      Eagleman,Emilio N.  09/01/1946    VT
///  140    Hanson,James K.     04/02/1928    VT
///  167    Hertz,Keith O.      01/01/1952    VT
///
///  3 Rows(s) Affected
///  SAMPLES>
/// </pre>
/// <p>You can also use the same statement object for many different statements by simply invoking <method>%Prepare</method> with the new statement. This is because %Prepare() initializes the statement&rsquo;s execution plan and metadata.  Also, an arbitrary number of statement objects can coexist in the same process.
/// </p>
/// <p>You can also prepare and execute dynamic SQL statements by calling <method>%ExecDirect</method>. This method prepares the statement and, if it prepares the statement successfully, executes it with the supplied argument values. An optional by-reference parameter returns an instance of %SQL.Statement; this instance contains the currently prepared statement. You can then execute that statement instance just as if it had been instantiated by invoking %New() followed by a call to %Prepare(). You can also use that statement instance to prepare other dynamic statements just as if it were instantiated by %New().
/// </p>
/// <p>If an error occurs during either statement preparation or execution, then the error is described in the result object properties of %SQLCODE and %Message. Always check the result property %SQLCODE for an error following %Execute() and %ExecDirect().
/// </p>
/// <pre>
///  SAMPLES>set tResult = ##class(%SQL.Statement).%ExecDirect(.tStatement,"select name,age from Sample.Person where age > ? and home_state = ?",50,"VT")
///
///  SAMPLES>write tResult.%SQLCODE
///  0
///  SAMPLES>do tResult.%Display()
///  Name                  Age
///  Eagleman,Emilio N.    62
///  Hanson,James K.       81
///  Hertz,Keith O.        57
///
///  3 Rows(s) Affected
///
///  SAMPLES>write tStatement
///
///  1@%SQL.Statement
///
///  SAMPLES>set tResult = tStatement.%Execute(40,"AK")
///
///  SAMPLES>do tResult.%Display()
///  Name                  Age
///  Finn,Quentin O.       66
///
///  1 Rows(s) Affected
///
///  SAMPLES>
/// </pre>
Class %SQL.Statement Extends %Library.RegisteredObject [ ClientDataType = HANDLE, Final, System = 4 ]
{

/// <property>%Dialect</property> defines the SQL dialect used to prepare dynamic SQL statements. Valid values are
/// IRIS, MSSQLSERVER, MSSQL, and SYBASE. The default is IRIS. Support for MSSQLSERVER and SYBASE dialects is limited
/// to a subset of the TSQL grammar supported by the InterSystems IRIS TSQL language mode.
Property %Dialect As %String;

Method %DialectSet(pValue As %String = "") As %Status
{
}

/// %ObjectSelectMode allows you to specify how columns whose type class is a swizzleable class
/// will be defined in the result set class generated from a SELECT statement.
/// <ul>
/// <li>If %ObjectSelectMode
/// is false (the default), then the property corresponding to the swizzleable column will be defined
/// in result sets as a simple literal type corresponding to the SQL table's ROWID type.</li>
/// <li>If %ObjectSelectMode is true, then the property will be defined with the column's declared type. That
/// means that accessing the result set property will trigger swizzling.</li>
/// </ul>
Property %ObjectSelectMode As %Library.Boolean [ InitialExpression = 0 ];

/// <p>%SchemaPath provides a list of schema names for resolving unqualified
/// names during statement preparation. By default, its value is null; to set
/// its value, use a comma-delimited list of schema names:</p>
///
/// <example>
/// Set %SQL.Statement.%SchemaPath = "My_Schema,Your_Schema,DEFAULT_SCHEMA"
/// </example>
///
/// <p>This is equivalent to the macro-preprocessor directive for embedded
/// SQL:</p>
///
/// <example>
/// #sqlcompile PATH = My_Schema,Your_Schema,DEFAULT_SCHEMA
/// </example>
///
/// <p>PATH is a search path: if the unqualified name is found in a schema
/// in the PATH, then this schema is used to qualify the name and no further
/// searching is performed.<p>
///
/// <p>You can set the value of %SchemaPath at any time, but it is only used
/// by the %Prepare method.</p>
///
/// <p>%SchemaPath can contain special schema name tokens that are resolved
/// by the SQL compiler. Special tokens are:</p>
///
/// <ul>
/// <li>CURRENT_SCHEMA is the current default schema. If the <class>%SQL.Statement</class>
/// call is defined in a class method, CURRENT_SCHEMA is
/// the  schema mapped to the current class package. If the statement is
/// defined in a .MAC routine, CURRENT_SCHEMA is the configuration default
/// schema.</li>
/// <li>CURRENT_PATH is the currently defined schema search path. You can
/// use this to add an additional schema to the search path while retaining
/// the current search path.</li>
/// <li>DEFAULT_SCHEMA specifies the use of the system-defined default
/// schema.</li>
/// </ul>
///
/// <p>You can also set %SchemaPath to a PATH value that is constructed from
/// a given class definition; simply set %SchemaPath to
/// ##class(%SQL.Statement).%ClassPath(classname).</p>
Property %SchemaPath As %String(MAXLEN = "");

/// This property is set on instantiation to the current select mode as returned by $system.SQL.GetSelectMode();
/// see <class>%SYSTEM.SQL</class>.
/// You can set this property directly. The statement object uses this property to establish the
/// SQL SELECTMODE value used by dynamic statements.
/// <br>
/// Possible values are:
/// <ul>
/// <li> 0 for LOGICAL mode.</li>
/// <li> 1 for ODBC mode.</li>
/// <li> 2 for DISPLAY mode.</li>
/// </ul>
Property %SelectMode As %Library.String [ InitialExpression = {$zu(115,5)} ];

/// %StatementActualArgs are the actual values bound to formal statement arguments.
/// This value is established during %Prepare from the %StatementArgs value. This value is used
/// to form the actual arguments passed when executing the currently prepared statement. The value
/// of %StatementActualArgs includes and literals and host variables replaced during preparsing
/// as well as the local variables used to hold actual parameter values passed to %Execute. We use
/// two types of locals - %parm(parameter_ordinal_position) for non-CALL statements and
/// parm_parameter_ordinal_position (for example, parm1 for the first '?') for CALL statements.
/// The reason for the difference is that we need to preserve 'undefinedness' of parameters passed
/// to SQL invoked routines.
Property %StatementActualArgs As %String(MAXLEN = "") [ Internal, Private ];

/// This property is used to set %msqlvars during the compilation of the cached query.
/// If defined, %msqlvars will be placed into the cached query methods as
/// 		#EXECUTE set %msqlvar=<%msqlvar>
Property %msqlvar As %String [ Internal ];

/// This property is for xDBC DialectExecuteParameter to define the sqlBatch method with the proper formalspec
/// This property is for internal use only
Property %DialectParameterMetadata As %String [ Internal ];

/// This property is used to keep track of RTPC runtime cached query name for
/// the query that triggers RTPC
Property %RTPCRuntimeCQName As %String;

Method bindArguments(ByRef pActual As %String(MAXLEN=""), ByRef %CallArgs As %String) As %Integer [ Internal, Private ]
{
}

/// statementArgs are literals, host variables (not supported here), and parameters (as ?)
/// This value is established during preparsing and is a $list consisting of n*2 elements
/// where 'n' is the number of arguments discovered by the preparser. For a non-empty list,
/// the first element of the list is the argType and the second is the argValue for the first
/// argument discovered. This structure repeats for each argument. Arguments are either constants,
/// (argType = 'C', argValue is a literal), host variables (argType = 'V', argValue
/// is a legal COS identifier), or replacable parameter (argType = '?', argValue = '?').
/// This value is processed during %Prepare to construct the %StatementActualArgs value. This value
/// is retained for metadata reporting as the actual statement prepared might have a different formal
/// argument specification.
Property %StatementArgs As %String(MAXLEN = "") [ Internal, Private ];

Property %StatementArgCount As %Integer [ InitialExpression = 0, Internal, Private ];

Property %PreparedStatement As %ObjectHandle [ Internal, Private ];

Method %PreparedStatementSet(pPS As %ObjectHandle) As %Status [ ServerOnly = 1 ]
{
}

Property %StatementGUID As %Binary [ Internal, Private ];

Property %StatementHash As %Binary [ Internal, Private ];

/// %Metadata is the statement descriptor. It is an instance of <class>%SQL.StatementMetadata</class>.
Property %Metadata As %SQL.StatementMetadata;

/// Internal property containing the actual SQL statement submitted to prepare().
Property %StatementText As %String(MAXLEN = "") [ Internal, MultiDimensional, Private ];

/// <p>Integer value indicating the type of statement.</p>
/// <table>
/// 	<tr><td>1</td><td>SELECT</td></tr>
/// 	<tr><td>2</td><td>INSERT (also 'INSERT OR UPDATE')</td></tr>
/// 	<tr><td>3</td><td>UPDATE</td></tr>
/// 	<tr><td>4</td><td>DELETE</td></tr>
/// 	<tr><td>5</td><td>COMMIT</td></tr>
/// 	<tr><td>6</td><td>ROLLBACK</td></tr>
/// 	<tr><td>7</td><td>GRANT</td></tr>
/// 	<tr><td>8</td><td>REVOKE</td></tr>
/// 	<tr><td>9</td><td>CREATE TABLE</td></tr>
/// 	<tr><td>10</td><td>ALTER TABLE</td></tr>
/// 	<tr><td>11</td><td>DROP TABLE</td></tr>
/// 	<tr><td>12</td><td>CREATE VIEW</td></tr>
/// 	<tr><td>13</td><td>ALTER VIEW</td></tr>
/// 	<tr><td>14</td><td>DROP VIEW</td></tr>
/// 	<tr><td>15</td><td>CREATE INDEX</td></tr>
/// 	<tr><td>16</td><td>ALTER INDEX (Not supported)</td></tr>
/// 	<tr><td>17</td><td>DROP INDEX</td></tr>
/// 	<tr><td>18</td><td>CREATE ROLE</td></tr>
/// 	<tr><td>19</td><td>DROP ROLE</td></tr>
/// 	<tr><td>20</td><td>SET TRANSACTION</td></tr>
/// 	<tr><td>21</td><td>START TRANSACTION</td></tr>
/// 	<tr><td>22</td><td>%INTRANSACTION</td></tr>
/// 	<tr><td>23</td><td>%BEGTRANS (Alias for START TRANSACTION)</td></tr>
/// 	<tr><td>24</td><td>%INTRANS (Alias for %INTRANSACTION)</td></tr>
/// 	<tr><td>25</td><td>GET (Not supported)</td></tr>
/// 	<tr><td>26</td><td>SET OPTION</td></tr>
/// 	<tr><td>27</td><td>STATISTICS (UPDATE STATISTICS, not supported))</td></tr>
/// 	<tr><td>28</td><td>%CHECKPRIV</td></tr>
/// 	<tr><td>29</td><td>CREATE USER</td></tr>
/// 	<tr><td>30</td><td>ALTER USER</td></tr>
/// 	<tr><td>31</td><td>DROP USER</td></tr>
/// 	<tr><td>32</td><td>%CHECKPRIV (SQL Admin Privilege)</td></tr>
/// 	<tr><td>33</td><td>GRANT (SQL Admin Privilege)</td></tr>
/// 	<tr><td>34</td><td>REVOKE (SQL Admin Privilege)</td></tr>
/// 	<tr><td>35</td><td>CREATE FUNCTION</td></tr>
/// 	<tr><td>36</td><td>CREATE METHOD</td></tr>
/// 	<tr><td>37</td><td>CREATE PROCEDURE</td></tr>
/// 	<tr><td>38</td><td>CREATE QUERY</td></tr>
/// 	<tr><td>39</td><td>DROP FUNCTION</td></tr>
/// 	<tr><td>40</td><td>DROP METHOD</td></tr>
/// 	<tr><td>41</td><td>DROP PROCEDURE</td></tr>
/// 	<tr><td>42</td><td>DROP QUERY</td></tr>
/// 	<tr><td>43</td><td>CREATE TRIGGER</td></tr>
/// 	<tr><td>44</td><td>DROP TRIGGER</td></tr>
/// 	<tr><td>45</td><td>CALL</td></tr>
/// 	<tr><td>46</td><td>SAVEPOINT</td></tr>
/// 	<tr><td>47</td><td>LOCK TABLE</td></tr>
/// 	<tr><td>48</td><td>UNLOCK TABLE</td></tr>
/// 	<tr><td>49</td><td>CREATE DATABASE</td></tr>
/// 	<tr><td>50</td><td>DROP DATABASE</td></tr>
/// 	<tr><td>51</td><td>USE DATABASE</td></tr>
/// 	<tr><td>99</td><td>Anything not list above</td></tr>
/// </table>
Property %StatementType As %Integer [ Internal, Private ];

/// Prepare and execute an SQL statement. If no statement handle is allocated in pHStatement then a new statement handle will be
/// allocated and returned by reference. That behavior is different from SQLPrepare.
/// Formal Parameters:
/// <ul>
/// <li>pHStatement		-	OPTIONAL (byref) the statement handle. If an actual arg is passed by reference then it will be populated with an OREF to a new
/// 						statement object. </li>
/// <li>pStatementText	-	(byref) SQL statement text. This can be an array of SQL statement lines with the base node set to the number of lines or
/// 					-	it can be a single string. </li>
/// <li>%parm...		-	variable number of arguments that represent the values to be bound to parameters contained in <var>pStatementText</var>.
/// 						Only parameters with input direction (input or input-output) are actually used but a position for each '?' contained in
/// 						<var>pStatementText</var> needs to be represented. In the statement:
/// <pre>
/// 	? = call Sample.PersonSets(?,?)
/// </pre>
/// The %parms... list must contain an empty position for the return value. An example of a call to %ExecDirect for such a
/// statement is:
/// <example>
/// set tRes = ##class(%SQL.Statement).%ExecDirect(.tStmt,"?=call Sample.PersonSets(?,?)",,"A","NY")
/// </example>
/// In this example, the return value is allocated a position in the %parms list (the ,,), "A" is bound to the first argument passed
/// to Sample.PersonSets and "NY" is bound to the second.</li>
/// </ul>
/// This method returns a <class>%SQL.StatementResult</class> object.
ClassMethod %ExecDirect(ByRef pHStatement As %SQL.Statement = {$$$NULLOREF}, ByRef pStatementText As %RawString = "", %parm...) As %SQL.StatementResult [ PublicList = SQLCODE ]
{
}

///
/// This method returns a %SQL.StatementResult object.
/// This is the same as %ExecDirect but no SQL privileges are checked.
ClassMethod %ExecDirectNoPriv(ByRef pHStatement As %SQL.Statement = {$$$NULLOREF}, ByRef pStatementText As %RawString = "", %parm...) As %SQL.StatementResult [ PublicList = SQLCODE ]
{
}

///
/// This method returns a %SQL.StatementResult object.
/// This is the same as %ExecDirect but the statement is not auditted.
ClassMethod %ExecDirectNoAudit(ByRef pHStatement As %SQL.Statement = {$$$NULLOREF}, ByRef pStatementText As %RawString = "", %parm...) As %SQL.StatementResult [ PublicList = SQLCODE ]
{
}

///
/// This method returns a %SQL.StatementResult object.
/// This is the same as %ExecDirect but no SQL privileges are checked and the statement is not auditted.
ClassMethod %ExecDirectNoPrivNoAudit(ByRef pHStatement As %SQL.Statement = {$$$NULLOREF}, ByRef pStatementText As %RawString = "", %parm...) As %SQL.StatementResult [ PublicList = SQLCODE ]
{
}

/// Prepares an SQL statement and returns a %Status indicating success or failure.
/// You can pass the statement as a simple string or an array of lines with the root containing the number of lines.
/// If this method returns success, use <method>%Execute</method> to execute the class query and obtain the result set.
/// <p>The checkPriv argument can be used to not perform SQL privilege checking on the statement
/// if checkPriv=0. The default is that privileges will be checked.</p>
Method %Prepare(ByRef pStatementText As %RawString, checkPriv As %Boolean = 1, noAudit As %Boolean = 0) As %Status
{
}

/// Generates the appropriate CALL statement for invoking a class query, prepares the
/// generated statement, and returns a %Status indicating success or failure.
/// For example, the following prepares the FileSet query of the <class>%Library.File</class> class:
/// <example>
/// set status = stmt.%PrepareClassQuery("%Library.File","FileSet")
/// </example>
/// If this method returns success, use <method>%Execute</method> to execute the class query and obtain the result set.
/// <p>All parameters defined in the formal specification of the query are assigned placeholder '?' in the generated CALL statement.
/// Actual values for those parameters can be passed in the %Execute() call. %Metadata is available after a successful
/// prepare.</p>
/// <p>Because this method generates a CALL statement, the executed class query must have the
/// <a href="/csp/docbook/Doc.View.cls?FIND=CLASSDEF+SQLPROC+QUERY">SqlProc</a> keyword set to True.
/// Class queries defined with SqlProc = False cannot be called by %PrepareClassQuery.</p>
/// <p>The checkPriv argument can be used to not perform SQL EXECUTE privilege checking on the class queryes procedure call if checkPriv=0. The default is that privileges will be checked.</p>
Method %PrepareClassQuery(pClassName As %String = "", pQueryName As %String = "", checkPriv As %Boolean = 1) As %Library.Status
{
}

/// Internal method that does the actual work of preparing a statement.
/// This method throws an exception if any error is encountered.
Method prepare(ByRef pStatementText As %RawString = "", checkPriv As %Boolean = 1, noAudit As %Boolean = 0) [ Internal ]
{
}

/// Internal method that is called by the xDBC server.
/// It constructs metadata specific to the server and populates the server statement object.
/// (%qsc(%qacn) ($$$CQClassname) is where the server "statement object" is kept).
/// **NOTE** THIS METHOD IS INTERNAL, ISC USE ONLY!!
Method prepareForServer(ByRef pServerStatement As %Binary, pStatementHandle As %Integer = 0, ByRef pMetadata As %Binary = "") [ Internal ]
{
}

ClassMethod preparse(ByRef pStatementText, ByRef pStatementPreparsed, ByRef pStatementArgs) As %Integer [ PublicList = SQLCODE ]
{
}

/// <p>Executes the current statement and returns the result as an instance of <class>%SQL.StatementResult</class>. The result of the execute is always the return value.
/// Success/Failure information is reported in the result object as %SQLCODE, %Message, %ROWCOUNT, and/or %ROWID.
/// </p>
/// <p>
/// The %Execute() method accepts parameter values in the order in which they appear in the source statement.  For example:
/// </p>
/// <pre>
///    SAMPLES>set tSQL=3
///
///    SAMPLES>set tSQL(1)="select %ID as id,Name,DOB,Home_State"
///
///    SAMPLES>set tSQL(2)="from Person where Age > ? and Home_State = ?"
///
///    SAMPLES>set tSQL(3)="order by 2"
///
///    SAMPLES>set tStatus = tStatement.%Prepare(.tSQL)
///
///    SAMPLES>set tResult = tStatement.%Execute(80,"VT")
///
///    SAMPLES>do tResult.%Display()
///    id     Name                DOB           Home_State
///    140    Hanson,James K.     04/02/1928    VT
///
///    1 Rows(s) Affected
///    SAMPLES>set tResult = tStatement.%Execute(50,"VT")
///
///    SAMPLES>do tResult.%Display()
///    id     Name                DOB           Home_State
///    3      Eagleman,Emilio N.  09/01/1946    VT
///    140    Hanson,James K.     04/02/1928    VT
///    167    Hertz,Keith O.      01/01/1952    VT
///
///    3 Rows(s) Affected
///    SAMPLES>
///    </pre>
/// <p>
/// You can also use the same statement object for many different statements by simply invoking <method>%Prepare</method> with the new statement. This is because %Prepare() initializes the statement&rsquo;s execution plan and metadata.  Also, an arbitrary number of statement objects can coexist in the same process.
/// </p>
/// <p>The %parm... input parameter represents a variable number of arguments that represent the values to be bound to parameters contained in <var>pStatementText</var>.
/// Only parameters with input direction (input or input-output) are actually used but the position of each '?' contained in
/// the source statement must be maintained.</p>
/// <p>An example of calling %Execute for a prepared statement "? = call Sample.PersonSets(?,?)" is:
/// <example>
/// 	set tStatement = ##class(%SQL.Statement).%New()
/// 	set tStatus = tStatement.%Prepare("?=call Sample.PersonSets(?,?)")
/// 	set tResult = tStatement.%Execute(,"A","NY")
/// </example>
/// In this example, the return value is allocated a position in the %parms list (the ','), "A" is bound to the first argument passed
/// to Sample.PersonSets and "NY" is bound to the second.
Method %Execute(%parm...) As %SQL.StatementResult [ CodeMode = call, PublicList = SQLCODE ]
{
}

Method execute(%parm...) As %SQL.StatementResult [ PublicList = SQLCODE ]
{
}

/// Shard-specific execute method, identical to regular %Execute except for argument binding.
Method %ShardExecute(parm As %String(MAXLEN="")) As %SQL.StatementResult [ Internal, PublicList = SQLCODE ]
{
}

Method %MetadataGet() As %SQL.StatementMetadata [ Internal ]
{
}

/// Purges the just-used cached query for certain statement types, like DDL statements.
Method %OnClose() As %Status [ Internal, Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// %OnNew accepts three optional parameters, the values of these three parameters are the initial values of %SelectMode, %SchemaPath and %Dialect.
Method %OnNew(pSelectMode As %RawString, pPath As %RawString, pDialect As %RawString) As %Status [ Internal, Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Displays the details of the currently prepared statement.
Method %Display()
{
}

/// <p>
/// Returns the details of the currently prepared statement.
/// This method returns the implementation class, the statement text, and the actual arguments bound to
/// formal statement arguments.
/// </p>
/// <ul>
/// <li><var>pClassName</var> contains the name of the current statement's implementation class.</li>
/// <li><var>pStatementText</var> contains the statement text. This variable is either a simple string
/// or an array of strings where pStatementText is the number of lines and pStatementText(line)
/// is a line of statement text.</li>
/// <li><var>pArguments</var> is a <a href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a>
/// containing argument types and argument value in the form
/// $list(arg1type, arg1value[, arg2type, arg2value...argNtype, argNvalue]).
/// There are three argument types: 'c' = constant, 'v' = host variable and '?' is a parameter.
/// All three argument types are replaced by ? arguments during statement prepare to improve the
/// efficiency of the statement cache. Only actual arguments of type '?' require a value
/// to be supplied when executing the statement.</li>
/// <li><var>pStatementType</var> is an integer value corresponding to the internal type number
/// for the type of statement.  This type number is for internal use and subject to change.</li>
/// </ul>
/// <p>
/// This method returns 1 for success and 0 for failure. This method fails when no statement has been prepared.
/// </p>
Method %GetImplementationDetails(Output pClassName As %Library.String(MAXLEN=300), Output pStatementText As %Library.String(MAXLEN=""), Output pArguments As %Library.List, Output pStatementType As %Integer, Output pRuntimeClassName As %Library.String(MAXLEN=300)) As %Integer
{
}

/// Returns the PATH string for a given class name. The PATH string is essentially the same
/// as a default schema that is determined from the compiled class. If no extra IMPORT or inheritance rules
/// are present, the default schema within a class context is determined from the class's package. IMPORT and
/// inheritance add additional items to the PATH.
ClassMethod %ClassPath(pClassName As %Library.String) As %Library.String(MAXLEN="")
{
}

}
