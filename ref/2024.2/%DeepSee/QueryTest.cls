/// Utility class that provides an API for testing
/// DeepSee queries.
Class %DeepSee.QueryTest Extends %RegisteredObject [ System = 3 ]
{

/// Return list of test queries defined within this class.
ClassMethod %ListQueries(Output pInfo) [ CodeMode = objectgenerator, Final, Internal ]
{
}

/// Return the test specification object with given (XData) name.
ClassMethod %GetTestSpec(pName As %String, Output tSC As %Status) As %DeepSee.TestSpec
{
}

/// Run all the test queries.
ClassMethod %Run(pUseCache As %Boolean = 0, pTrace As %Boolean = 0) As %Status
{
}

/// Run the specified test query.
ClassMethod %RunQuery(pName As %String, pUseCache As %Boolean = 0, pTrace As %Boolean = 0) As %Status
{
}

}
