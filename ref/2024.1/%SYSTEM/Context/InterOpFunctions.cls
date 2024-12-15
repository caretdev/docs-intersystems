Class %SYSTEM.Context.InterOpFunctions Extends %Library.SystemBase
{

/// Array using $namespace first subscript - Case sensitive
/// Second subscript is method name uppercase
Property functions As %RawString [ MultiDimensional ];

Method %OnNew(pNamespace = {$namespace}) As %Library.Status
{
}

Method GetFunctionDetails(pFunction As %String, Output pSC As %Status = {$$$OK}, pNamespace As %String = {$namespace}) As %String
{
}

Method GetFunctionSet(Output pArray, pNamespace As %String = {$namespace}) As %Status
{
}

Method outOfDate(pLastBuilt As %String) As %Boolean
{
}

Method clearContext(pNamespace As %String = {$namespace})
{
}

Method populateFunctions(pNamespace As %String = {$namespace}) As %Status
{
}

}
