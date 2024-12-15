Class %UnitTest.Report Extends %CSP.Page [ Abstract, Not ProcedureBlock, System = 3 ]
{

/// return value 0 = failed, 1 = passed, 2 = skipped
ClassMethod GetTestStatus(namespace, index, suite, case, method, action) As %Integer
{
}

ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
