/// <p><class>%iKnow.Filters.Filter</class> implementation selecting sources based on whether they
/// contain a minimum and/or maximum number or total score of dictionary matches.</p>
///
/// <p><b>NOTE:</b> by default, this filter only uses existing match results and will only ensure
///   all sources are fully matched when the ensureMatched parameter is enabled!</p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>domainId</b> As <class>%Integer</class></li>
/// 	<li><b>dictIds</b> As <class>%List</class> - target dictionaries (ORed together). Use negative IDs to refer to cross-domain dictionaries.</li>
/// 	<li><b>min</b> As <class>%Numeric</class> (default 1) - minimum count or total score (-1 = no minimum)</li>
/// 	<li><b>max</b> As <class>%Numeric</class> (default -1) - maximum count or total score (-1 = no maximum)</li>
/// 	<li><b>metric</b> As <class>%String</class> (["COUNT"|"SCORE"], default "COUNT") - whether to take the
/// 								number of matches (default) or their aggregated score.</li>
/// 	<li><b>ensureMatched</b> As <class>%Integer</class> - controls whether or not
/// 									all sources in the domain are matched through an explicit call to
/// 									MatchingAPI.MatchSources() as follows:<ul>
/// 				<li>0 - no explicit matching, use current matching results (default)</li>
/// 				<li>1 - match before every invocation of the filter (warning: significant performance impact!)</li>
/// 				<li>2 - match once when the filter is instantiated</li></ul></li>
/// </ol>
Class %iKnow.Filters.DictionaryMatchFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property DictIds As %List;

Property Min As %Numeric;

Property Max As %Numeric;

Property Metric As %String;

Property EnsureMatched As %Integer;

Method %OnNew(domainId As %Integer, dictIds As %List, min As %Numeric = 1, max As %Numeric = -1, metric As %String = "COUNT", ensureMatched As %Integer = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

/// <p>In addition to default <class>%iKnow.Filters.Filter</class> checks, this class ensures match status
/// is up to date for the sources at the supplied offset.</p>
Method Validate(type As %Integer = {$$$IKFSOURCE}, Output isValid As %Boolean = 0) As %Status [ Private ]
{
}

Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]
{
}

Method ToString() As %String
{
}

ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Internal, Private ]
{
}

Method DictIdsSet(dictIds As %List) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method MinSet(min As %Numeric) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method MaxSet(max As %Numeric) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method MetricSet(metric As %String) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method EnsureMatchedSet(ensureMatched As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// <p>If <property>EnsureMatched</property>=2, filter invalidation (for example as the result of
/// new sources being added to the domain) implies matching all sources.</p>
Method Invalidate(type As %Integer = {$$$IKFSOURCE}) As %Status
{
}

}
