/// <p>The <package>%iKnow.Metrics</package> infrastructure is deprecated in favour of the
/// more SQL-oriented approach offered through <class>%iKnow.Tables.Utils</class>, where you
/// can add computed fields at different levels and choose whether they need to be persisted or not.</p>
/// <p>Use a Metric Definition to declare any custom metrics you wish to use in an application
/// by creating a subclass of this class and supplying a <xdata>Metrics</xdata> XData block
/// detailing the properties of these custom metrics. To be able to use a metric in a particular
/// domain, use the <method>Register</method> method.</p>
/// <p>Unless custom metrics are only assigned on an individual basis (such as a "reader score"
/// metric), a metric will refer to a Builder Class that is responsible for implementing the logic
/// to calculate the appropriate values for a custom metric. See also
/// <class>%iKnow.Metrics.MetricBuilder</class> for more details.</p>
/// <p>Note: metric definitions can also transparently be included in a domain definition, with
/// no further need to call <method>Register</method>.
/// See also <class>%iKnow.DomainDefinition</class>.</p>
Class %iKnow.Metrics.MetricDefinition Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

/// <p>This XData block should contain a single &lt;metrics&gt; element with &lt;metric&gt;
/// elements nested within for each custom metric to be registered.</p>
XData Metrics [ XMLNamespace = "http://www.intersystems.com/iknow/metrics" ]
{
}

/// Registers all Metrics, their properties and targets, as defined in the <xdata>Metrics</xdata>
/// XData block, in the domain <var>pDomainId</var>.
ClassMethod Register(pDomainId As %Integer, pVerbose As %Boolean = 1) As %Status [ Final ]
{
}

ClassMethod RegisterInternal(pDomainId As %Integer, pMetrics As %iKnow.Model.metrics, pDefinitionClass As %String, pVerbose As %Boolean = 1) As %Status [ Final, Internal ]
{
}

/// Drops all metrics defined in the <xdata>Metrics</xdata> XData block from domain
/// <var>pDomainId</var>.
ClassMethod UnRegister(pDomainId As %Integer, pVerbose As %Boolean = 1) As %Status [ Final ]
{
}

ClassMethod UnRegisterInternal(pDomainId As %Integer, pMetrics As %iKnow.Model.metrics, pVerbose As %Boolean = 1) As %Status [ Final, Internal ]
{
}

/// <p>Returns the list of metrics defined in <xdata>Metrics</xdata> as a
/// <class>%iKnow.Model.metrics</class> object.</p>
ClassMethod GetMetricDefinitions() As %iKnow.Model.metrics [ CodeMode = objectgenerator, Final, Internal ]
{
}

}
