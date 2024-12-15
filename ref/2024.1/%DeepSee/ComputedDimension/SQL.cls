/// This class implements a computed dimension that uses SQL statements against
/// the cube fact table to resolve members.<br/>
/// For example:<br/>
/// &[SELECT ID FROM $$$TABLE WHERE MxUnitsSold > 4]<br/>
/// -- $$$TABLE is replaced with Fact Table name.<br/>
/// WHERE %SEARCH.&[MxUnitsSold > 4]<br/>
/// -- Expression is used as WHERE clause in query on FactTable
/// WHERE %SEARCH.&[$$$FACT > 4]<br/>
/// -- $$$Fact is fact defined for the computed dimension.
///
Class %DeepSee.ComputedDimension.SQL Extends %DeepSee.ComputedDimension.Base [ System = 4 ]
{

Parameter BEHAVIOR = "SQL";

/// Controls whether results of <method>%OnComputeBitset</method> can be reused
/// Available values are "NEVER", "CHECK", with NEVER meaning no values
/// are cached and CHECK meaning the timestamp of previous %OnComputeBitset results is
/// compared to the cube's latest update timestamp.
Parameter CACHECOMPUTEDBITSET As STRING [ Constraint = ",NEVER,CHECK", Flags = ENUM ] = "CHECK";

/// Resolve any special tokens or expression in a key value and return the result.
Method %ResolveKey(pSpec As %String, Output pRKey As %String) As %Status
{
}

/// Build the bitset that corresponds to the given computed dimension "spec".
Method %OnComputeBitset(pSpec As %String, pIndexKey As %String) As %Status
{
}

/// Execute a search for members.<br/>
/// Return a list of the form:<br/>
/// pList(n) = $LB(value,key)
Method %MemberSearch(pSearchKey As %String, Output pList As %List) As %Status
{
}

}
