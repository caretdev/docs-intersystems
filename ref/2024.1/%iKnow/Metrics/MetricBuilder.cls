/// <p>The <package>%iKnow.Metrics</package> infrastructure is deprecated in favour of the
/// more SQL-oriented approach offered through <class>%iKnow.Tables.Utils</class>, where you
/// can add computed fields at different levels and choose whether they need to be persisted or not.</p>
/// <p>Subclasses of this class should implement at least one of the Calculate***Metrics()
/// methods in this interface to support calculating custom metrics for the corresponding
/// target and type. Supported metrics should then register this subclass as their "builder
/// class" in their definition (see <class>%iKnow.Metrics.MetricDefinition</class>).</p>
/// <p>Metric Builder implementations are invoked through their <method>Build</method> or
/// <method>BuildAll</method> methods and will then start building all applicable metrics,
/// forwarding the actual metric calculations to the Calculate***Metrics() implementations
/// (for example, <method>CalculateEntUniMetrics</method> for target $$$IKMTRENTITY and type
/// $$$IKMTRTYPEDOMAIN). Instances of these implementations will be running in parallel if
/// <parameter>SUPPORTSMULTIPROCESS</parameter> is set to 1 (default = 1), or will run
/// single-threaded otherwise.</p>
/// <p>Note: When Calculate***Metrics() methods don't return any values for a particular
/// target element, the existing metric value is retained (if any). Returning "" for a value
/// will overwrite (erase) the existing value.</p>
Class %iKnow.Metrics.MetricBuilder Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

/// This parameter indicates whether or not this MetricBuilder implementation supports
/// multiple instances running in parallel to optimize performance. By default, it is
/// set to 1 which means different instances will work in parallel.
Parameter SUPPORTSMULTIPROCESS As BOOLEAN = 1;

/// Indicates how many entries a process will reserve for itself to calculate per batch
Parameter BATCHSIZE As INTEGER = 1024;

Property DomainId As %Integer [ Final, ReadOnly ];

Property ProcNumber As %Integer [ Final, Internal, ReadOnly ];

Property Type As %String [ Final, ReadOnly ];

Property Target As %String [ Final, ReadOnly ];

Property SrcFilter As %iKnow.Filters.Filter [ Final ];

/// If <property>Type</property> = $$$IKMTRTYPESOURCE, this property contains the current
/// Source ID for which metrics are gathered. To be used from within the metrics calculation
/// methods such as <method>CalculateEntityMetrics</method>.
Property CurrentSrcId As %Integer;

/// If <property>Type</property> = $$$IKMTRTYPEGROUP, this property contains the current
/// Metadata Field ID for which metrics are gathered. To be used from within the metrics calculation
/// methods such as <method>CalculateEntityMetrics</method>.
Property CurrentFieldId As %Integer;

/// If <property>Type</property> = $$$IKMTRTYPEGROUP, this property contains the current
/// Metadata Field name for which metrics are gathered. To be used from within the metrics calculation
/// methods such as <method>CalculateEntityMetrics</method>.
Property CurrentFieldName As %String;

/// If <property>Type</property> = $$$IKMTRTYPEGROUP, this property contains the current
/// Metadata Value ID for which metrics are gathered. To be used from within the metrics calculation
/// methods such as <method>CalculateEntityMetrics</method>.
Property CurrentFieldValueId As %Integer;

/// If <property>Type</property> = $$$IKMTRTYPEGROUP, this property contains the current
/// Metadata Value for which metrics are gathered. To be used from within the metrics calculation
/// methods such as <method>CalculateEntityMetrics</method>.
Property CurrentFieldValue As %String;

Method %OnNew(pDomainId As %Integer, pType As %String, pTarget As %String, pProcNumber As %Integer, pSrcFilter As %String = "") As %Status [ Private, ServerOnly = 1 ]
{
}

/// <p>Builds all the metrics referring this class in their BuilderClass property. See also
/// <method>BuildAll</method>.</p>
ClassMethod Build(pDomainId As %String, pSourceFilter As %iKnow.Filters.Filter = "", pVerbose As %Boolean = 1, pAsync As %Boolean = 1) As %Status [ Final ]
{
}

