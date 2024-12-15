/// <p>Sample DeepSee plugin implementation exposing the number and total count of matching
/// results for a domain associated with an iKnow measure in this cube. This PlugIn has two
/// properties available for use in queries: <b>MatchCount</b> and <b>MatchScore</b>. These
/// numbers will have been broken down to the appropriate Dictionary and Item levels if there
/// is a corresponding Dictionary and/or Item member in the current filter, row or column spec.</p>
/// <p>The following arguments can be passed through &lt;filter&gt; elements in the <xdata>KPI</xdata> XData block:</p>
/// <ul>
/// 		<li><b>%cube</b>: the Subject Area which' iKnow measure to look for. Uses the default cube for this query if not specified.</li>
/// 		<li><b>%measure</b>: the iKnow measure (in cube <var>%cube</var>) whose domain needs to be queried. Uses the first iKnow measure in <var>%cube</var> if not specified.</li>
/// 		<li><b>aggregate</b>: how to aggregate the match count or total score. Any of sum (default), average, max or min.</li>
/// </ul>
/// <p>Sample usage:<blockquote><pre>%KPI("%DeepSee.iKnowDictionary","MatchCount",1,"aggregate","sum","%CONTEXT")</pre></blockquote>
/// Note: it is essential to pass in the "%CONTEXT" special parameter into the %KPI function for
/// it to return correct results.</p>
Class %DeepSee.PlugIn.iKnowDictionary Extends %DeepSee.PlugIn.iKnow [ Deprecated, System = 4 ]
{

Parameter BASECUBE = "*";

Parameter LISTINGSOURCE = "FactTable";

Parameter PLUGINTYPE = "Aggregate";

Parameter LISTINGFIELDS = "ID";

/// This XData definition defines the KPI.
XData KPI [ XMLNamespace = "http://www.intersystems.com/deepsee/kpi" ]
{
}

/// Compute the median of values within the result set.
Method %OnCompute(pSQLRS As %SQL.StatementResult, pFactCount As %Integer) As %Status
{
}

}
