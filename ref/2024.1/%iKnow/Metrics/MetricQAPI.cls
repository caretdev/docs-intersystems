/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Metrics.MetricAPI</class>, exposed as SqlProc methods.</p><p>See the classdocs for <class>%iKnow.Metrics.MetricAPI</class> for more information.</p>
Class %iKnow.Metrics.MetricQAPI Extends %iKnow.Queries.AbstractQAPI [ Deprecated, System = 4 ]
{

/// Returns the ID corresponding to the supplied metric name for this domain.
ClassMethod GetMetricId(pDomainId As %Integer, pMetricName As %Integer, Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

/// Returns all the metrics registered in this domain.
ClassMethod GetMetricsExecute(ByRef qHandle As %Binary,  pDomainId As %Integer) As %Status [ Internal ]
{
}

ClassMethod GetMetricsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetMetricsExecute ]
{
}

ClassMethod GetMetricsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetMetricsExecute ]
{
}

/// Returns all the target types registered for a given metric.
ClassMethod GetTargetsExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pMetricId As %Integer) As %Status [ Internal ]
{
}

ClassMethod GetTargetsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTargetsExecute ]
{
}

ClassMethod GetTargetsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTargetsExecute ]
{
}

/// <p>Returns the elements with the highest values for custom metric <var>pMetricId</var>,
/// optionally restricted to the target type <var>pTargetType</var>.</p>
/// <p><var>pContext</var> is ignored when the metric is type $$$IKMTRTYPEDOMAIN
/// and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP.
/// In the latter case, <var>pContext</var> is optional and the top entries for all metadata
/// values will be returned if left blank.</p>
ClassMethod GetTopExecute(ByRef qHandle As %Binary,  pDomainId As %Integer, pMetricId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pContext As %String(MAXLEN=32767) = "", pTargetType As %String(MAXLEN=32767) = "") As %Status [ Internal ]
{
}

ClassMethod GetTopFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTopExecute ]
{
}

ClassMethod GetTopClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTopExecute ]
{
}

/// <p>Returns the value of a particular target element identified by <var>pTargetId</var> (for example,
/// when <var>pTargetType</var> = $$$IKMTRENTITY, <var>pTargetId</var> is a unique entity ID).</p>
/// <p><var>pContext</var> is only required when the metric is not of type $$$IKMTRTYPEDOMAIN
/// and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP.</p>
ClassMethod GetValue(pDomainId As %Integer, pMetricId As %Integer, pTargetType As %String(MAXLEN=32767), pTargetId As %Integer, pContext As %String(MAXLEN=32767) = "") As %Library.Numeric [ SqlProc ]
{
}

/// <p>Sets the value of a particular target element identified by <var>pTargetId</var> (for example,
/// when <var>pTargetType</var> = $$$IKMTRENTITY, <var>pTargetId</var> is a unique entity ID) to
/// <var>pValue</var>.</p>
/// <p><var>pContext</var> is only required when the metric is not of type $$$IKMTRTYPEDOMAIN
/// and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP.</p>
ClassMethod SetValue(pDomainId As %Integer, pMetricId As %Integer, pTargetType As %String(MAXLEN=32767), pTargetId As %Integer, pValue As %Integer, pContext As %String(MAXLEN=32767) = "") As %Boolean [ SqlProc ]
{
}

}
