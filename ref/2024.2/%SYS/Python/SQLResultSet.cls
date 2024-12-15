///
/// Implementation of SQL support
///
Class %SYS.Python.SQLResultSet Extends %RegisteredObject [ System = 4 ]
{

///
/// Wrapped ResultSet
///
Property ResultSet As %SQL.StatementResult;

///
/// Indicate if we're already started iteration
///
Property IterationStarted As %Boolean [ InitialExpression = 0 ];

///
/// Implement %OnNew handler
///
Method %OnNew(rs As %SQL.StatementResult) As %Status
{
}

///
/// Grab an iterator
///
Method "__iter__"()
{
}

Method "__next__"() As %String
{
}

///
/// We don't know the length/size of a result set ...
///
Method "__len__"() As %Integer
{
}

///
/// We can't do a contains ...
///
Method "__contains__"() As %Boolean
{
}

///
/// Convert resultset to a Pandas dataframe
///
Method dataframe() As %SYS.Python
{
}

}
