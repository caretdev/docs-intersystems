/// <p>Sample DeepSee plugin implementation exposing the numeric results for iKnow Queries in
/// a domain associated with an iKnow measure in this cube, as returned for the individual
/// iKnow measure values for each fact. This PlugIn has only one result
/// property named <b>Result</b>.</p><p>The following arguments can be
/// passed through &lt;filter&gt; elements in the <xdata>KPI</xdata> XData block:</p>
/// <ul>
/// 		<li><b>%cube</b>: the Subject Area which' iKnow measure to look for. Uses the default cube for this query if not specified.</li>
/// 		<li><b>%measure</b>: the iKnow measure (in cube <var>%cube</var>) whose domain needs to be queried. Uses the first iKnow measure in <var>%cube</var> if not specified.</li>
/// 		<li><b>aggregate</b>: how to aggregate the query results for the individual facts. Any of total (default), sum, average, max or min.</li>
/// 		<li><b>iKnowQuery</b>: which iKnow query to invoke, specified as "<i>queryClass</i>:<i>queryName</i>". This should be a query returning a single number taking the domain ID and source ID (or a filter object) as its first two arguments. Defaults to "%iKnow.Queries.EntityAPI:GetCountByDomain"</li>
/// </ul>
/// <p>Sample usage:<blockquote><pre>%KPI("%DeepSee.iKnow","Result",1,"aggregate","total","%CONTEXT")</pre></blockquote>
/// Note: it is essential to pass in the "%CONTEXT" special parameter into the %KPI function for
/// it to return correct results.</p>
Class %DeepSee.PlugIn.iKnow Extends %DeepSee.KPIPlugIn [ Deprecated, System = 4 ]
{

Parameter BASECUBE = "*";

Parameter LISTINGSOURCE = "FactTable";

Parameter PLUGINTYPE = "Aggregate";

Parameter LISTINGFIELDS = "ID";

/// This XData definition defines the KPI.
XData KPI [ XMLNamespace = "http://www.intersystems.com/deepsee/kpi" ]
{
}

Method GetCubeName() As %String [ Internal ]
{
}

Method GetIKnowMeasureName(Output pSC As %Status) As %String [ Internal ]
{
}

/// Get the base query for this plug-in.
Method %OnGetMDX(ByRef pMDX As %String) As %Status
{
}

/// Compute the median of values within the result set.
Method %OnCompute(pSQLRS As %SQL.StatementResult, pFactCount As %Integer) As %Status
{
}

}
