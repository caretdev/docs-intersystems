/// <p>The <package>%iKnow.Metrics</package> infrastructure is deprecated in favour of the
/// more SQL-oriented approach offered through <class>%iKnow.Tables.Utils</class>, where you
/// can add computed fields at different levels and choose whether they need to be persisted or not.</p>
/// <p>This class offers a number of API methods to interact with any custom metrics registered
/// in a particular domain. Use <class>%iKnow.Metrics.MetricDefinition</class> to configure
/// any custom metric properties, eventually referring a <class>%iKnow.Metrics.MetricsBuilder</class>
/// implementation for applicable calculations and then consult the results through the different
/// methods in this interface.</p>
Class %iKnow.Metrics.MetricAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

Parameter SetValueEXP [ Internal ] = 1;

/// <p>Sets the value of a particular target element identified by <var>pTargetId</var> (for example,
/// when <var>pTargetType</var> = $$$IKMTRENTITY, <var>pTargetId</var> is a unique entity ID) to
/// <var>pValue</var>.</p>
/// <p><var>pContext</var> is only required when the metric is not of type $$$IKMTRTYPEDOMAIN
/// and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP.</p>
ClassMethod SetValue(pDomainId As %Integer, pMetricId As %Integer, pTargetType As %String, pTargetId As %Integer, pValue As %Integer, pContext As %String = "") As %Status
{
}

/// Returns the global storing the data for the given target type.
/// Note: <var>pContext</var> should be in %Integer format (SrcId or MetaUniValueId).
ClassMethod GetGlobalName(pDomainId As %Integer, pType As %String, pTargetType As %String, pContext As %Integer = "") As %String [ Internal ]
{
}

/// <p>Returns the value of a particular target element identified by <var>pTargetId</var> (for example,
/// when <var>pTargetType</var> = $$$IKMTRENTITY, <var>pTargetId</var> is a unique entity ID).</p>
/// <p><var>pContext</var> is only required when the metric is not of type $$$IKMTRTYPEDOMAIN
/// and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP.</p>
ClassMethod GetValue(pDomainId As %Integer, pMetricId As %Integer, pTargetType As %String, pTargetId As %Integer, pContext As %String = "") As %Numeric
{
}

Parameter GetTopRT = "targetId:%Integer,targetValue:%String,score:%Numeric,targetType:%String";

/// <p>Returns the elements with the highest values for custom metric <var>pMetricId</var>,
/// optionally restricted to the target type <var>pTargetType</var>.</p>
/// <p><var>pContext</var> is ignored when the metric is type $$$IKMTRTYPEDOMAIN
/// and should be a source ID for $$$IKMTRTYPESOURCE or a metadata value for $$$IKMTRTYPEGROUP.
/// In the latter case, <var>pContext</var> is optional and the top entries for all metadata
/// values will be returned if left blank.</p>
ClassMethod GetTop(ByRef pResult, pDomainId As %Integer, pMetricId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pContext As %String = "", pTargetType As %String = "") As %Status
{
}

/// Returns a displayable value for the element identified by <var>pId</var> of type <var>pTargetType</var>
ClassMethod GetElementValue(pDomainId As %Integer, pTargetType As %Integer, pId As %Integer) As %String [ Internal ]
{
}

Parameter GetMetricsRT = "metricId:%Integer,name:%String,description:%String,type:%String,definitionClass:%String,builderClass:%String,groupField:%String";

/// Returns all the metrics registered in this domain.
ClassMethod GetMetrics(ByRef pResult, pDomainId As %Integer) As %Status
{
}

Parameter GetTargetsRT = "targetType:%String";

/// Returns all the target types registered for a given metric.
ClassMethod GetTargets(ByRef pResult, pDomainId As %Integer, pMetricId As %Integer) As %Status
{
}

/// Drops all metric values and definitions for this domain.
ClassMethod DropAllMetrics(pDomainId As %Integer) As %Status [ Internal ]
{
}

/// Drops all metric values for this domain.
ClassMethod ClearAllValues(pDomainId As %Integer) As %Status [ Internal ]
{
}

/// Drops all metric values for metric <var>pMetricId</var> in domain <var>pDomainId</var>.
/// This can optionally be limited to one or more target types using <var>pTargets</var>. If
/// <var>pTargets</var> is "" (default), values for all targets registered for this metric
/// will be dropped.
ClassMethod ClearValues(pDomainId As %Integer, pMetricId As %Integer, pTargets As %List = "") As %Status
{
}

/// Returns the ID corresponding to the supplied metric name for this domain.
ClassMethod GetMetricId(pDomainId As %Integer, pMetricName As %Integer, Output pSC As %Status) As %Integer
{
}

}
