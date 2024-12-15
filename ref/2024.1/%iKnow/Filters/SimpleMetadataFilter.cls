/// <p>Filter implementation selecting sources based on their metadata values, as set through
/// <class>%iKnow.Queries.MetadataAPI</class>.</p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>domainId</b> As <class>%Integer</class></li>
/// 	<li><b>fieldName</b> As <class>%String</class> - the name of the metadata field to filter by.</li>
/// 	<li><b>filterOperator</b> As <class>%String</class> - the operator to use for filtering (should be a supported one for this metadata field).</li>
/// 	<li><b>filterValue</b> - the value to compare the actual source metadata values against.</li>
/// </ol>
Class %iKnow.Filters.SimpleMetadataFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property FieldId As %Integer;

Property FilterOperator As %String;

Property FilterValue As %String;

Method %OnNew(domainId As %Integer, fieldName As %String, filterOperator As %String, filterValue As %String = "") As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method ToString() As %String
{
}

Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]
{
}

Method FieldIdSet(fieldId As %Integer) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method FilterOperator(operator As %String) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method FilterValue(value As %String) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
