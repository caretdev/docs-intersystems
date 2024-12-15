/// <p>
/// %SQL.CustomQuery is the root class for custom query function classes. You can extend this class to implement
/// SQL Table-Valued Functions that can be used in SQL statements.
/// Custom query functions are similar to queries with TYPE = %Library.Query. Subclassing %SQL.CustomQuery has a few advantages
/// over custom class queries. The result set returned by executing, either directly or as a function in an SQL statement, is more efficient
/// when interacting with the server. The metadata for a result set is constructed from the class definition so there is never a need to explicitly define a
/// ROWSPEC.
/// </p>
/// <p>
/// </p>
/// <p>
/// When subclassing %SQL.CustomQuery, there are a few steps that you must follow in order to produce
/// a working table-valued function.
/// </p>
/// <p>
/// 	1.	Override the SQLNAME parameter to assign a name to the custom function;
///     2.	Define properties that correspond to each column in the result row. These properties correspond to the columns that form the ROWTYPE of the
/// 		table function. Column numbers are assigned in the order in which the properties appear in the class definition. If the property type is swizzleable then
/// 	any direct access to the property will trigger swizzling. %Get, %GetData and the various %Send methods will not
/// swizzle the object.<br>
/// <u>Note:</u> Properties inherited from a system superclass are not considered to be part of the row.
/// </p>
/// <p>
/// 	3.	Define any private properties needed to maintain the current state of the
/// 		cursor. Any property defined as PRIVATE is automatically excluded from the ROWTYPE.
/// </p>
/// <p>
/// 	4.	Override and implement <method>%OpenCursor</method>. Formal arguments defined by %OpenCursor become the formal arguments for the projected table-value function.
/// 		Code in this method initializes the cursor and prepares the data to be fetched.
/// </p>
/// <p>
/// 	5.	Override and implement <method>%FetchCursor</method>. Code in this method retrieves the next row and sets the properties corresponding to
/// 		columns in the row to the appropriate value. If no row is found this method returns 0, otherwise it returns 1.
/// 		This method must also maintain the value of the <property>%ROWCOUNT</property> property.
/// </p>
/// <p>
/// 	5.	Override and implement <method>%CloseCursor</method>. This is only necessary if you need to perform some
/// 		clean up. %CloseCursor is called when the object is destructed.
/// </p>
/// <p>
/// The following class definition is an example of a simple custom query. This example accepts a JSON array and presents the name and city
/// properties from each element of the array as a row.
/// <pre>
/// 	Class User.TVF Extends %SQL.CustomQuery
/// 	{
///
/// 	Parameter SQLNAME = "custom_tvf";
///
/// 	Property name As %String;
///
/// 	Property city As %String;
///
/// 	Property sourceData As %Library.DynamicArray [ Private ];
///
/// 	Property iterator As %Iterator.Array [ Private ];
///
/// 	Method %OpenCursor(sourceData As %String(MAXLEN="")) [ Private ]
/// 	{
/// 		if ('$isObject(sourceData)) || ('sourceData.%IsA("%Library.DynamicAbstractObject")) {
/// 			set ..sourceData = ##class(%Library.DynamicAbstractObject).%FromJSON(sourceData)
/// 		} else {
/// 			set ..sourceData = sourceData
/// 		}
/// 		set ..iterator = ..sourceData.%GetIterator()
/// 	}
///
/// 	Method %CloseCursor() [ PlaceAfter = %Next, Private ]
/// 	{
/// 		set ..iterator = ""
/// 		set ..sourceData = ""
/// 	}
///
/// 	Method %FetchCursor(ByRef sc As %Library.Status = {$$$OK}) As %Library.Integer
/// 	{
/// 		if ($isObject(..iterator)) && (..iterator.%GetNext(.key,.value)) {
/// 			set ..name = value.name
/// 			set ..city = value.city
/// 		} else {
/// 			set ..iterator = ""
/// 			return 0
/// 		}
/// 		return 1
/// 	}
///
/// 	}
/// </pre>
/// </p>
/// <p>
/// The above example can be referenced in the from clause of a SELECT statement.
/// <pre>
/// select * from custom_tvf('[{"name":"Hermann, George","city":"New York, NY"},{"name":"Orr, Bobby","city":"Boston, MA"}]') order by city
/// </pre>
/// <table>
/// <tr>
/// </tr>
/// 	<th align="left">name</th><th align="left">city</th>
/// </tr>
/// <tr>
/// 	<td>Orr, Bobby</td><td>Boston, MA</td>
/// </tr>
/// <tr>
/// 	<td>Hermann, George</td><td>New York, NY</td>
/// </tr>
/// <tr></tr>
/// <tr>
/// 	<td>2 Rows(s) Affected</td>
/// </tr>
/// </table>
/// </pre>
/// </p>
/// <p>
/// A custom query function can also be instantiated directly and iterated over using the result set interface. The first argument passed to %New() is
/// SELECTMODE, as is defined by the <class>%SQL.IResultSet</class> interface. Subsequent arguments are as defined by the <method>%OpenCursor</method>.
/// <pre>
/// 	USER>set cursor = ##class(TVF).%New(,[{"name":"Hermann, George","city":"New York, NY"},{"name":"Orr, Bobby","city":"Boston, MA"}])
///
/// 	USER>write cursor.%Next()
/// 	1
/// 	USER>write cursor.name
/// 	Hermann, George
/// 	USER>write cursor.city
/// 	New York, NY
/// 	USER>write cursor.%SQLCODE
/// 	0
/// 	USER>write cursor.%Next()
/// 	1
/// 	USER>write cursor.name
/// 	Orr, Bobby
/// 	USER>write cursor.%Next()
/// 	0
/// 	USER>write cursor.%SQLCODE
/// 	100
/// </pre>
/// </p>
Class %SQL.CustomQuery Extends %SQL.IResultSet [ Abstract, System = 4 ]
{

/// Override this parameter to define the SQLNAME of the query procedure. If this value is not
/// specified then a default procedure name will be generated using the standard procedure naming
/// convention.
Parameter SQLNAME As String = "{..#SQLNAME}";

/// <p>
/// Implement code to open the cursor here. You may also define new formal arguments. Any arguments defined
/// will be automatically added to the table-valued function project to SQL and to the constructor interface.
/// Callers can specify actual arguments in the call to %New() when invoking the function from an SQL statement.
/// <pre>
/// 		method %OpenCursor(pBeginDate as %Date = "", pEndDate as %Date = "") as %Library.Status [ private ]
/// 		{
/// 			set ..BeginDate = pBeginDate
/// 			set ..EndDate = $Select(pEndDate'="":pEndDate,1:$H)
/// 		}
/// </pre>
/// </p>
/// <p>
/// Given the above example implementation of %OpenCursor, the following is a valid call to instantiate a new instance.
/// <pre>
/// 		set tResult = ##class(MyCustom.Query).%New(,$H-30,$H-10)
/// </pre>
/// </p>
/// <p>
/// To report an error set <property>%SQLCODE</property> and <property>%Message</property> to appropriate values. To report no rows found,
/// set <property>%SQLCODE</property> to 100. Errors are indicated by negative ..%SQLCODE values. It is also acceptable to simply throw
/// an exception and the system will assign appropriate values to <property>%SQLCODE</property> and <property>%Message</property>.
/// </p>
Method %OpenCursor() [ Private ]
{
}

/// <p>
/// Advance the cursor to the next row. If the cursor is found to be at the end of the data then return 0, otherwise populate the row properties and return 1.
/// </p>
/// <p>
/// To report an error set <property>%SQLCODE</property> and <property>%Message</property> to appropriate values. It is also acceptable to simply throw
/// an exception and the system will assign appropriate values to <property>%SQLCODE</property> and <property>%Message</property>.
/// </p>
Method %FetchCursor() As %Library.Integer
{
}

/// <p>
/// Implement %CloseCursor to clean up any temporary structures that are used by the custom
/// query such as temporary globals, etc. This method is invoked by the object destructor.
/// <pre>
/// 		method %CloseCursor() [ private ]
/// 		{
/// 			&sql(close myCursor)
/// 				kill ^||mytempglobal
/// 			quit $$$OK
/// 		}
/// </pre>
/// </p>
Method %CloseCursor() [ PlaceAfter = %Next, Private ]
{
}

/// %OnNew is called by the constructor. It supports a variable number of arguments passed by value. The first argument
/// is the runtime SELECTMODE value and it defaults to $system.SQL.GetSelectMode(). This method is generated as final.
/// It invokes the user implemented <method>%OpenCursor</method> method. Any formal arguments defined by the %OpenCursor method will be added
/// to the formal spec of %OnNew. Actual values for these arguments can be specified when calling %New().
/// Errors are reported by setting ..%SQLCODE, ..%Message. Do not override this method.
Method %OnNew(pSelectMode As %Integer = {$zu(115,5)}) As %Library.Status [ CodeMode = generator, GenerateAfter = %OpenCursor, Internal ]
{
}

/// Advance the cursor to the next row. Returns 0 if the cursor is at the end of the
/// data. An optional argument contains a <class>%Library.Status</class> value on return. This %Status value
/// indicates success or failure of the %Next call. <property>%SQLCODE</property> is also set by %Next.
/// This implementation is overridden by classes that implement the result set interface. Do not override this method.
Method %Next(ByRef sc As %Library.Status = {$$$OK}) As %Library.Integer [ Final, Internal ]
{
}

/// This method is invoked by the <METHOD>%Close</METHOD> method to
/// provide notification that the current object is being closed. It is invoked automatically
/// when the instance is destructed.
///
/// <P>The return value of this method is ignored.
Method %OnClose() As %Library.Status [ Final, Internal, Private, ProcedureBlock = 1, PublicList = SQLCODE, ServerOnly = 1 ]
{
}

///  Returns the value of the column with the name <var>colname</var> in the current row of the result set.
///  <p>If <var>colname</var> is not a valid column name, this method throws a <PROPERTY DOES NOT EXIST> error.
Method %Get(colname As %String = "") As %Library.String [ CodeMode = generator ]
{
}

/// %GetData(<column number>)
///
/// 		Returns the value of the column referenced by <var>colnbr</var>. Object values are not swizzled automatically.
Method %GetData(colnbr As %Integer = 0) As %Library.String [ CodeMode = generator, ProcedureBlock = 0 ]
{
}

/// Fetch and send a series of rows for the ODBC/JDBC server. For internal use only.
Method %SendODBC() As %Library.Integer [ CodeMode = generator, ProcedureBlock = 0 ]
{
}

/// Fetch and send a series of rows for the ODBC/JDBC server. For internal use only.
Method %SendObjects() As %Library.Integer [ CodeMode = generator, Internal ]
{
}

/// <b>DO NOT USE DIRECTLY</b> - use <method>%GetClientMetadata</method> instead
/// Builds the serialized metadata for this result set.
Method %GetSerializedMetadata(ByRef pMetadata As %RawString = "") As %Status [ CodeMode = generator, Internal ]
{
}

}
