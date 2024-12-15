/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Metrics.MetricAPI</class>, exposed as WebMethod methods.</p><p>See the classdocs for <class>%iKnow.Metrics.MetricAPI</class> for more information.</p>
Class %iKnow.Metrics.MetricWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]
{

/// Returns the ID corresponding to the supplied metric name for this domain.
ClassMethod GetMetricId(pDomainId As %Integer, pMetricName As %Integer) As %Library.Integer [ WebMethod ]
{
}

/// Returns all the metrics registered in this domain.
ClassMethod GetMetrics(pDomainId As %Integer) As %XML.DataSet [ WebMethod ]
{
}

/// Returns all the target types registered for a given metric.
ClassMethod GetTargets(pDomainId As %Integer, pMetricId As %Integer) As %XML.DataSet [ WebMethod ]
{
}

/// <p>Returns the elements with the highest values for custom metric <var>pMetricId</var>,
/// optionally restricted to the target type <var>pTargetType</var>.</p>
/// <p><var>pContext</var> is ignored when the metric is type $$$IKMTRTYPEDOMAIN
/// and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP.
/// In the latter case, <var>pContext</var> is optional and the top entries for all metadata
/// values will be returned if left blank.</p>
ClassMethod GetTop(pDomainId As %Integer, pMetricId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pContext As %String = "", pTargetType As %String = "") As %XML.DataSet [ WebMethod ]
{
}

/// <p>Returns the value of a particular target element identified by <var>pTargetId</var> (for example,
/// when <var>pTargetType</var> = $$$IKMTRENTITY, <var>pTargetId</var> is a unique entity ID).</p>
/// <p><var>pContext</var> is only required when the metric is not of type $$$IKMTRTYPEDOMAIN
/// and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP.</p>
ClassMethod GetValue(pDomainId As %Integer, pMetricId As %Integer, pTargetType As %String, pTargetId As %Integer, pContext As %String = "") As %Library.Numeric [ WebMethod ]
{
}

/// <p>Sets the value of a particular target element identified by <var>pTargetId</var> (for example,
/// when <var>pTargetType</var> = $$$IKMTRENTITY, <var>pTargetId</var> is a unique entity ID) to
/// <var>pValue</var>.</p>
/// <p><var>pContext</var> is only required when the metric is not of type $$$IKMTRTYPEDOMAIN
/// and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP.</p>
ClassMethod SetValue(pDomainId As %Integer, pMetricId As %Integer, pTargetType As %String, pTargetId As %Integer, pValue As %Integer, pContext As %String = "") As %Boolean [ WebMethod ]
{
}

Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Metrics/MetricWSAPI";

Parameter SERVICENAME = "iKnow.Metrics.MetricWSAPI";

Parameter USECLASSNAMESPACES = 1;

}
