/// <p>Sample filter implementation restricting sources on their sentence count.</p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>domainId</b> As <class>%Integer</class></li>
/// 	<li><b>minSentenceCount</b> As <class>%Integer</class> - minimum sentence count (use -1 for no lower limit)</li>
/// 	<li><b>maxSentenceCount</b> As <class>%Integer</class> - maximum sentence count (use -1 for no upper limit)</li>
/// </ol>
Class %iKnow.Filters.SentenceCountFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property MinSentenceCount As %Integer;

Property MaxSentenceCount As %Integer;

Method %OnNew(DomainId As %Integer, MinSentenceCount As %Integer = -1, MaxSentenceCount As %Integer = -1) As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]
{
}

Method ToString() As %String
{
}

Method MinSentenceCountSet(min As %Integer) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method MaxSentenceCountSet(max As %Integer) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
