///  This is an internal class used for distributed SQL processing.
///  This class contains no user-accessible methods.
Class %SQL.Agent [ Abstract, System = 4 ]
{

/// Given an array of vals and a function to call create the work manager IPQ object and schedule the work for this
/// return the IPQ object. On the event of any errors use standard SQL error handling (ZTrap).
ClassMethod %RunWorkVals2(type As %Integer, ByRef vals As %String, rtnidx As %Binary, function As %String, args As %String, ByRef extable As %String, ByRef groupID As %String = "", ByRef total As %Integer) As %SYSTEM.WorkMgrIPQ [ Internal ]
{
}

ClassMethod %EndQuery(pTempIndex As %String, pQueryId As %Integer) As %Status [ Internal ]
{
}

///  Process the Status code error into an SQLCODE and %msg error.  %msg is a public variable.
ClassMethod ProcessError(pSC As %Status, ByRef SQLCODE As %Integer, ByRef %msg As %String) [ Internal ]
{
}

///  This method executes the given query and writes the results to the specified temp global
///  location.<br/>
///  This is called by a background agent.
ClassMethod %ExecuteQuery(pSQL As %String, pTempIndex As %String, pSelectMode As %Integer = 0, pReadCommitted As %Integer = 0) As %Status [ Internal ]
{
}

}
