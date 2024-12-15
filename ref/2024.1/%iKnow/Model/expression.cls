/// Model representation of a reusable "expression" which can be referred to using
/// %expression.<i>expressionName</i> in this domain definition.
Class %iKnow.Model.expression Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

Relationship domain As %iKnow.Model.domain(XMLPROJECTION = "none") [ Cardinality = one, Inverse = expressions ];

/// Name of the expression, which can be referred to using "%expression.<i>name</i>" onwards
Property name As %String(XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Value of this expression. This can refer to other (previously) defined expression or domain
/// class methods.
Property value As %String(XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Whether or not values passed through %Build() at runtime should be accepted as values for this
/// parameter. If no value is specified at runtime, <property>value</property> is still used by default.
Property acceptRuntimeParameter As %Boolean(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 0 ];

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
