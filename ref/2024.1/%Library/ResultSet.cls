/// <p>
/// dynamic SQL is the preferred mechanism for preparing and executing dynamic
/// 	SQL statements. Please refer to <class>%SQL.Statement</class> for more information.
/// %Library.ResultSet continues to be used and supported.</p>
/// <p>
/// The <class>%ResultSet</class> class provides a way to use the results of
/// class queries from within a <i>ObjectScript</i> application. It is
/// similar in operation to the <b>ResultSet</b> objects provided with the ActiveX and
/// Java bindings.
/// <p>You can use a <class>%ResultSet</class> object as follows:
/// <p>Note you can bind a <class>%ResultSet</class> object to a query by either
/// a) setting the <property>ClassName</property> and <property>QueryName</property>
/// properties or b) passing a string containing the class name and query name (separated
/// by a <b>:</b>) to the <nobr><b>%New</b></nobr> method:
/// <example>
/// ; Display the results of the Person class' ByName query to the console.
/// 	set rs=##class(%ResultSet).%New()
/// 	set rs.ClassName="Sample.Person"
/// 	set rs.QueryName="ByName"
/// 	; Alternatively, you can bind the result set object to a query
/// ; set rs=##class(%ResultSet).%New("Sample.Person:ByName")
/// 	set sc=rs.Execute("a")  If $$$ISERR(sc) Do DisplayError^%apiOBJ(sc) Quit
/// 	while rs.%Next() { do rs.%Print() }
/// </example>
/// <b>Dynamic SQL</b>:
/// You can use the <class>%ResultSet</class> class to execute dynamic SQL queries
/// using the system-provided <nobr><var>%DynamicQuery:SQL</var></nobr> query. In this case, use the
/// <method>Prepare</method> method to supply the text of the query. For example:
///
/// <example>
/// Set result=##class(%ResultSet).%New("%DynamicQuery:SQL")
///
/// Set sc=result.Prepare("SELECT %ID, Name, Salary FROM Sample.Employee WHERE Salary > ?")
/// If $$$ISERR(sc) Do DisplayError^%apiOBJ(sc) Quit
/// Set sc=result.Execute(10000) If $$$ISERR(sc) Do DisplayError^%apiOBJ(sc) Quit
/// While result.Next(.sc) {
/// 	If $$$ISERR(sc) Quit
/// 	Write result.Data("Name"),result.Data("Salary"),!
/// }
/// If $$$ISERR(sc) Do DisplayError^%apiOBJ(sc) Quit
/// </example>
///
/// Dynamic SQL queries are cached in the same query cache as used by InterSystems IRIS ODBC and JDBC.
/// This means that repeated calls to the same dynamic SQL query do not incur any additional
/// query preparation and optimization overhead. You can view and manage this cache using the
/// <i>SQL Manager</i>.
Class %Library.ResultSet Extends %AbstractResultSet [ ClientName = ResultSetOld, Deprecated, OdbcType = RESULTSET, System = 2 ]
{

/// xDBC metadata - for compatibility with new cached result sets.
///
Property %Metadata As %String [ MultiDimensional ];

Method %MetadataGet() As %String
{
}

/// %Objects is a serialized collection of object specifications that include the name of the column
/// whose type class is a subclass of %SwizzleObject, the name of the class and the call to export the
/// object directly to the wire. This property is not meant for public use. It is used by %SendObjects.
Method %ObjectsGet() As %String [ Internal ]
{
}

/// The name of the class containing the query to run.
Property ClassName As %RawString;

/// The name of the query to run.
Property QueryName As %RawString;

/// Use this property to set the SQL runtime mode for the query to be
/// executed.  Setting the runtime mode for this ResultSet does not
/// permanently change the $zu(115,5) value.  Possible values mode are:
/// <ul>
/// <li> 0 for LOGICAL mode.</li>
/// <li> 1 for ODBC mode.</li>
/// <li> 2 for DISPLAY mode.</li>
/// <li> "" to use the process wide $zu(115,5) value.</li>
/// </ul>
Property RuntimeMode As %String;

Method RuntimeModeSet(mode As %String) As %Status
{
}

Method RuntimeModeGet() As %String [ CodeMode = expression ]
{
}

Property QHandle As %String [ MultiDimensional, Private ];

Property HasInfo As %String [ InitialExpression = 0, Private ];

Property HasExtInfo As %String [ InitialExpression = 0, Private ];

Property ParamInfo As %String [ Private ];

Property ColInfo As %String [ Private ];

Property ColExtInfo As %String [ Private ];

Property IdInfo As %String [ Private ];

Property AtEnd As %String [ InitialExpression = 0, Private ];

Property Row As %String [ MultiDimensional, Private ];

Property StatementType As %String [ Private ];

Property IsOpened As %String [ InitialExpression = 0, Private ];

Method %DispatchGetProperty(pProperty As %String(MAXLEN=255))
{
}

Property ColIndex As %String [ MultiDimensional, Private ];

/// Used to store the data returned from the resultset by column name. This can
/// be accessed directly for better performance than the <method>Get</method> and
/// <method>GetDataByName</method> methods. For example:
/// <example>
/// ; This slower code
///
/// While result.Next() {
/// 	Write result.Get("Name"),result.Get("Salary"),!
/// }
///
/// ; Becomes this faster code
///
/// While result.Next() {
/// 	Write $get(result.Data("Name")),$get(result.Data("Salary")),!
/// }
/// </example>
/// Note that because this 'Data' property is multidimensional, if there
/// is no such column name as 'Salary' you will get an UNDEFINED error without
/// the $get around it. If
/// there are two columns with the same name in the result set then the second
/// one will be the one referenced by the 'Data' property. If you need to refer
/// to both of them, use the <method>GetData</method> and give the position
/// of the column you want.
Property Data As %String [ MultiDimensional ];

/// Duplicate of Data but subscripted by column number instead of name. This is used only
/// by %SendOdbc to maintain values of columns orphaned by a full buffer. This data is not
/// maintained for use for any other purpose and is not part of the public interface.
Property Column As %String [ Internal, MultiDimensional ];

/// This is the pointer to the next Column to be processed by <method>%SendODBC</method>.
/// When <method>%SendODBC</method> is next called, this will be the first column to be
/// sent. This value is zero if no data is unprocessed, non zero if there is something to process
/// It is set to 1 on every Next() call that returns a valid row.
Property NextColumn As %Integer [ InitialExpression = 0, Private ];

Method ClassNameSet(class As %String) As %Status
{
}

Method %OnClose() As %Status [ Private ]
{
}

Method %OnNew(initvalue As %String) As %Status [ Private ]
{
}

Method %ResultColumnCountGet() As %Integer [ CodeMode = call ]
{
}

/// Use this method with <b>dynamic</b> queries to provide the query to be
/// executed. In the case of the <nobr><var>%DynamicQuery:SQL</var></nobr> query, <var>p1</var>
/// is a string containing an SQL query. The query may contain parameters represented
/// by <b>?</b> characters within the query. The values of any parameters are
/// supplied via the <method>Execute</method> method. For example:
/// <example>
/// Set result=##class(%ResultSet).%New("%DynamicQuery:SQL")
///
/// Do result.Prepare("SELECT Name,City FROM Person WHERE Name %STARTSWITH ? AND City = ?")
///
/// Do result.Execute("A","Boston")
/// While result.Next() {
/// Write result.Data("Name"),result.Data("City"),!
/// }
/// </example>
Method Prepare(args...) As %Status
{
}

/// Executes the current query.
/// <p>The arguments <var>p1...</var> supply the value of any parameters the query may have.</p>
/// <br><p>
/// This method sets the <property>%SQLCODE</property> property if an error is reported. The value of <property>%SQLCODE</property>
/// is computed from the status value and is not set to the value of the public SQLCODE variable.
/// The <property>%Message</property>, <property>%ROWCOUNT</property> and <property>%ROWID</property> properties are
/// set to the values of the SQL public variables %msg, %ROWCOUNT and %ROWID. If those public variables were not
/// set by the query's Execute method and those variables were defined prior to calling Execute then the properties
/// will contain the prior values of those variables. It is the caller's responsibility to initialize and manage these
/// public variables.</p>
Method Execute(args...) As %Status [ PublicList = (qHandle, args) ]
{
}

/// alias for new result set interface
Method %Execute(args...) As %Library.Status [ CodeMode = call ]
{
}

/// Version of Execute() that takes up to 16 arguments instead of a variable number of arguments.
/// Provides compatibility with C++ binding and CacheActiveX, which do not fully support methods
/// with a variable number of arguments. For internal use only.
Method Execute16(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16) As %Status [ Internal ]
{
}

/// Fetch and send a series of rows for the ODBC/JDBC server. For internal use only.
Method %SendODBC() As %Integer
{
}

/// Fetch and send a series of rows for continuous query client. For internal use only.
Method %SendDelimitedRows(pMaxRows As %Integer = 0, pDelimiter As %String = "", ByRef pReturnCount As %Integer) As %Status
{
}

/// Advance the result set cursor to the next row. Returns 0 if the cursor is at the end of the
/// result set.
Method Next(ByRef sc As %Status) As %Integer [ PublicList = (Row, AtEnd, SQLCODE) ]
{
}

/// alias for new result set interface
Method %Next(ByRef sc As %Library.Status) As %Library.Integer [ CodeMode = call ]
{
}

/// Get the name of the cached query routine for the current result set.  For internal use only.
/// This is called from the SMP page %CSP.Util.SQLQueryPane to display the cached query name on the Execute Query page
Method GetCachedQueryName() As %Library.String [ Internal ]
{
}

/// Returns the value of column <var>n</var> in the current row of the result set.
Method GetData(n As %Integer) As %String [ CodeMode = expression ]
{
}

/// alias for new result set interface
Method %GetData(colnbr As %Integer = 0) As %Library.String
{
}

/// Returns the value of the column with the name <var>name</var> in the current row of the result set.
/// <p>If <var>name</var> is not a valid column name, this method returns an empty string.
/// <br>Using the <property>Data</property> multidimensional property to
/// access the fields is faster than using this method call.
Method Get(name As %String) As %String [ CodeMode = expression, ProcedureBlock = 1 ]
{
}

Method %Get(name As %String) As %String
{
}

/// Returns the value of the column with the name <var>name</var> in the current row of the result set.
/// <p>If <var>name</var> is not a valid column name, this method returns an empty string.
/// <p>Note: this method has been superceded by the equivalent <method>Get</method> method.
Method GetDataByName(name As %String) As %String [ CodeMode = expression ]
{
}

/// If this query contains an object Id then this method opens an object with this Id
/// and returns the object reference.  Otherwise it returns a null object reference.
Method GetObject() As %RegisteredObject [ ProcedureBlock = 1 ]
{
}

/// Closes the current result set cursor.
Method Close() As %Status [ PublicList = (Row, SQLCODE) ]
{
}

/// alias for new result set interface
Method %CloseCursor() As %Status [ CodeMode = call ]
{
}

Method GetInfo(extoption) As %Status [ Private ]
{
}

Method GetODBCInfo(ByRef colinfo As %List, ByRef parminfo As %List) As %Status
{
}

/// Set the location of the ID in this query and the extent. The <var>idnumber</var> is
/// the column number of the ID and the <var>extent</var> is the class name the id is
/// from. Note, you must call this after the Execute method is called or the data will
/// be overwritten.
Method SetIdInfo(idnumber As %Integer, extent As %String) As %Status
{
}

/// Returns the number of columns in the result set.
Method GetColumnCount() As %Integer [ CodeMode = expression ]
{
}

/// Returns the name of column <var>n</var> in the result set.
Method GetColumnName(n As %Integer) As %String [ CodeMode = expression ]
{
}

/// This method accepts the column number as an input parameter and will return a $list containing the class name and property
/// name of the property corresponding to the column in the query. If the column is not based on a property then the returned
/// information will be an empty $list.
Method GetColumnExtInfo(n As %Integer) As %String [ CodeMode = expression ]
{
}

/// Returns the column header for column <var>n</var> in the result set.
Method GetColumnHeader(n As %Integer) As %String
{
}

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
Method GetColumnType(n As %Integer) As %Integer
{
}

/// Returns the number of input parameters for the current query.
Method GetParamCount() As %Integer [ CodeMode = expression ]
{
}

/// Returns the name of input parameter <var>n</var> for the current query.
Method GetParamName(n As %Integer) As %String [ CodeMode = expression, ProcedureBlock = 1 ]
{
}

/// Returns the SQL statement type of the query if available.
/// Statement type numbers are defined as:<p>
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
/// 	<tr><td>""</td><td>Anything not list above</td></tr>
/// </table>
Method GetStatementType() As %String [ CodeMode = expression ]
{
}

/// Returns true (1) if the ClassName and QueryName properties of this
/// <nobr><b>%ResultSet</b></nobr> object refer to a valid class query.
/// Otherwise it returns false (0).
Method QueryIsValid() As %Integer [ CodeMode = expression ]
{
}

/// If the current query contains an object Id (based on the CONTAINSID parameter
/// being set), return the column position of the object Id.
/// Otherwise return 0.
Method ContainsId() As %Integer [ CodeMode = expression ]
{
}

/// The name of the extent that this query will return Id values from (based on the EXTENT parameter
/// being set). Only returns a value if the query contains Id values.
Method GetExtent() As %String [ CodeMode = expression ]
{
}

/// This method is deprecated; use <b>RunQuery</b>.
ClassMethod Test(ClassName As %String, QueryName As %String, args...)
{
}

/// %PrepareMetaData is similar to %Prepare except that no result set is instantiated. This
/// method returns a %ResultSet.MetaData object. Be aware that the implementation of this
/// method might cause the result set to be instantiated but that is up to the result set
/// class itself and no result set is actually returned by this method - only metadata.
///
/// queryId			This can be the concrete subclass of %IResultSet that implements the desired query. For dynamic cached results this value
/// 				is generally the query text that can be parsed, a hashed value computed and the cached result implementation class
/// 				looked up in the query cache index.
///
/// 					<queryId> can also be a <className><colon><queryName> or <className><colon><methodName>. If it is a <queryName> then
/// 					the result set returned is an instance of %Library.ResultSet that is bound to that query. If it is the name of a method
/// 					Then that method is called, passing %args... to the method, and the first result set found in the context object (%sqlcontext)
/// 					is returned.
/// returnError	If an error occurs this is returned by reference and is a %SYSTEM.Error object
///                 with properties set to describe information about the error. %returnError.Status contains the %Status value.
/// importPackages	This is a comma delimited list of packages to import. This is only relevant if the result set implementation is
/// 				generated and the query source might include unqualified names. The import packages list is used to resolve package/schema names for
/// 				unqualified names.
ClassMethod %PrepareMetaData(pQueryId As %String(MAXLEN=""), ByRef returnError As %SYSTEM.Error = "", importPackages As %RawString = "") As %ResultSet.MetaData
{
}

}