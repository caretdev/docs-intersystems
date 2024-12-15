/// <p>This <class>%iKnow.Filters.Filter</class> filters sources according to an MDX
/// set expression. This should be a DeepSee-managed domain, created automatically through
/// the use of an iKnow measure in a DeepSee cube. The MDX will be run against this cube
/// and hence should be a valid MDX statement using dimensions and/or measures defined
/// for this cube.</p>
///
/// <p><b>Filter parameters</b>:
/// <ol>
/// 	<li><b>pDomainId</b> As <class>%Integer</class></li>
/// 	<li><b>pMDXWhereClause</b> As <class>%String</class> - The MDX set expression to filter
/// 			cube facts through. This should be a valid expression for the MDX WHERE clause.</li>
/// 		<li><b>pCubeName</b> As <class>%String</class> - If this is an iKnow-managed domain,
/// 				use this parameter to specify the DeepSee cube the MDX should be run against.
/// 				(this parameter is ignored for DeepSee-managed domains)</li>
/// 		<li><b>pMeasureName</b> As <class>%String</class> - If this is an iKnow-managed domain,
/// 				use this parameter to specify the iKnow measure in <var>pCubeName</var> for
/// 				which the values are represented by this iKnow domain.
/// 				(this parameter is ignored for DeepSee-managed domains)</li>
/// </ol>
///
/// <p>Example:</p>
/// <blockquote><pre>USER>zn "samples"
///
/// SAMPLES>set domId = ##class(%iKnow.DeepSee.CubeUtils).GetDomainId("AviationEvents","Report")
///
/// SAMPLES>set filter = ##class(%iKnow.DeepSee.MDXFilter).%New(domId, "{[AircraftDim].[H1].[AircraftCategory].&[Balloon],[AircraftDim].[H1].[AircraftCategory].&[Glider]}")
///
/// SAMPLES>write ##class(%iKnow.Queries.SourceAPI).GetCountByDomain(domId)
/// 1005
/// SAMPLES>write ##class(%iKnow.Queries.SourceAPI).GetCountByDomain(domId,filter)
/// 27</pre></blockquote>
Class %iKnow.DeepSee.MDXFilter Extends %iKnow.Filters.Filter [ Deprecated, System = 4 ]
{

Property CubeName As %String [ ReadOnly ];

Property MeasureName As %String [ ReadOnly ];

Property MDXWhereClause As %String [ ReadOnly ];

Method %OnNew(pDomainId As %Integer, pMDXWhereClause As %String, pCubeName As %String = "", pMeasureName As %String = "") As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Private ]
{
}

Method ToString() As %String
{
}

ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Private ]
{
}

}
