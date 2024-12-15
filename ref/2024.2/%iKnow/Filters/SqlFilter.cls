/// <p>Sample filter implementation restricting sources based on a SQL query result. This SQL
/// query can select from any regular SQL table or view accessible from the namespace the filter
/// is instantiated from. The query should select sources through returning either of the
/// following as result columns (case sensitive!):</p>
/// <ul>
/// 		<li><b>IdField</b> and <b>GroupField</b>: the two columns used together as identifiers
/// 		when adding the sources to the domain: Local Reference (IdField) and Group Name
/// 			(GroupField). See also <class>%iKnow.Source.SQL.Lister</class>.</li>
/// 		<li><b>ExternalId</b>: the full External ID of the sources to be selected.</li>
/// 		<li><b>SourceId</b>: the (internal) Source ID of the sources to be selected.</li>
/// </ul>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>domainId</b> As <class>%Integer</class></li>
/// 	<li><b>sqlQuery</b> As <class>%String</class> - query to filter by</li>
/// </ol>
///
/// <p><b>WARNING:</b> these filters are not invalidated automatically if the values in the tables
/// accessed by the supplied SQL query change. It is up to the user to decide, based on the specifics
/// of the environment, whether filter instances of this class can be cached meaningfully (see
/// the useCache parameter of <method>Initialize</method>) and/or should be invalidated explicitly
/// (see <method>Invalidate</method> or <method>ClearCachedFilter</method>).</p>
Class %iKnow.Filters.SqlFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property Mode As %String(VALUELIST = "SRCID,EXTID,REF") [ Internal, Private ];

Property ColIndex As %String [ Internal, Private ];

Property SqlQuery As %String;

Method %OnNew(pDomainId As %Integer, pSqlQuery As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]
{
}

ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Private ]
{
}

Method ToString() As %String
{
}

}