/// <p>This is the main method to be invoked to build all the Metrics for a given domain,
/// optionally limited to a number of metrics specified by ID through <var>pMetrics</var>. It
/// will build a list of all MetricBuilder implementations referred by registered metrics
/// and then run through all targets and types. For each
/// target, it will first invoke all MetricBuilder implementations NOT supporting parallel
/// processing (with <parameter>SUPPORTSMULTIPROCESS</parameter>=0) and then spawn a number of
/// jobs to take care of the ones that can run in parallel. These spawned processes will reserve
/// batches of the target element (for example a batch of entities) and then let all MetricBuilder
/// implementations that support metrics for that target run through them and calculate any
/// metric values using the different Calculate***Metrics() methods.</p>
/// <p>Note: metrics can only be calculated in a domain in which they are already registered.
/// See the Register() method in the <class>%iKnow.Metrics.MetricDefinition</class> class for
/// more details.</p>
ClassMethod BuildAll(pDomainId As %String, pMetrics As %List = "", pSrcFilter As %String = "", pVerbose As %Boolean = 1, pAsync As %Boolean = 1) As %Status [ Final ]
{
}

/// Method called internally to build the metrics for a specific target type.
ClassMethod BuildJob(pDomainId As %String, pType As %String, pTarget As %String, pProcNumber As %Integer, pSrcFilter As %String = "", pBuilderClass As %String = "") As %Status [ Final, Internal ]
{
}

/// Method called internally to build an index for a specific Metric and target
ClassMethod BuildIndexJob(pDomainId As %Integer, pProcNumber As %Integer) As %Status [ Final, Internal ]
{
}

/// <p>This method builds an index for a particular Metric and Target.</p>
/// <p>Note: no indices will be built for metrics of type $$$IKMTRTYPESOURCE, as these
/// intra-source entries will be sorted on the fly when calling any applicable sorted queries.</p>
ClassMethod BuildIndex(pDomainId As %Integer, pMetricId As %Integer, pTarget As %String) As %Status [ Final ]
{
}

/// <p>Utility method called before a MetricBuilder instance starts building any metrics, in which
/// custom code can be executed to set up any auxiliary objects or data structures.</p>
/// <p>Note: depending on the value of <parameter>SUPPORTSMULTIPROCESS</parameter>, multiple
/// MetricBuilder instances can be running alongside one another</p>
Method OnBeforeBuildMetrics() As %Status
{
}

/// <p>Utility method called after a MetricBuilder instance starts building any metrics, in which
/// custom code can be executed to clean up any auxiliary objects or data structures.</p>
/// <p>Note: depending on the value of <parameter>SUPPORTSMULTIPROCESS</parameter>, multiple
/// MetricBuilder instances can be running alongside one another</p>
Method OnAfterBuildMetrics() As %Status
{
}

/// <p>Utility method called before a MetricBuilder instance starts building any metrics for the
/// source identified by <var>pSrcId</var>, for metrics of type $$$IKMTRTYPESOURCE.</p>
Method OnBeforeBuildMetricsForSource(pSrcId As %Integer) As %Status
{
}

/// <p>Utility method called after a MetricBuilder starts building any metrics for the
/// source identified by <var>pSrcId</var>, for metrics of type $$$IKMTRTYPESOURCE.<p>
Method OnAfterBuildMetricsForSource(pSrcId As %Integer) As %Status
{
}

/// <p>Utility method called before a MetricBuilder instance starts building any metrics for the
/// group identified by <property>CurrentFieldName</property> and <property>CurrentFieldValue</property>,
/// for metrics of type $$$IKMTRTYPEGROUP.</p>
Method OnBeforeBuildMetricsForGroup() As %Status
{
}

/// <p>Utility method called after a MetricBuilder instance finishes building any metrics for the
/// group identified by <property>CurrentFieldName</property> and <property>CurrentFieldValue</property>,
/// for metrics of type $$$IKMTRTYPEGROUP.</p>
Method OnAfterBuildMetricsForGroup() As %Status
{
}

/// <p>Utility method called before a MetricBuilder starts building any metrics for a batch
/// of elements, for metrics of type $$$IKMTRTYPEDOMAIN</p>
Method OnBeforeBuildMetricsBatch(pFrom As %Integer, pTo As %Integer) As %Status
{
}

/// <p>Utility method called after a MetricBuilder starts building any metrics for a batch
/// of elements, for metrics of type $$$IKMTRTYPEDOMAIN</p>
Method OnAfterBuildMetricsBatch(pFrom As %Integer, pTo As %Integer) As %Status
{
}

