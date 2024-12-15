Class %DeepSee.extensions.utils.StringMatchUtils Extends %RegisteredObject [ System = 4 ]
{

ClassMethod tokenize(value As %String, Output array) As %Status
{
}

ClassMethod getNumberOfTokens(ByRef value As %String, Output n As %Integer, pattern As %String = "") As %Status
{
}

ClassMethod str2arr(value As %String, Output array) As %Status
{
}

ClassMethod compareNGrams(v1 As %String, v2 As %String, Output dist, ByRef costs = "", normalizeCode As %String = "") As %Status
{
}

ClassMethod compareMonoGrams(v1 As %String, v2 As %String, Output dist, ByRef costs = "") As %Status
{
}

ClassMethod ldist(v1 As %String, v2 As %String, ByRef costs = "") As %Double
{
}

ClassMethod compareArr(ByRef s, ByRef t, Output dist, ByRef costs, normalizeCode As %String) As %Status
{
}

ClassMethod nml(code As %String, v As %String) As %String
{
}

}
