/// <p>
/// %SQL.CustomResultSet is the root class for custom result sets. You can extend this class to implement
/// custom result sets that can be instantiated and returned as dynamic result sets by a stored procedure.
/// Custom result sets are similar to queries with TYPE = %Library.Query. Subclassing %SQL.CustomResultSet has a few advantages
/// over custom queries. Result sets are more efficient when interacting with the server.
/// The metadata for a result set is constructed from the class definition so there is never a need for
/// ROWSPEC. Also, %SQL.CustomResultSet defines a more object-oriented interface.
/// </p>
/// <p>
/// You can make custom result sets available to dynamic SQL by implementing a class method projected as a stored procedure.
/// An example of a custom result set is available in the SAMPLES database. There is also an example of creating a stored procedure
/// that returns an instance of a custom result set to the caller. Such a procedure can be invoked using the embedded
/// or dynamic CALL statement.
/// </p>
/// <p>
/// When subclassing %SQL.CustomResultSet, there are a few steps that you must follow in order to produce
/// a working result set.
/// </p>
/// <p>
/// 	1.	Define properties that correspond to each column in the result row. If the property type is swizzleable then
/// 	any direct access to the property will trigger swizzling. %Get, %GetData and the various %Send methods will not
/// swizzle the object.<br><br>
/// <u>Note:</u> Properties inherited from a system superclass are not considered to be part of the row.
/// </p>
/// <p>
/// 	2.	Define any private properties needed to maintain the current state of the
/// 		result set.
/// </p>
/// <p>
/// 	3.	Override and implement %OpenCursor. Code in this method initializes the result
/// 		iterator and prepares the data for return. It also reports any errors encountered during execution
/// 		by setting %SQLCODE and %Message.
/// </p>
/// <p>
/// 	4.	Override and implement %Next. Code in this method retrieves the next row and sets the properties corresponding to
/// 			columns in the row to the appropriate value. If no row is found this method returns 0, otherwise it returns 1.
/// 			This method must also set value of the %ROWCOUNT property.
/// </p>
/// <p>
/// 	5.	Override and implement %CloseCursor. This is only necessary if you need to perform some
/// 		clean up. %CloseCursor is called when the object is destructed.
/// </p>
Class %SQL.CustomResultSet Extends %SQL.IResultSet [ Abstract, System = 4 ]
{

Parameter %statementmetadata;

Parameter %statementmetadataext;

Parameter %statementobjects;

Parameter %statementparameters;

Parameter %statementactual;

/// %OnNew is called by the constructor. It supports a variable number of arguments passed by value. The first argument
/// is the runtime SELECTMODE value and it defaults to $system.SQL.GetSelectMode(). This method is generated as final.
/// It invokes the user implemented %OpenCursor method. Any formal arguments defined by the %OpenCursor method will be added
/// to the formal spec of %OnNew. Actual values for these arguments can be specified when calling %New().
/// Errors are reported by setting ..%SQLCODE, ..%Message.
Method %OnNew(pSelectMode As %Integer = {$zu(115,5)}) As %Library.Status [ CodeMode = generator, Final, GenerateAfter = %OpenCursor ]
{
}

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

/// This callback method is invoked by the <METHOD>%Close</METHOD> method to
/// provide notification that the current object is being closed.
///
/// <P>The return value of this method is ignored.
Method %OnClose() As %Status [ Private, ProcedureBlock = 1, PublicList = SQLCODE, ServerOnly = 1 ]
{
}

/// Implement %CloseCursor to clean up any temporary structures that are used by the custom
/// result such as temporary globals, etc. This method is invoked by the object destructor.
/// <pre>
/// 		method %CloseCursor() as %Library.Status [ private ]
/// 		{
/// 			&sql(close myCursor)
/// 				kill ^||mytempglobal
/// 			quit $$$OK
/// 		}
/// </pre>
Method %CloseCursor() As %Library.Status [ CodeMode = expression, PlaceAfter = %Next, Private ]
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
