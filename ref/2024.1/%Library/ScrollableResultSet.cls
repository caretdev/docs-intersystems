/// This provides a scrollable resultset object that can also be saved and loaded
/// It works by running the entire query when the first item of data is requested
/// and storing the results in a global. Then you can move around the results by setting the
/// <property>CurrRow</property> and you may also call <method>Previous</method> as
/// well as the standard <method>Next</method>. In addition you may save this resultset
/// and then load it potentially in a different process at a later date and continue
/// reading from it, for example:
/// <example> Set results=##class(%ScrollableResultSet).%New("Classname:QueryName")
/// Do results.Execute()
/// Do results.Next()
/// Write results.Data("fieldname")
/// Do results.%Save()
/// Set id=results.%Id()
/// Kill results
/// Set results=##class(%ScrollableResultSet).%OpenId(id)
/// Do results.Next()
/// Write results.Data("fieldname")
/// </example>
/// Note that if you open a %ScrollableResultSet and do not call %Save on it then when you
/// close this object the data stored in the global will be removed and so you will not be
/// able to open this resultset again. So if you open a scrollable resultset and you wish
/// to use this again call %Save on it, but you must always make sure that when you are finished
/// with it you do not call %Save so the temporary global used is cleaned up when you are done.
/// Alterntively you can call %DeleteId passing the id to remove the saved data.<p>
/// There is also a <method>Count</method> to find the total number of entries in this resultset.
/// This will not work if running with a query against a remote linked table which returns stream data for a column
/// because the remote linked table returns the stream as an oref and this class does not support persisting this oref.
Class %Library.ScrollableResultSet Extends %Library.ResultSet [ System = 3 ]
{

/// Index into temp global used to hold results
Property TempIndex As %Integer [ Private ];

/// Number of current row in the temp table, you can set this property to
/// move to a new location and also use this to check the current position.
/// If you specify a value that is out of bounds then the row will not be moved.
/// The first row is at CurrRow=1, so it is 1 based and not 0 based.
Property CurrRow As %Integer;

Method CurrRowSet(val As %String) As %Status
{
}

/// This determines how many rows this query will load, the default '0' will load
/// all the results, if you set it to 10,000 then it will only load the first 10,000
/// rows, which will mean you can not access any data beyond the 10,000th element.
/// Also the actual stopping point may be slightly larger than MaxRows because of the
/// way the data is imported, but it will be around this figure.
Property MaxRows As %Integer [ InitialExpression = 0 ];

/// If true, the temp table has been saved and should not be
/// automatically deleted.
Property IsSaved As %Boolean [ InitialExpression = 0, Private ];

Method %OnClose() As %Status [ Private ]
{
}

/// Executes the current query.
/// <p>The arguments <var>p1...</var> supply the value of any parameters the
/// query may have.
Method PopulateData() As %Status [ Private, ProcedureBlock = 0 ]
{
}

/// Advance the result set cursor to the next row. Returns 0 if the cursor is at the end of the
/// result set.
Method Next(ByRef sc As %Status) As %Integer
{
}

/// Advance the result set cursor to the previous row. Returns 0 if the cursor is at the end of the
/// result set.
Method Previous(ByRef sc As %Status) As %Integer
{
}

/// Returns the number of rows contained in this ResultSet.
Method Count() As %Integer
{
}

ClassMethod %OpenId(id As %String, concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle
{
}

Method Load(id As %String) As %Status
{
}

Method %Save() As %Status
{
}

ClassMethod %DeleteId(id As %String, concurrency As %Integer = -1) As %Status
{
}

Method %Id() As %String [ CodeMode = expression, Final ]
{
}

Method GetObject() As %RegisteredObject [ ProcedureBlock = 1 ]
{
}

}
