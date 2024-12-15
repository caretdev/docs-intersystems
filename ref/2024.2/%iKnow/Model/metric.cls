/// <p>The <package>%iKnow.Metrics</package> infrastructure is deprecated in favour of the
/// more SQL-oriented approach offered through <class>%iKnow.Tables.Utils</class>, where you
/// can add computed fields at different levels and choose whether they need to be persisted or not.</p>
Class %iKnow.Model.metric Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

/// The &lt;metrics&gt; element this metric belongs to
Relationship group As %iKnow.Model.metrics(XMLPROJECTION = "none") [ Cardinality = one, Internal, Inverse = metrics ];

/// Name of the metric.
/// <p>WARNING: Changing the name of a &lt;metric&gt; element will create a new metric
/// definition and not change the name of an existing one.</p>
Property name As %String(MAXLEN = 250, XMLPROJECTION = "attribute");

/// Description of the metric
Property description As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

/// Context type to which the metric applies, either $$$IKMTRTYPEDOMAIN, $$$IKMTRTYPESOURCE or $$$IKMTRTYPEGROUP
Property type As %String(VALUELIST = ",domain,source,group", XMLPROJECTION = "attribute") [ InitialExpression = "domain" ];

/// Comma-separated list of the target elements this metric applies to. Any combination of
/// $$$IKMTRENTITY, $$$IKMTRCRC, $$$IKMTRCC, $$$IKMTRPATH, $$$IKMTRSENTENCE and $$$IKMTRSOURCE
Property targets As %String(MAXLEN = 250, XMLPROJECTION = "attribute");

/// The subclass of <class>%iKnow.Metrics.MetricBuilder</class> this metric will be build by.
Property builderClass As %String(MAXLEN = 250, XMLPROJECTION = "attribute");

/// Defines whether indices on this metric should be built and maintained automatically when
/// metric values change as the result of a Build() or SetValue() invocation.
Property maintainIndex As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If set to 1, this element is ignored when compiling, validating and building
Property disabled As %Boolean(XMLPROJECTION = "attribute");

/// If the context type (<property>type</property>) is $$$IKMTRTYPEGROUP ("group"), this specifies
/// the metadata field on which the grouping is based.
Property groupField As %String(XMLPROJECTION = "attribute");

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain = "") As %Status
{
}

}