/// <p>This is the main method a custom MetricBuilder should implement to support metrics
/// targeting entities. Depending on the value of <property>Type</property>, the properties
/// <property>CurrentSrcId</property> (for $$$IKMTRTYPESOURCE), <property>CurrentFieldName</property>
/// and <property>CurrentFieldValue</property> (for $$$IKMTRTYPEGROUP) or neither of these
/// (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated.</p>
/// <p>For a given unique entity <var>pEntUniId</var>, this method should calculate all metrics
/// it knows about and return them through <var>pValues</var> in an array indexed by metric name:
/// 			pValues(<i>metricName</i>) = value </p>
Method CalculateEntUniMetrics(pEntUniId As %Integer, pEntUniValue As %String, Output pValues) As %Status
{
}

/// <p>This is the main method a custom MetricBuilder should implement to support metrics
/// targeting CRCs. Depending on the value of <property>Type</property>, the properties
/// <property>CurrentSrcId</property> (for $$$IKMTRTYPESOURCE), <property>CurrentFieldName</property>
/// and <property>CurrentFieldValue</property> (for $$$IKMTRTYPEGROUP) or neither of these
/// (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated.</p>
/// <p>For a given unique CRC <var>pCrcUniId</var>, this method should calculate all metrics
/// it knows about and return them through <var>pValues</var> in an array indexed by metric name:
/// 			pValues(<i>metricName</i>) = value </p>
Method CalculateCrcUniMetrics(pCrcUniId As %Integer, pHeadId As %Integer, pRelationId As %Integer, pTailId As %Integer, Output pValues) As %Status
{
}

/// <p>This is the main method a custom MetricBuilder should implement to support metrics
/// targeting CCs. Depending on the value of <property>Type</property>, the properties
/// <property>CurrentSrcId</property> (for $$$IKMTRTYPESOURCE), <property>CurrentFieldName</property>
/// and <property>CurrentFieldValue</property> (for $$$IKMTRTYPEGROUP) or neither of these
/// (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated.</p>
/// <p>For a given unique CC <var>pCcUniId</var>, this method should calculate all metrics
/// it knows about and return them through <var>pValues</var> in an array indexed by metric name:
/// 			pValues(<i>metricName</i>) = value </p>
Method CalculateCcUniMetrics(pCcUniId As %Integer, pHeadId As %Integer, pTailId As %Integer, Output pValues) As %Status
{
}

/// <p>This is the main method a custom MetricBuilder should implement to support metrics
/// targeting Paths. Depending on the value of <property>Type</property>, the properties
/// <property>CurrentSrcId</property> (for $$$IKMTRTYPESOURCE), <property>CurrentFieldName</property>
/// and <property>CurrentFieldValue</property> (for $$$IKMTRTYPEGROUP) or neither of these
/// (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated.</p>
/// <p>For a given path <var>pPathId</var>, this method should calculate all metrics
/// it knows about and return them through <var>pValues</var> in an array indexed by metric name:
/// 			pValues(<i>metricName</i>) = value </p>
Method CalculatePathMetrics(pPathId As %Integer, pEntities As %List, Output pValues) As %Status
{
}

/// <p>This is the main method a custom MetricBuilder should implement to support metrics
/// targeting sentences. Depending on the value of <property>Type</property>, the properties
/// <property>CurrentSrcId</property> (for $$$IKMTRTYPESOURCE), <property>CurrentFieldName</property>
/// and <property>CurrentFieldValue</property> (for $$$IKMTRTYPEGROUP) or neither of these
/// (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated.</p>
/// <p>For a given sentence <var>pSentenceId</var>, this method should calculate all metrics
/// it knows about and return them through <var>pValues</var> in an array indexed by metric name:
/// 			pValues(<i>metricName</i>) = value </p>
Method CalculateSentenceMetrics(pSentenceId As %Integer, Output pValues) As %Status
{
}

/// <p>This is the main method a custom MetricBuilder should implement to support metrics
/// targeting sources. Depending on the value of <property>Type</property>, the properties
/// <property>CurrentSrcId</property> (for $$$IKMTRTYPESOURCE), <property>CurrentFieldName</property>
/// and <property>CurrentFieldValue</property> (for $$$IKMTRTYPEGROUP) or neither of these
/// (for $$$IKMTRTYPEDOMAIN) will define the scope for which metrics should be calculated.</p>
/// <p>For a given source <var>pSourceId</var> in the context of a given source <var>pSrcId</var>,
/// this method should calculate all metrics it knows about and return them through
/// <var>pValues</var> in an array indexed by metric name:
/// 			pValues(<i>metricName</i>) = value </p>
Method CalculateSourceMetrics(pSourceId As %Integer, Output pValues) As %Status
{
}

}
