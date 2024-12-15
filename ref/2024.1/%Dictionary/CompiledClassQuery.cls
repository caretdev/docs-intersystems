Class %Dictionary.CompiledClassQuery [ Abstract, Not ProcedureBlock, System = 2 ]
{

/// The <b>Summary</b> query provides a summary of information about compiled classes contained in the
/// <i>Class Dictionary</i>.
ClassMethod SummaryExecute(ByRef QHandle As %Binary) As %Status
{
}

ClassMethod SummaryFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod SummaryClose(QHandle As %Binary) As %Status
{
}

ClassMethod MemberSummaryExecute(ByRef QHandle As %Binary, classname As %String, kind As %String) As %Status
{
}

ClassMethod MemberSummaryFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod MemberSummaryClose(QHandle As %Binary) As %Status
{
}

}
